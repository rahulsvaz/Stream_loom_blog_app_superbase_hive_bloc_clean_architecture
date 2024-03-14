import 'package:flutter/material.dart';
import 'package:stream_loom/core/theme/app_palette.dart';
import 'package:stream_loom/features/auth/presentation/pages/sign_up_page/sign_up_page.dart';
import 'package:stream_loom/features/auth/presentation/widgets/auth_field.dart';
import 'package:stream_loom/features/auth/presentation/widgets/auth_gradiant_button.dart';

class SignInPage extends StatefulWidget {
  static route() {
    MaterialPageRoute(
      builder: (context) => const SignInPage(),
    );
  }

  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Sign In.',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 15,
            ),
            AuthField(
              hint: 'Email',
              controller: emailController,
            ),
            const SizedBox(
              height: 15,
            ),
            AuthField(
              hint: 'Password',
              controller: passwordController,
              obscure: true,
            ),
            const SizedBox(
              height: 20,
            ),
            const AuthGradientButton(
              label: 'Sign In',
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  SignUpPage.route(),
                );
              },
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account ",
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: 'SignUp',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppPalette.gradient2,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
