import 'dart:typed_data';

import 'package:flutter/material.dart';

// ignore: uri_does_not_exist
import 'platform/stub_svg.dart'
// ignore: uri_does_not_exist
    if (dart.library.io) 'platform/io_svg.dart'
// ignore: uri_does_not_exist
    if (dart.library.html) 'platform/browser_svg.dart';

class WebsafeSvg {
  static Widget asset(
    String asset, {
    alignment = Alignment.center,
    Color? color,
    BoxFit fit = BoxFit.contain,
    double? height,
    String? package,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    double? width,
  }) =>
      svgFromAsset(
        asset,
        alignment: alignment,
        color: color,
        fit: fit,
        height: height,
        package: package,
        placeholderBuilder: placeholderBuilder,
        semanticsLabel: semanticsLabel,
        width: width,
      );

  static Widget memory(
    Uint8List bytes, {
    alignment = Alignment.center,
    Color? color,
    BoxFit fit = BoxFit.contain,
    double? height,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    double? width,
  }) =>
      svgFromMemory(
        bytes,
        alignment: alignment,
        color: color,
        fit: fit,
        height: height,
        placeholderBuilder: placeholderBuilder,
        semanticsLabel: semanticsLabel,
        width: width,
      );

  static Widget network(
    String url, {
    alignment = Alignment.center,
    Color? color,
    BoxFit fit = BoxFit.contain,
    Map<String, String>? headers,
    double? height,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    double? width,
  }) =>
      svgFromNetwork(
        url,
        alignment: alignment,
        color: color,
        fit: fit,
        headers: headers,
        height: height,
        placeholderBuilder: placeholderBuilder,
        semanticsLabel: semanticsLabel,
        width: width,
      );

  static Widget string(
    String bytes, {
    alignment = Alignment.center,
    Color? color,
    BoxFit fit = BoxFit.contain,
    double? height,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    double? width,
  }) =>
      svgFromString(
        bytes,
        alignment: alignment,
        color: color,
        fit: fit,
        height: height,
        placeholderBuilder: placeholderBuilder,
        semanticsLabel: semanticsLabel,
        width: width,
      );

  Widget assetIcon(BuildContext context, String assetPath, {double? size}) {
    final iconTheme = IconTheme.of(context);
    return WebsafeSvg.asset(
      assetPath,
      width: size ?? iconTheme.size,
      height: size ?? iconTheme.size,
      color: iconTheme.color,
    );
  }

  Widget assetIconWithoutContext(String assetPath, {double? size}) {
    return Builder(
      builder: (context) => assetIcon(context, assetPath, size: size),
    );
  }
}
