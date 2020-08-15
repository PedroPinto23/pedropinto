import 'package:flutter/material.dart';
import 'package:my_portfolio/Model/data_model.dart';
import 'package:my_portfolio/Screens/Contato/widgets/email_form.dart';
import 'package:my_portfolio/Widgets/Botao/botao.dart';
import 'package:scoped_model/scoped_model.dart';

class EmailSender extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<DataModel>(
      builder: (context, child, model) {
        return Container(
          width: MediaQuery.of(context).size.width / 2,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: EmailForm(
                        controller: model.nome,
                        hintText: "Nome",
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Flexible(
                      child: EmailForm(
                        controller: model.mensagem,
                        hintText: "Assunto",
                        prefixIcon: Icon(
                          Icons.assignment_late,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                EmailForm(
                  maxLines: 4,
                  controller: model.assunto,
                  hintText: "Mensagem",
                  prefixIcon: null,
                ),
                Container(
                  margin: EdgeInsets.only(top: 18),
                  child: Botao(
                    text: "Enviar Email",
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {}
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
