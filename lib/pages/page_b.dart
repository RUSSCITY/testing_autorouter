import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes.gr.dart';

class PageB extends StatelessWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Page B"),
        ),
        body: MaterialButton(
          color: Colors.green,
          child: const Text("Go to Page A"),
          onPressed: () {
            AutoRouter.of(context).replace(const RouteA());
          },
        ));
  }
}
