import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  final primary = const Color.fromRGBO(27, 155, 176, 1);
  final secundaryColor = const Color.fromRGBO(70, 85, 102, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(),
              ),
              IconButton(
                icon: const Icon(Icons.add_circle_outlined),
                onPressed: () {},
              )
            ],
          ),

          //PieChart
          Expanded(
            child: PieChart(
              PieChartData(
                centerSpaceRadius: 100,
                sections: [
                  PieChartSectionData(
                    value: 90,
                    color: primary,
                    title: '',
                  ),
                  PieChartSectionData(
                      value: 10, color: secundaryColor, title: ''),
                ],
              ),
            ),
          ),
          //Other Data
          Container(
              padding: const EdgeInsets.all(16),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'BITCOIN CASH',
                      style: TextStyle(fontSize: 8, color: primary),
                    ),
                    const Text(
                      '\$57,483.35',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ETHEREUM',
                      style: TextStyle(fontSize: 8, color: primary),
                    ),
                    const Text(
                      '\$34,540.00',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ]))
        ],
      ),
    );
  }
}
