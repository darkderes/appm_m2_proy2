import 'package:flutter/material.dart';
import '../data/contents_onboard.dart';

class ListSoftSkills extends StatelessWidget {
  final Color colorImput;
  const ListSoftSkills({
    super.key,required this.colorImput,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: listSoftSkills.map((softSkill) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 300,
              height: 200,
              child: Card(
                
                color: Colors.white,
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(softSkill.skills,
                        style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:colorImput)),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
