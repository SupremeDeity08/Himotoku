// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.62.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import "bridge_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'bridge_generated.io.dart' if (dart.library.html) 'bridge_generated.web.dart';

class RustlibImpl implements Rustlib {
  final RustlibPlatform _platform;
  factory RustlibImpl(ExternalLibrary dylib) => RustlibImpl.raw(RustlibPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory RustlibImpl.wasm(FutureOr<WasmModule> module) => RustlibImpl(module as ExternalLibrary);
  RustlibImpl.raw(this._platform);
  Future<List<NativeImage>?> rustCropImage({required Uint8List imageBytes, dynamic hint}) {
    var arg0 = _platform.api2wire_uint_8_list(imageBytes);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_rust_crop_image(port_, arg0),
      parseSuccessData: _wire2api_opt_list_native_image,
      constMeta: kRustCropImageConstMeta,
      argValues: [
        imageBytes
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRustCropImageConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "rust_crop_image",
        argNames: [
          "imageBytes"
        ],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  List<NativeImage> _wire2api_list_native_image(dynamic raw) {
    return (raw as List<dynamic>).map(_wire2api_native_image).toList();
  }

  NativeImage _wire2api_native_image(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 1) throw Exception('unexpected arr length: expect 1 but see ${arr.length}');
    return NativeImage(
      data: _wire2api_uint_8_list(arr[0]),
    );
  }

  List<NativeImage>? _wire2api_opt_list_native_image(dynamic raw) {
    return raw == null ? null : _wire2api_list_native_image(raw);
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }
}

// Section: api2wire

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer
