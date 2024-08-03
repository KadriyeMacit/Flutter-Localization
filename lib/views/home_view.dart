import 'package:app_lang_support/cubit/locale_cubit.dart';
import 'package:app_lang_support/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                S.of(context).welcome,
              ),
              const SizedBox(height: 24),
              Text(
                S.of(context).language,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  context.read<LocaleCubit>().changeLanguage("en");
                },
                child: const Text("English"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<LocaleCubit>().changeLanguage("tr");
                },
                child: const Text("Türkçe"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
