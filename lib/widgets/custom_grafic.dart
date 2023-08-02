import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../data/contents_onboard.dart';

class HardSkillsChart extends StatelessWidget {
  const HardSkillsChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 1.5,
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY: 10.0,
            titlesData: FlTitlesData(
              show: true,
              bottomTitles: SideTitles(
                showTitles: true,
                getTextStyles: (context, value) => const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                margin: 10,
                getTitles: (double value) {
                  // Mapea el índice de hardSkills al nombre de la habilidad
                  return listHardSkills[value.toInt()].skills;
                },
              ),
              leftTitles: SideTitles(
                showTitles: true,
                getTextStyles: (context, value) => const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                margin: 10,
              ),
            ),
            borderData: FlBorderData(show: false),
            barGroups: listHardSkills
                .map((skill) => BarChartGroupData(
                      x: listHardSkills.indexOf(skill),
                      barRods: [
                        BarChartRodData(y: skill.value, colors: [Colors.blue]),
                      ],
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
