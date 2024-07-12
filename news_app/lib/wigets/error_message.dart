import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(child: SliverToBoxAdapter( child: Text("oops,there was an error")));
  }}