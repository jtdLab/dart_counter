// Platform independent core
export 'package:dart_counter/presentation/core/core.dart';

// Cupertino widgets
export 'package:flutter/cupertino.dart' hide Orientation, Router;

// Material widgets
export 'package:flutter/material.dart' show Colors, ReorderableListView;

// Ios shared widgets + extensions
export 'shared/shared.dart'; // TODO this could cylce if 
