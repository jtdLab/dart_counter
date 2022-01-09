part of './app_widget.dart';

class PlatformNotSupportedError extends Error {}

/// Takes a platform specific widgets [ios], [android] and [web].
///
/// Builds the correct widget depending on platform.
class PlatformWidget extends StatelessWidget {
  final Widget Function(BuildContext)? ios;
  final Widget Function(BuildContext)? android;
  final Widget Function(BuildContext)? web;

  const PlatformWidget({
    Key? key,
    this.ios,
    this.android,
    this.web,
  })  : assert(!(ios == null && android == null && web == null)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      if (ios == null) throw PlatformNotSupportedError();
      return ios!(context);
    } else if (Platform.isAndroid) {
      if (android == null) throw PlatformNotSupportedError();
      return android!(context);
    } else {
      if (web == null) throw PlatformNotSupportedError();
      return web!(context);
    }
  }
}
