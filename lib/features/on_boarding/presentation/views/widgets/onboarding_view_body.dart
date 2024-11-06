import 'package:e_commerce/features/on_boarding/presentation/views/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Expanded(child: OnBoardingPageView())],
    );
  }
}