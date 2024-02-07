import 'package:flutter/material.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/link_button.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/primary_button.dart';
import 'package:peer_app/presentation/whitelabel/components/input/input_field_component.dart';

class RegisterSection extends StatefulWidget {
  const RegisterSection({super.key});

  @override
  State<RegisterSection> createState() => _RegisterSectionState();
}

class _RegisterSectionState extends State<RegisterSection> {
  final _formKey = GlobalKey<FormState>();
  String error = '';
  String errorEmail = "";
  String errorPassword = "";

  bool loading = false;

  bool isObscure = true;

  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController emailConfirmController;
  late TextEditingController passwordController;
  late TextEditingController passwordConfirmController;

  @override
  void initState() {
    super.initState();

    usernameController = TextEditingController();
    emailController = TextEditingController();
    emailConfirmController = TextEditingController();
    passwordController = TextEditingController();
    passwordConfirmController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: AutofillGroup(
        child: Column(
          children: [
            InputFieldComponent(
              controller: usernameController,
              obscureText: false,
              autofillHints: const [AutofillHints.username],
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              labelText: 'Username ...',
              validator: (val) =>
                  (val == null || val.isEmpty) ? 'Enter a Username' : null,
              // footnoteText: 'footnoteText',
            ),
            const SizedBox(height: 20),
            InputFieldComponent(
              controller: emailController,
              obscureText: true,
              autofillHints: const [AutofillHints.email],
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              labelText: 'E-Mail ...',
              validator: (val) => (val == null || val.isEmpty)
                  ? 'Enter an E-Mail Adress'
                  : null,
              // footnoteText: 'footnoteText',
            ),
            const SizedBox(height: 20),
            InputFieldComponent(
              controller: emailConfirmController,
              obscureText: true,
              autofillHints: const [AutofillHints.password],
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              labelText: 'E-Mail bestätigen ...',
              validator: (val) => (val == null || val.isEmpty)
                  ? 'Enter E-Mail Adress again to confirm'
                  : null,
              // footnoteText: 'footnoteText',
            ),
            const SizedBox(height: 20),
            InputFieldComponent(
              controller: passwordController,
              obscureText: true,
              autofillHints: const [AutofillHints.password],
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              labelText: 'Passwort ...',
              validator: (val) =>
                  (val == null || val.isEmpty) ? 'Enter a Password' : null,
              // footnoteText: 'footnoteText',
            ),
            const SizedBox(height: 20),
            InputFieldComponent(
              controller: passwordConfirmController,
              obscureText: true,
              autofillHints: const [AutofillHints.password],
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              labelText: 'Passwort bestätigen ...',
              validator: (val) => (val == null || val.isEmpty)
                  ? 'Enter a Password again to confirm'
                  : null,
              // footnoteText: 'footnoteText',
            ),
            const SizedBox(height: 20),
            PrimaryButtonComponent(
              text: 'Registrieren',
              onPressed: () {
                Navigator.of(context).push(PeerPageRoute());
              },
            ),
            const SizedBox(height: 20),
            LinkButtonComponent(
              text: 'Login',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
