import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget platformType(Uint8List kTransparentImage, String image) {
  switch (defaultTargetPlatform) {
    case TargetPlatform.windows:
      return FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: image,
        fit: BoxFit.cover,
      );
    case TargetPlatform.macOS:
      return FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: image,
        fit: BoxFit.cover,
      );
    case TargetPlatform.linux:
      return FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: image,
        fit: BoxFit.cover,
      );
    case TargetPlatform.android:
      return Image.asset(image, fit: BoxFit.cover);
    case TargetPlatform.iOS:
      return Image.asset(image, fit: BoxFit.cover);
    case TargetPlatform.fuchsia:
      return Image.asset(image, fit: BoxFit.cover);
    default:
      return FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: image,
        fit: BoxFit.cover,
      );
  }
}
