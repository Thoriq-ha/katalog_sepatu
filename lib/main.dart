import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './screens/detail_product_screen.dart';
import './screens/product_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
        accentColor: Colors.black,
        scaffoldBackgroundColor: Color(0xFFECEDEF),
        appBarTheme: AppBarTheme(
          backgroundColor:  Color(0xFFECEDEF),
          iconTheme: IconThemeData(color: Colors.purple),
          elevation: 0.0,
        ),
      ),
      initialRoute: ProductScreen.nameRoute,
      routes: <String, WidgetBuilder>{
        ProductScreen.nameRoute: (context) => ProductScreen(),
        DetailProductScreen.nameRoute: (context) => DetailProductScreen(),
      },
    );
  }
}
