// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import 'page_container.dart' as _i1;
import 'pages/page_a.dart' as _i2;
import 'pages/page_b.dart' as _i3;
import 'pages/subpages/subpage_a.dart' as _i4;
import 'pages/subpages/subpage_b.dart' as _i5;
import 'pages/subpages/subsubpages/subsubpage_a.dart' as _i6;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    RouteContainer.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.PageContainer());
    },
    RouteA.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PageA());
    },
    RouteB.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.PageB());
    },
    SubRouteA.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SubPageA());
    },
    SubRouteB.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SubPageB());
    },
    SubsubpageA.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SubsubpageA());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(RouteContainer.name, path: '/', children: [
          _i7.RouteConfig(RouteA.name,
              path: '',
              parent: RouteContainer.name,
              children: [
                _i7.RouteConfig(SubRouteA.name, path: '', parent: RouteA.name),
                _i7.RouteConfig(SubRouteB.name,
                    path: 'sub-page-b',
                    parent: RouteA.name,
                    children: [
                      _i7.RouteConfig(SubsubpageA.name,
                          path: '', parent: SubRouteB.name)
                    ])
              ]),
          _i7.RouteConfig(RouteB.name,
              path: 'page-b', parent: RouteContainer.name)
        ])
      ];
}

/// generated route for
/// [_i1.PageContainer]
class RouteContainer extends _i7.PageRouteInfo<void> {
  const RouteContainer({List<_i7.PageRouteInfo>? children})
      : super(RouteContainer.name, path: '/', initialChildren: children);

  static const String name = 'RouteContainer';
}

/// generated route for
/// [_i2.PageA]
class RouteA extends _i7.PageRouteInfo<void> {
  const RouteA({List<_i7.PageRouteInfo>? children})
      : super(RouteA.name, path: '', initialChildren: children);

  static const String name = 'RouteA';
}

/// generated route for
/// [_i3.PageB]
class RouteB extends _i7.PageRouteInfo<void> {
  const RouteB() : super(RouteB.name, path: 'page-b');

  static const String name = 'RouteB';
}

/// generated route for
/// [_i4.SubPageA]
class SubRouteA extends _i7.PageRouteInfo<void> {
  const SubRouteA() : super(SubRouteA.name, path: '');

  static const String name = 'SubRouteA';
}

/// generated route for
/// [_i5.SubPageB]
class SubRouteB extends _i7.PageRouteInfo<void> {
  const SubRouteB({List<_i7.PageRouteInfo>? children})
      : super(SubRouteB.name, path: 'sub-page-b', initialChildren: children);

  static const String name = 'SubRouteB';
}

/// generated route for
/// [_i6.SubsubpageA]
class SubsubpageA extends _i7.PageRouteInfo<void> {
  const SubsubpageA() : super(SubsubpageA.name, path: '');

  static const String name = 'SubsubpageA';
}
