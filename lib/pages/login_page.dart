import 'package:flutter/material.dart';
import 'package:nv1_15/components/custom_login_button_component.dart';
import 'package:nv1_15/controllers/login_controller.dart';
import 'package:nv1_15/widgets/custom_textfield_widget.dart';

class LoginPage extends StatelessWidget {
  LoginController _controller = LoginController();
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        decoration: BoxDecoration(
          border: const Border(top: BorderSide(color: Color(0XFFF1F3F5))),
          color: Colors.blue.shade100,
        ),
        child: Column(
          children: [
            
            Icon(
              Icons.people,
              size: MediaQuery.of(context).size.height * 0.3,
            ),
            CustomTextFieldWidget(
              title: "Login",
              onChange: _controller.setLogin,
            ),
            CustomTextFieldWidget(
              title: "Senha",
              onChange: _controller.setPass,
              obscureText: true,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomLoginButtonComponent(loginController: _controller)
          ],
        ),
      ),
    );
  }
}
