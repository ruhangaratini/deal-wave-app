import 'package:flutter/material.dart';

class BaseCircularProgressLoader extends StatelessWidget {
  const BaseCircularProgressLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}
