import 'package:flutter/material.dart';

import '../api/users/user_api.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isLogin = true;
  late TextEditingController? _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  final _userApi = UserApi();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController?.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!isLogin)
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    label: Text('Name'),
                  ),
                ),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  label: Text('Email'),
                ),
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  label: Text('Password'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              FilledButton(
                onPressed: () async {
                  final response = await _userApi.login(
                    _emailController.text,
                    _passwordController.text,
                  );
                  print(response);
                },
                child: Text(isLogin ? 'Login' : 'Sign up'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                child: Text(
                  isLogin
                      ? 'Don\'t have an account? Sign up'
                      : 'Already have an account? Sign in',
                ),
                onPressed: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
