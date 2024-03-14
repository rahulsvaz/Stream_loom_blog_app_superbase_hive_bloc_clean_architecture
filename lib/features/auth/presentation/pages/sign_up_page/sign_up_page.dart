import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stream_loom/core/theme/app_palette.dart';
import 'package:stream_loom/features/auth/presentation/widgets/auth_field.dart';
import 'package:stream_loom/features/auth/presentation/widgets/auth_gradiant_button.dart';

class SignUpPage extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const SignUpPage(),
      );

  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Sign Up.',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              AuthField(
                hint: 'Name',
                controller: nameController,
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
                obscure: true,
                controller: passwordController,
              ),
              const SizedBox(
                height: 20,
              ),
              const AuthGradientButton(
                label: ' Sign Up',
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account ",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: 'Sign In',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
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
      ),
    );
  }
}
