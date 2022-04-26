// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/annotations.dart';
import 'package:untitled/page_container.dart';
import 'package:untitled/pages/page_a.dart';
import 'package:untitled/pages/page_b.dart';
import 'package:untitled/pages/subpages/subpage_a.dart';
import 'package:untitled/pages/subpages/subpage_b.dart';
import 'package:untitled/pages/subpages/subsubpages/subsubpage_a.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: PageContainer, initial: true, children: [
      AutoRoute(page: PageA, initial: true, children: [
        AutoRoute(page: SubPageA, initial: true),
        AutoRoute(
            page: SubPageB,
            initial: false,
            children: [AutoRoute(page: SubsubpageA, initial: true)])
      ]),
      AutoRoute(page: PageB),
    ])
  ],
)
class $AppRouter {}
