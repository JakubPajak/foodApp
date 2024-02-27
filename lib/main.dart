import 'package:ecommerce_app/pages/bottom_nav.dart';
import 'package:ecommerce_app/pages/onboard.dart';
import 'package:ecommerce_app/pages/sign_up_page.dart';
import 'package:ecommerce_app/pages/wallet.dart';
import 'package:ecommerce_app/widgets/app_constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = publishableKey;
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Onboard(),
    );
  }
}
