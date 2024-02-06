import 'package:flutter/material.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/link_button.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/primary_button.dart';
import 'package:peer_app/presentation/whitelabel/components/input/input_field_component.dart';

class LoginSection extends StatefulWidget {
  const LoginSection({super.key});

  @override
  State<LoginSection> createState() => _LoginSectionState();
}

class _LoginSectionState extends State<LoginSection> {
  final _formKey = GlobalKey<FormState>();
  String error = '';
  String errorEmail = "";
  String errorPassword = "";

  bool loading = false;

  bool isObscure = true;

  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();

    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: AutofillGroup(
        child: Column(
          children: [
            InputFieldComponent(
              controller: emailController,
              obscureText: false,
              autofillHints: const [AutofillHints.email],
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              labelText: 'Email',
              validator: (val) =>
                  (val == null || val.isEmpty) ? 'Enter an email' : null,
              // footnoteText: 'footnoteText',
            ),
            const SizedBox(height: 20),
            InputFieldComponent(
              controller: passwordController,
              obscureText: true,
              autofillHints: const [AutofillHints.password],
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              labelText: 'Password',
              validator: (val) =>
                  (val == null || val.isEmpty) ? 'Enter an Password' : null,
              // footnoteText: 'footnoteText',
            ),
            const SizedBox(height: 20),
            PrimaryButtonComponent(
              text: 'Login',
              onPressed: () {
                Navigator.of(context).push(PeerPageRoute());
              },
            ),
            const SizedBox(height: 20),
            LinkButtonComponent(
              text: 'Register',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
