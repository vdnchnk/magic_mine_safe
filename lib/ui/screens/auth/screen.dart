import 'package:explocive_detection/ui/screens/auth/bloc/bloc.dart';
import 'package:explocive_detection/ui/screens/auth/bloc/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreenWidget extends StatelessWidget {
  const AuthScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      bloc: context.read(),
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Text(state.isSignUp ? 'Реєстрація' : 'Авторизація'),
        ),
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
                padding: EdgeInsets.all(16),
                child: Image.asset(
                  'assets/logo.png',
                  height: 200,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Card(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('E-mail'),
                        const SizedBox(height: 8),
                        TextField(
                          onChanged: (value) {
                            context.read<AuthBloc>().eventEmail(value);
                          },
                        ),
                        const SizedBox(height: 16),
                        const Text('Пароль'),
                        const SizedBox(height: 8),
                        TextField(
                          obscureText: true,
                          onChanged: (value) {
                            context.read<AuthBloc>().eventPassword(value);
                          },
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: state.isButtonValid
                                  ? () {
                                      context.read<AuthBloc>().eventLogin();
                                    }
                                  : null,
                              child: const Text('Вхід'),
                            ),
                            if (!state.isSignUp)
                              Flexible(
                                child: TextButton(
                                  child: Text('Зареєструватись'),
                                  onPressed: () {
                                    context.read<AuthBloc>().eventSignUp();
                                  },
                                ),
                              ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
