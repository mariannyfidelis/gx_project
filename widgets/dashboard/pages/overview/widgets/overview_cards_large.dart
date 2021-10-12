import '/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/widgets/dashboard/pages/overview/widgets/info_card.dart';

class OverviewCardsLargeScreenDash extends StatelessWidget {
  const OverviewCardsLargeScreenDash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    final usuarios = Provider.of<List<Usuario>?>(context);

    return (usuarios != null)
        ? Row(
            children: [
              InfoCardDash(
                title: 'Numero de clientes',
                value: '${usuarios.length}',
                onTap: () {},
                topColor: Colors.orange,
              ),
              SizedBox(width: _width / 64),
              InfoCardDash(
                title: 'Projetos criados',
                value: '17',
                onTap: () {},
                topColor: Colors.lightGreen,
              ),
              SizedBox(width: _width / 64),
              InfoCardDash(
                title: 'Contas suspensas',
                value: '0',
                onTap: () {},
                topColor: Colors.redAccent,
              ),
              SizedBox(width: _width / 64),
              InfoCardDash(
                title: 'Contas excluidas',
                value: '0',
                onTap: () {},
                topColor: Colors.redAccent,
              ),
              SizedBox(width: _width / 64),
            ],
          )
        : Center(child: CircularProgressIndicator());
  }
}
