import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/models/usuario.dart';
import '/widgets/Dashboard/pages/overview/widgets/info_card.dart';

class OverViewCardsMediumScreenSizeDash extends StatelessWidget {
  const OverViewCardsMediumScreenSizeDash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usuarios = Provider.of<List<Usuario>?>(context);
    double _width = MediaQuery.of(context).size.width;
    return (usuarios != null)
        ? Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
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
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
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
              ),
            ],
          )
        : Center(child: CircularProgressIndicator());
  }
}
