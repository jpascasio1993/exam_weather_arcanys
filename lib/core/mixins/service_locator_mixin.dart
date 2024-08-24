import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

mixin ServiceLocatorMixin<E extends StatefulWidget> on State<E> {
  late GetIt serviceLocator;

  @override
  void initState() {
    super.initState();
    serviceLocator = GetIt.instance;
  }
}
