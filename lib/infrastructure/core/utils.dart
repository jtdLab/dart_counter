import 'dart:convert';

import 'package:crypto/crypto.dart';

/// Returns the sha256 hash of [input] in hex notation.
extension ShaX on String {
  String toSha256() {
    // encode to bytes
    final bytes = utf8.encode(this);

    // convert to sha256
    final digest = sha256.convert(bytes);

    // return result
    return digest.toString();
  }
}
