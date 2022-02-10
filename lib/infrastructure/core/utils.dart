import 'dart:convert';

import 'package:crypto/crypto.dart';

/// Returns the sha256 hash of [input] in hex notation.
extension ShaX on String {
  String toSha256() {
    final bytes = utf8.encode(this);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
}
