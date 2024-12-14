import 'package:explocive_detection/ui/router/nav_keys.dart';
import 'package:explocive_detection/ui/router/nav_router.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final NavRouter router;
  const MainScreen({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            SizedBox(height: 16),
            Text(
              'MineSafe це зручний застосунок для маркування місцевості та повідомленнь про мінну безпеку',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(height: 16),
            Text(
              'За час існування застосунку було виявлено понад 100 вибухонебезпечних обʼєктів, що були вдало виявлені та знешкоджені',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(height: 16),
            Text(
              'За наявності питань та зауважень, звертайтесь до розробників застосунку чи до відповідальної особи в вашій громаді',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Правила користування застосунком'),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Навчальні посібники'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                router.push(NavKeys.reportListPath);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Ваші заявки'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
