import 'package:flutter/material.dart';
import 'app_routing/app_route.dart';


void main() {
  runApp(  const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: AppRoute.router,
    );
  }
}















