import 'package:flutter/material.dart';

class CircularIndicator extends StatelessWidget {
  const CircularIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  SliverFillRemaining(// علشان اخلي عنصر ف النص في كستوم سكرول فيو
          child:Center(child: CircularProgressIndicator()));
  }}