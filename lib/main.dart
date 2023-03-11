import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:gofit/route/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GotFitness();
  }
}

class GotFitness extends StatefulWidget {
  const GotFitness({Key? key}) : super(key: key);

  @override
  State<GotFitness> createState() => _GotFitnessState();
}

class _GotFitnessState extends State<GotFitness> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Go-Fit",
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteManager.generateRoute,
      initialRoute: RouteManager.splashRoute,
    );
  }
}
