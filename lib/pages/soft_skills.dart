import 'package:appm_m2_proy2/common/header.dart';
import 'package:flutter/material.dart';

import '../data/contents_onboard.dart';

class SoftSkill extends StatelessWidget {
  const SoftSkill({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Header(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Soft Skills",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
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
                                  style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
