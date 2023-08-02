import 'package:appm_m2_proy2/common/header.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_grafic.dart';


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
                 Text(
                "Hard Skills",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
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