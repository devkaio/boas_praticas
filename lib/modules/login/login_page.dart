import 'package:boas_praticas/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:boas_praticas/shared/widgets/input_text/input_text_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Form(
                    child: Column(
                      children: [
                        InputTextWidget(
                          label: 'E-mail',
                          validator: (value) => value!.isEmpty ? 'Vazio' : null,
                          onChanged: (value) {
                            controller.onChanged(email: value);
                          },
                          obscureText: false,
                        ),
                        InputTextWidget(
                          label: 'Password',
                          validator: (value) => value!.isEmpty ? 'Vazio' : null,
                          onChanged: (value) {
                            controller.onChanged(password: value);
                          },
                          obscureText: false,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: ElevatedButton(
                            onPressed: () {
                              if (controller.login()) {
                                Navigator.pushReplacementNamed(
                                    context, '/home');
                              }
                            },
                            child: Text('Entrar'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
