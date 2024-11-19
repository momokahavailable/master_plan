import 'package:flutter/material.dart';
import 'package:master_plan/models/plan.dart';

class PlanScreen extends StatelessWidget {
  final Plan plan;

  const PlanScreen({Key? key, required this.plan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Logika tampilan untuk PlanScreen
    return Scaffold(
      appBar: AppBar(
        title: Text(plan.name),
      ),
      body: Center(
        child: Text('Detail plan for ${plan.name}'),
      ),
    );
  }
}
