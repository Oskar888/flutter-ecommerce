import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import './pages/home.dart';
import './utils/colors.dart';
import './services/providers/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CartProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Shop App',
          theme: ThemeData(
            textTheme: GoogleFonts.nunitoTextTheme(),
            primarySwatch: Colors.grey,
            scaffoldBackgroundColor:
                ColorConstants.lightScaffoldBackgroundColor,
            appBarTheme: AppBarTheme(
              backgroundColor: ColorConstants.lightScaffoldBackgroundColor,
            ),
          ),
          home: const Home(),
        ));
  }
}
