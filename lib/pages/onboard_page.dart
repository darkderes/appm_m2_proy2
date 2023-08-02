import 'package:appm_m2_proy2/data/contents_onboard.dart';
import 'package:appm_m2_proy2/pages/profile.dart';
import 'package:appm_m2_proy2/pages/social_media.dart';
import 'package:appm_m2_proy2/pages/soft_skills.dart';
import 'package:flutter/material.dart';
import 'hard_skills.dart';
import 'finish_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: pageColors[currentIndex], //
        //const Color.fromARGB(255, 75, 76, 128),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  controller: _pageController,
                  itemCount: page.length,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    if (i == 0) {
                      return const Profile();
                    } else if (i == 1) {
                      return const SoftSkill();
                    } else if (i == 2) {
                      return const HardSkill();
                    } else {
                      return const SocialMedias();
                    }
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  page.length, (index) => buildPage(index, context)),
            ),
            Container(
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.all(40),
              child: MaterialButton(
                onPressed: () async {
                  if (currentIndex == page.length - 1) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const FinishPage()));
                  }
                  _pageController.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut);
                },
                color: pageColors[currentIndex],
                shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  currentIndex == page.length - 1 ? "Continuar" : "Siguiente",
                  style: const TextStyle(
                      color: Color.fromARGB(255, 241, 240, 240), fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildPage(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 20 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == page.length - 1
            ? Colors.red
            : const Color.fromARGB(255, 247, 248, 247).withOpacity(0.5),
      ),
    );
  }
}
