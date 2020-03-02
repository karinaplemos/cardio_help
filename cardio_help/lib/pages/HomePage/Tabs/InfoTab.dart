import 'package:flutter/material.dart';
import 'package:cardio_help/theme/theme.dart' as theme;

class InfoTab extends StatefulWidget{
  @override
  _InfoTabState createState() => new _InfoTabState();
}

class _InfoTabState extends State<InfoTab>{
  Widget _createText(String string, TextStyle textStyle, EdgeInsetsGeometry padding){
    return Container(
      padding: padding,
      child: Text(string, style: textStyle, textAlign: theme.justifyAlign),
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(15),
      children: <Widget>[
        this._createText("Versão:", theme.subtitleStyle, theme.subtitleSpacing),
        this._createText("1.0.0", theme.textStyle, theme.textSpacing),

        this._createText("Licença:", theme.subtitleStyle, theme.subtitleSpacing),
        this._createText("MIT", theme.textStyle, theme.textSpacing),

        this._createText("Sobre:", theme.subtitleStyle, theme.subtitleSpacing),
        this._createText("Este é um Aplicativo que visa a Segurança do Paciente.", theme.textStyle, theme.textSpacing),
        this._createText("Para tal, reúne as principais drogas cardiotônicas administradas em unidade de terapia intensiva, as quais foram organizadas com a respectiva classificação, efeitos, uso terapêutico, evento adverso, apresentação e via de administração, diluição, medicamento(s) de interação, efeitos da interação e principalmente os cuidados para uma prática segura.", theme.textStyle, theme.textSpacing),
        this._createText("O Aplicativo é resultado de uma pesquisa acadêmica, em nível de Dissertação de Mestrado da Enfermeira Mayara Davila Borges, sob a orientação da Profª Dra. Dayse Mary da Silva Correia (MFE/PACCS/EEAAC/UFF) cuja aprovação deu-se pelo Parecer nº 3.506.440 no Comitê de Ética em Pesquisa da Faculdade de Medicina da Universidade Federal Fluminense (UFF).", theme.textStyle, theme.textSpacing),

        this._createText("Referências:", theme.subtitleStyle, theme.subtitleSpacing),
        this._createText(" - Guia para preparo de medicamentos injetáveis – Ebersh (2017)", theme.textStyle, theme.textSpacing),
        this._createText(" - Guia Prático em Saúde (2015)", theme.textStyle, theme.textSpacing),
        this._createText(" - Bulário Explicativo (2016)", theme.textStyle, theme.textSpacing),

        this._createText("Créditos:", theme.subtitleStyle, theme.subtitleSpacing),
        this._createText("Os créditos de  desenvolvimento tecnológico estão atribuídos aos graduandos Ricardo de Monteiro e Tavares, Aline Silva de Lima, Artur Ladeira Andrade, Débora Barbosa Ferreira e  Karina Pereira de Lemos, sob a orientação do Prof. Dr. Flavio Luiz Seixas (MIDIACOM/IC/UFF).", theme.textStyle, theme.textSpacing),
      ],
    );
  }

}

