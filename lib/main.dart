import 'package:fakestoreapi/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(AppRouter()));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  MyApp(this.appRouter);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: appRouter.generteRoute,
    );
  }
}

