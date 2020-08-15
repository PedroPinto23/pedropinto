import 'package:flutter/cupertino.dart';
import 'package:scoped_model/scoped_model.dart';

class DataModel extends Model {
  final TextEditingController nome = TextEditingController();
  final TextEditingController assunto = TextEditingController();
  final TextEditingController mensagem = TextEditingController();
}
