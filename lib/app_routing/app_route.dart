import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:routing/app_routing/routes_names.dart';
import 'package:routing/error_page.dart';

import '../a.dart';
import '../home.dart';
import '../play.dart';
import '../sub_home.dart';

const bool isLogIn = true;
class AppRoute {
  AppRoute._();


  static final _rootnavkey = GlobalKey<NavigatorState>();
   static final router = GoRouter(
     errorBuilder: (context, state) => const ErrorPage(),
         redirect: (context, state) {
           if (isLogIn) {
             return "/b";
           }else{
             return '/';
           }},

   // initialLocation: '/',
    navigatorKey: _rootnavkey,
    routes: <RouteBase>[
      GoRoute(path: '/',

          builder: (context, state) => const HomePage(),
          routes: [GoRoute(path: 'play',
              builder: (context, state) => const Play()
          ),
          ]
      ),
      GoRoute(path:'/sub/:x',
          builder: (context, state) =>  SubHome(x:state.pathParameters['x'])
      ),
      GoRoute(path:'/a',name: RoutesNames.aPage,
          builder: (context, state) =>  const A()
      ),
    ],
  );
}