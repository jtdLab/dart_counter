// Flutter for ios
export 'package:flutter/cupertino.dart' hide Orientation, Router;

// Material Colors
export 'package:flutter/material.dart' show Colors;

// Localization
export 'package:easy_localization/easy_localization.dart' hide TextDirection;
export 'package:dart_counter/generated/locale_keys.g.dart';

// Routing
export 'package:auto_route/auto_route.dart';
export 'package:dart_counter/presentation/ios/router.gr.dart';

// Provider
export 'package:provider/provider.dart';

// Hooks
export 'package:flutter_hooks/flutter_hooks.dart' hide Dispose;

// State management
export 'package:flutter_bloc/flutter_bloc.dart';

// Dependency injection
export 'package:dart_counter/injection.dart';

// Lottie
export 'package:lottie/lottie.dart';

// Platform independent core
export 'package:dart_counter/presentation/core/core.dart';

// Utility widgets + extensions for ios
export 'widgets/util/util.dart';
