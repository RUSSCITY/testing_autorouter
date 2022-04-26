import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../routes.gr.dart';

class SubPageB extends StatefulWidget {
  const SubPageB({Key? key}) : super(key: key);

  @override
  State<SubPageB> createState() => _SubPageBState();
}

class _SubPageBState extends State<SubPageB> {
  bool showAutoRouter = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    triggerAutoRouter();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: showAutoRouter ? const AutoRouter() : Container()),
        MaterialButton(
          color: Colors.green,
          child: const Text("Go to Page B"),
          onPressed: () {
            AutoRouter.of(context).replace(const RouteB());
          },
        ),
        MaterialButton(
          color: Colors.green,
          child: const Text("Go to Subpage A"),
          onPressed: () {
            AutoRouter.of(context).push(const SubRouteA());
          },
        )
      ],
    );
  }

  Future<void> triggerAutoRouter() async {
    await Future.delayed(Duration(milliseconds: 1000), () => "1");
    setState(() {
      showAutoRouter = true;
    });
    await Future.delayed(Duration(milliseconds: 1000), () => "1");
    setState(() {
      showAutoRouter = false;
    });
    await Future.delayed(Duration(milliseconds: 1000), () => "1");
    setState(() {
      showAutoRouter = true;
    });
  }
}
