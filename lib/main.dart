import 'package:flutter/material.dart';
import 'package:master_plan/models/plan.dart';
import 'plan_provider.dart';
import 'view/plan_creator_screen.dart';

void main() {
  runApp(const MasterPlanApp());
}

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        title: 'Master Plan',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.purple,
          ),
          cardTheme: CardTheme(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        home: const PlanCreatorScreen(),
      ),
    );
  }
}
