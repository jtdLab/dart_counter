import 'package:auto_route/auto_route.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/src/matcher/route_matcher.dart';

class AutoRoutePageView extends StatefulWidget {
  // TODO Page view fields
  // Auto router fields
  final NavigatorObserversBuilder navigatorObservers;
  final Widget Function(BuildContext context, Widget content)? builder;
  final String? navRestorationScopeId;
  final bool inheritNavigatorObservers;
  final GlobalKey<NavigatorState>? navigatorKey;
  final WidgetBuilder? placeholder;

  const AutoRoutePageView({
    Key? key,
    // TODO Page view fields
    // Auto router fields
    this.navigatorObservers =
        AutoRouterDelegate.defaultNavigatorObserversBuilder,
    this.builder,
    this.navRestorationScopeId,
    this.navigatorKey,
    this.inheritNavigatorObservers = true,
    this.placeholder,
  }) : super(key: key);

  @override
  AutoRoutePageViewState createState() => AutoRoutePageViewState();

  static StackRouter of(BuildContext context, {bool watch = false}) {
    final scope = StackRouterScope.of(context, watch: watch);
    assert(() {
      if (scope == null) {
        throw FlutterError(
            'AutoRouter operation requested with a context that does not include an AutoRouter.\n'
            'The context used to retrieve the Router must be that of a widget that '
            'is a descendant of an AutoRouter widget.');
      }
      return true;
    }());
    return scope!.controller;
  }

  static StackRouter? innerRouterOf(BuildContext context, String routeName) {
    return of(context).innerRouterOf<StackRouter>(routeName);
  }
}

class AutoRoutePageViewState extends State<AutoRoutePageView> {
  StackRouter? _controller;

  StackRouter? get controller => _controller;
  late List<NavigatorObserver> _navigatorObservers;
  late NavigatorObserversBuilder _inheritableObserversBuilder;
  late RoutingController _parentController;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_controller == null) {
      final parentRouteData = RouteData.of(context);
      final parentScope = RouterScope.of(context, watch: true);
      _inheritableObserversBuilder = () {
        final observers = widget.navigatorObservers();
        if (!widget.inheritNavigatorObservers) {
          return observers;
        }
        final inheritedObservers = parentScope.inheritableObserversBuilder();
        return inheritedObservers + observers;
      };
      _navigatorObservers = _inheritableObserversBuilder();

      _parentController = parentScope.controller;

      // TODO custom
      final routeCollection = _parentController.routeCollection.subCollectionOf(
        parentRouteData.name,
      );
      final temp = RouteData(
        route: parentRouteData.route,
        router: parentRouteData.router,
        parent: parentRouteData.parent,
        pendingChildren: [
          RouteMatcher(routeCollection).matchByRoute(const SignInPageRoute())!,
          RouteMatcher(routeCollection).matchByRoute(const SignUpPageRoute())!
        ],
      );
      // TODO custom

      _controller = NestedStackRouter(
        parent: _parentController,
        key: parentRouteData.key,
        routeData: temp,
        navigatorKey: widget.navigatorKey,
        routeCollection: routeCollection,
        pageBuilder: _parentController.pageBuilder,
      );

      _controller!.addListener(_rebuildListener);
    }
  }

  void _rebuildListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    assert(_controller != null);

    // TODO custom
    final stack = _controller!.stack;
    // stack.forEach(print);
    final routeCollection = _controller!.routeCollection;

    final pages = stack
        // TODO build page or only use the raw widget
        .map((p) => p.buildPage(context))
        .toList();

    final pageView = PageView(
      children: pages,
      onPageChanged: (i) {
        final newRoute =
            _controller!.stackData[i].route.toPageRouteInfo(); // TODO correct?
        _controller!.replace(newRoute);
      },
    );
    // TODO custom

    final stateHash = controller!.stateHash;
    return RouterScope(
      controller: _controller!,
      inheritableObserversBuilder: _inheritableObserversBuilder,
      navigatorObservers: _navigatorObservers,
      stateHash: stateHash,
      child: StackRouterScope(
        controller: _controller!,
        stateHash: stateHash,
        child: pageView,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    if (_controller != null) {
      _controller!.removeListener(_rebuildListener);
      _controller!.dispose();
      _parentController.removeChildController(_controller!);
      _controller = null;
    }
  }
}

/**
 * // needed ?
class AutoRouteNavigator extends StatefulWidget {
  final StackRouter router;
  final String? navRestorationScopeId;
  final WidgetBuilder? placeholder;
  final List<NavigatorObserver> navigatorObservers;
  final RoutePopCallBack? didPop;
  final RoutesBuilder? declarativeRoutesBuilder;

  const AutoRouteNavigator({
    required this.router,
    required this.navigatorObservers,
    this.navRestorationScopeId,
    this.didPop,
    this.declarativeRoutesBuilder,
    this.placeholder,
    Key? key,
  }) : super(key: key);

  @override
  _AutoRouteNavigatorState createState() => _AutoRouteNavigatorState();
}

class _AutoRouteNavigatorState extends State<AutoRouteNavigator> {
  List<PageRouteInfo>? _routesSnapshot;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (widget.declarativeRoutesBuilder != null && _routesSnapshot == null) {
      _updateDeclarativeRoutes();
    }
  }

  void _updateDeclarativeRoutes() {
    final delegate = AutoRouterDelegate.of(context);
    var newRoutes = widget.declarativeRoutesBuilder!(context);
    if (!ListEquality().equals(newRoutes, _routesSnapshot)) {
      _routesSnapshot = newRoutes;
      widget.router.updateDeclarativeRoutes(newRoutes);
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        delegate.notifyUrlChanged();
      });
    }
  }

  @override
  void didUpdateWidget(covariant AutoRouteNavigator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.declarativeRoutesBuilder != null) {
      _updateDeclarativeRoutes();
    }
  }

  @override
  Widget build(BuildContext context) {
    final navigator = widget.router.hasEntries
        ? Navigator(
            key: widget.router.navigatorKey,
            observers: [
              widget.router.pagelessRoutesObserver,
              ...widget.navigatorObservers
            ],
            restorationScopeId:
                widget.navRestorationScopeId ?? widget.router.routeData.name,
            pages: widget.router.stack,
            onPopPage: (route, result) {
              if (!route.didPop(result)) {
                return false;
              }
              if (route.settings is AutoRoutePage) {
                var routeData = (route.settings as AutoRoutePage).routeData;
                widget.router.removeRoute(routeData);
                widget.didPop?.call(routeData.route, result);
              }
              return true;
            },
          )
        : widget.placeholder?.call(context) ??
            Container(
              color: Theme.of(context).scaffoldBackgroundColor,
            );

    // fixes nested cupertino routes back gesture issue
    if (!widget.router.isRoot) {
      return WillPopScope(
        child: navigator,
        onWillPop: widget.router.canPopSelfOrChildren
            ? () => SynchronousFuture(true)
            : null,
      );
    }

    return navigator;
  }
}

 */