import 'package:flutter/material.dart';
import 'package:flutter_widgets/views/pages.dart';

void main() => runApp(Main());

class Main extends StatefulWidget {
  const Main({super.key});
  static const String routeName = '/';

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  List<Widget> widget_list = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Vasa Hotel',
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => Hotel(),
          BookForm.routename: (context) => BookForm()
        });
  }
}
