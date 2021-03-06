import 'package:flutter/material.dart';
import 'package:my_portfolio/Screens/Contato/contato.dart';
import 'package:my_portfolio/Screens/Inicio/inicio.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/meus_trabalhos.dart';
import 'package:my_portfolio/Screens/Sobre/sobre.dart';

Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
      '/': (_) => Inicio(),
      '/sobre': (_) => Sobre(),
      '/meusTrabalhos': (_) => MeusTrabalhos(),
      '/contato': (_) => Contato(),
    };
