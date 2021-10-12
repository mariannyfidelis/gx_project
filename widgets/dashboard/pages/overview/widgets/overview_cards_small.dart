import '/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/widgets/Dashboard/pages/overview/widgets/info_card_small.dart';

class OverViewCardsSmallScreenDash extends StatelessWidget {
  const OverViewCardsSmallScreenDash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usuarios = Provider.of<List<Usuario>?>(context);
    double _width = MediaQuery.of(context).size.width;
    return (usuarios != null)
        ? Container(
            height: 400,
            child: Column(
              children: [
                InfoCardSmallDash(
                  title: 'Numero de clientes',
                  value: '${usuarios.length}',
                  onTap: () {},
                  isActive: true,
                ),
                SizedBox(
                  height: _width / 64,
                ),
                InfoCardSmallDash(
                  title: 'Projetos criados',
                  value: '17',
                  onTap: () {},
                  isActive: true,
                ),
                SizedBox(height: _width / 64),
                InfoCardSmallDash(
                  title: 'Contas suspensas',
                  value: '0',
                  onTap: () {},
                  isActive: true,
                ),
                SizedBox(height: _width / 64),
                InfoCardSmallDash(
                  title: 'Contas excluidas',
                  value: '0',
                  onTap: () {},
                  isActive: true,
                ),
                SizedBox(height: _width / 64),
              ],
            ),
          )
        : Center(child: CircularProgressIndicator());
  }
}
