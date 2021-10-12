import '/rotas.dart';
import 'package:get/get.dart';
import 'utils/paleta_cores.dart';
import '/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'database/firestoreService.dart';
import 'controllers/dados_controller.dart';
import 'widgets/dashboard/controller/menu_controller_dash.dart';
import 'widgets/dashboard/controller/navigation_controller_dash.dart';

final ThemeData temaPadrao = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: PaletaCores.corFundo,
  accentColor: PaletaCores.corDestaque,
);

void main() {
  //Está utilizando o GetX com Obs
  Get.put(MenuControllerDash());
  Get.put(NavigationControllerDash());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final firestoreService = FirestoreService();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ObjectiveController()),
        StreamProvider(
            create: (context) => firestoreService.getObjetivos(),
            initialData: null),
        StreamProvider(
            create: (context) => firestoreService.getUsuarios(),
            initialData: null)
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Plataforma XPER',
        theme: temaPadrao,
        home: LoginPage(
          title: "XPER Web",
        ),
        //initialRoute: "/login",
        initialRoute: "/",
        onGenerateRoute: Rotas.gerarRota,
      ),
    );
  }
}
