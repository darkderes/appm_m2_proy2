import '../barrel.dart';

class SoftSkill extends StatelessWidget {
  final int indexColor;
  const SoftSkill({
    super.key, required this.indexColor,
  });

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Header(),
              const SizedBox(
                height: 20,
              ),
              const CustomTextDetails(text:"Soft Skill"),
              const SizedBox(
                height: 20,
              ),
              ListSoftSkills(colorImput: pageColors[indexColor],),
            ],
          ),
        ),
      ),
    );
  }
}
