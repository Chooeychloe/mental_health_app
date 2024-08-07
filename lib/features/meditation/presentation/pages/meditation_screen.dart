import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theme.dart';
import 'package:mental_health_app/features/meditation/presentation/widgets/feeling_button.dart';
import 'package:mental_health_app/features/meditation/presentation/widgets/task_card.dart';
import 'package:mental_health_app/presentation/bottomNavBar/widgets/bottom_nav_bar.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset('assets/menu_burger.png'),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/profile.png'),
          ),
          SizedBox(
            width: 16,
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back,User',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'How are you feelng today?',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeelingButton(
                      label: 'happy',
                      image: 'assets/happy.png',
                      color: DefaultColors.pink),
                  FeelingButton(
                      label: 'happy',
                      image: 'assets/calm.png',
                      color: DefaultColors.purple),
                  FeelingButton(
                      label: 'happy',
                      image: 'assets/relax.png',
                      color: DefaultColors.orange),
                  FeelingButton(
                      label: 'happy',
                      image: 'assets/focus.png',
                      color: DefaultColors.lightteal),
                ],
              ),
              Text(
                'Today\'s Task',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 16,
              ),
              TaskCard(
                  title: 'Morning',
                  description:
                      'Let`s open up to the thing that matters among the people.',
                  color: DefaultColors.task1),
              SizedBox(
                height: 16,
              ),
              TaskCard(
                  title: 'Morning',
                  description:
                      'Let`s open up to the thing that matters among the people.',
                  color: DefaultColors.task2),
              SizedBox(
                height: 16,
              ),
              TaskCard(
                  title: 'Morning',
                  description:
                      'Let`s open up to the thing that matters among the people.',
                  color: DefaultColors.task3),
            ],
          ),
        ),
      ),
    );
  }
}
