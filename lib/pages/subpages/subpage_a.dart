import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/subpages/subpage_b.dart';
import 'package:untitled/routes.gr.dart';

class SubPageA extends StatelessWidget {
  const SubPageA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text("Subpage A"),
        ),
        MaterialButton(
          color: Colors.green,
          child: Text("Go to Page B"),
          onPressed: () {
            AutoRouter.of(context).replace(const RouteB());
          },
        ),
        MaterialButton(
          color: Colors.green,
          child: Text("Go to Subpage B"),
          onPressed: () {
            AutoRouter.of(context).push(const SubRouteB());
          },
        )
      ],
    );
  }
}
