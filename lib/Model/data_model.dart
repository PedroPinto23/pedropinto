import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:scoped_model/scoped_model.dart';

class DataModel extends Model {
  double altura(BuildContext context) => MediaQuery.of(context).size.height;
  double largura(BuildContext context) => MediaQuery.of(context).size.width;

  /// CARD PROJETO
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
}
