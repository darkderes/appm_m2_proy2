import '../barrel.dart';

class HardSkill extends StatelessWidget {
  const HardSkill({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SingleChildScrollView(
       child: Padding(
         padding: EdgeInsets.all(40),
         child: Column(
           children: [
             Header(),
             SizedBox(
               height: 20,
             ),
               CustomTextDetails(text:"Hard Skill"),
               SizedBox(
                height: 20,
             
        
              ), 
              HardSkillsChart(),      
           ],
         ),
       ),
                        ),
    );
  }
}