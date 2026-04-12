import 'package:beautiful_settings_flutter/routes/app_router.dart';
import 'package:beautiful_settings_flutter/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textButtonWidget(
              'See demo',
              () => context.push(AppRouter.settings),
            ),
          ],
        ),
      ),
    );
  }
}
