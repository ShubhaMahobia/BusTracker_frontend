import 'package:bus_tracker/core/Authentication/controllers/sign_up_controller.dart';
import 'package:bus_tracker/repository/authentication_repo/authentication_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            AuthenticationRepository.instance.logout();
          },
          child: const Text('LOGOUT'),
        ),
      ),
    );
  }
}
