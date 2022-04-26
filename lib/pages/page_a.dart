import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class PageA extends StatefulWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  bool showSubRoutes = true;

  @override
  void initState() {
    super.initState();
    blinkSubRoutes();
  }

  Future<void> blinkSubRoutes() async {
    await Future.delayed(const Duration(milliseconds: 1000), () => "1");
    setState(() {
      showSubRoutes = false;
    });
    await Future.delayed(const Duration(milliseconds: 1000), () => "1");
    setState(() {
      showSubRoutes = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Page A"),
        ),
        body: showSubRoutes ? const AutoRouter() : Container());
  }
}
