import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

// TODO doc
abstract class PlatformRouter extends StackRouter {
  PlatformRouter({
    required LocalKey key,
  }) : super(key: key);
}
