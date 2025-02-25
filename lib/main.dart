import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_api_mvvm/utils/routes/app_routes.dart';
import 'package:provider_api_mvvm/utils/routes/routes_name.dart';
import 'package:provider_api_mvvm/view_model/auth_view_model.dart';
import 'package:provider_api_mvvm/view_model/upload_image_view_model.dart';
import 'package:provider_api_mvvm/view_model/user_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => AuthViewModel()),
      ChangeNotifierProvider(create: (context)=> UserViewModel()),
      ChangeNotifierProvider(create: (context) => UploadImageViewModel())
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesName.splashView,
        routes: AppRoutes.appRoutes(context),
      ),
    );
  }
}