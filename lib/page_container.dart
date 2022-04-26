import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:untitled/routes.gr.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold (
      routes: const [RouteA(), RouteB()],
      builder: (context, child, animation) {
        // obtain the scoped TabsRouter controller using context
        final tabsRouter = AutoTabsRouter.of(context);
        // Here we're building our Scaffold inside of AutoTabsRouter
        // to access the tabsRouter controller provided in this context
        //
        //alterntivly you could use a global key
        return Scaffold(
            body: FadeTransition(
              opacity: animation,
              // the passed child is techinaclly our animated selected-tab page
              child: child,
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                // here we switch between tabs
                tabsRouter.setActiveIndex(index);
              },
              items: const [
                BottomNavigationBarItem(label: 'Page A', icon: Icon(Icons.add)),
                BottomNavigationBarItem(label: 'Page B', icon: Icon(Icons.map)),
              ],
            ));
      },
    );
  }
}
