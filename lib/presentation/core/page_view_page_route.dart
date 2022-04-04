import 'package:flutter/widgets.dart';

// TODO doc only use this to make pageview navigation visible to auto router observers
class PageViewRoute<T> extends Route {
  PageViewRoute() : super(settings: RouteSettings(name: '${T}Route'));

  @override
  bool operator ==(Object o) => o is PageViewRoute<T>;

  @override
  int get hashCode => T.hashCode;
}

// TODO if optional generics are available this can be implemented
/**
 * class AutoRouteObservedPageView<
    A extends Widget,
    B extends Widget,
    C extends Widget,
    D extends Widget,
    E extends Widget,
    F extends Widget,
    G extends Widget,
    H extends Widget,
    I extends Widget,
    J extends Widget> extends StatefulWidget {
  final Axis scrollDirection;
  final bool reverse;
  final PageController? controller;
  final ScrollPhysics? physics;
  final bool pageSnapping;
  final void Function(int)? onPageChanged;
  final A page1;
  final B? page2;
  final C? page3;
  final D? page4;
  final E? page5;
  final F? page6;
  final G? page7;
  final H? page8;
  final I? page9;
  final J? page10;
  final DragStartBehavior dragStartBehavior;
  final bool allowImplicitScrolling;
  final String? restorationId;
  final Clip clipBehavior;
  final ScrollBehavior? scrollBehavior;
  final bool padEnds;

  const AutoRouteObservedPageView({
    Key? key,
    this.scrollDirection = Axis.horizontal,
    this.reverse = false,
    this.controller,
    this.physics,
    this.pageSnapping = true,
    this.onPageChanged,
    required this.page1,
    this.page2,
    this.page3,
    this.page4,
    this.page5,
    this.page6,
    this.page7,
    this.page8,
    this.page9,
    this.page10,
    this.dragStartBehavior = DragStartBehavior.start,
    this.allowImplicitScrolling = false,
    this.restorationId,
    this.clipBehavior = Clip.hardEdge,
    this.scrollBehavior,
    this.padEnds = true,
  })  : assert(A is Widget),
        assert(
          (page10 != null &&
                  page9 != null &&
                  page8 != null &&
                  page7 != null &&
                  page6 != null &&
                  page5 != null &&
                  page4 != null &&
                  page3 != null &&
                  page2 != null) ||
              (page10 == null &&
                  page9 == null &&
                  page8 == null &&
                  page7 == null &&
                  page6 == null &&
                  page5 == null &&
                  page4 == null &&
                  page3 == null &&
                  page2 == null) ||
              (page10 == null &&
                  page9 == null &&
                  page8 == null &&
                  page7 == null &&
                  page6 == null &&
                  page5 == null &&
                  page4 == null &&
                  page3 == null) ||
              (page10 == null &&
                  page9 == null &&
                  page8 == null &&
                  page7 == null &&
                  page6 == null &&
                  page5 == null &&
                  page4 == null) ||
              (page10 == null &&
                  page9 == null &&
                  page8 == null &&
                  page7 == null &&
                  page6 == null &&
                  page5 == null) ||
              (page10 == null &&
                  page9 == null &&
                  page8 == null &&
                  page7 == null &&
                  page6 == null) ||
              (page10 == null &&
                  page9 == null &&
                  page8 == null &&
                  page7 == null) ||
              (page10 == null && page9 == null && page8 == null) ||
              (page10 == null && page9 == null) ||
              page10 == null,
        ),
        super(key: key);

  @override
  State<AutoRouteObservedPageView> createState() =>
      _AutoRouteObservedPageViewState<A, B, C, D, E, F, G, H, I, J>();
}

class _AutoRouteObservedPageViewState<
        A extends Widget,
        B extends Widget,
        C extends Widget,
        D extends Widget,
        E extends Widget,
        F extends Widget,
        G extends Widget,
        H extends Widget,
        I extends Widget,
        J extends Widget>
    extends State<AutoRouteObservedPageView<A, B, C, D, E, F, G, H, I, J>> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    final observer =
        RouterScope.of(context).firstObserverOfType<AutoRouteObserver>();

    return PageView(
      scrollDirection: widget.scrollDirection,
      reverse: widget.reverse,
      controller: widget.controller,
      physics: widget.physics,
      pageSnapping: widget.pageSnapping,
      onPageChanged: (newIndex) {
        if (index == 0) {
          if (newIndex == 1) {
            observer?.didReplace(
              oldRoute: _PageViewRoute<A>(),
              newRoute: _PageViewRoute<B>(),
            );
          }
        }
        widget.onPageChanged?.call(index);
      },
      dragStartBehavior: widget.dragStartBehavior,
      allowImplicitScrolling: widget.allowImplicitScrolling,
      restorationId: widget.restorationId,
      clipBehavior: widget.clipBehavior,
      scrollBehavior: widget.scrollBehavior,
      padEnds: widget.padEnds,
      children: [widget.page1],
    );
  }
}

 */