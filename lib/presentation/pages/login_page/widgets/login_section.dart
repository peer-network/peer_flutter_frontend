import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/auth_provider.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/link_button.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/primary_button.dart';
import 'package:peer_app/presentation/whitelabel/components/input/input_field_component.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:provider/provider.dart';

class LoginSection extends StatefulWidget {
  const LoginSection({super.key});

  @override
  State<LoginSection> createState() => _LoginSectionState();
}

class _LoginSectionState extends State<LoginSection> {
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  bool isObscure = true;
  String? error;

  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();

    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void onAPIError(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(error ?? 'An error occurred'),
        backgroundColor: Theme.of(context).colorScheme.error,
        behavior: SnackBarBehavior.floating,
      ),
    );
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
            const SizedBox(height: AppPaddings.large),
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
            const SizedBox(height: AppPaddings.large),
            SizedBox(
              width: double.infinity,
              child: PrimaryButton(
                isFilled: true,
                backgroundColor:
                    Theme.of(context).buttonTheme.colorScheme!.outline,
                text: 'Login',
                textColor: Theme.of(context).colorScheme.secondary,
                onPressed: () async {
                  if (!(_formKey.currentState?.validate() ?? false)) return;

                  final authProvider =
                      Provider.of<AuthProvider>(context, listen: false);

                  final email = emailController.text;
                  final password = passwordController.text;
                  await authProvider.loginWithCredentials(
                    email,
                    password,
                  );

                  if (!mounted) return;

                  if (authProvider.authState == AuthStates.authenticated) {
                    Navigator.of(context).push(PeerPageRoute());
                  } else {
                    setState(() {
                      error = authProvider.error;
                    });
                    onAPIError(context);
                  }
                },
              ),
            ),
            const SizedBox(height: AppPaddings.large),
            LinkButtonComponent(
              text: 'Register',
              textColor: Theme.of(context).colorScheme.tertiary,
              onPressed: () {
                Navigator.of(context).push(RegistrationPageRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}
