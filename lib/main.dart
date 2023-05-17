import 'package:flutter/material.dart';
import 'package:store_app/pages/home_page.dart';
import 'package:store_app/pages/products_page.dart';

void main() {
  runApp(const FakeStore());
}

class FakeStore extends StatelessWidget {
  const FakeStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fake Store',
      routes: routes,
      initialRoute: HomePage.id,
    );
  }
}

final Map<String, WidgetBuilder> routes = {
  HomePage.id: (BuildContext context) => const HomePage(),
  ProductsPage.id: (BuildContext context) => const ProductsPage(),
};
