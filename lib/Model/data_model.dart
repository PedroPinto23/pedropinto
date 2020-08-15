import 'package:flutter/cupertino.dart';
import 'package:scoped_model/scoped_model.dart';

class DataModel extends Model {
  double altura(BuildContext context) => MediaQuery.of(context).size.height;
  double largura(BuildContext context) => MediaQuery.of(context).size.width;
}
