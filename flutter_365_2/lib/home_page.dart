import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_365_2/page_provider.dart';
import 'package:flutter_365_2/portfolio_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int pageNumber = context.watch<PageProvider>().page;

    return Scaffold(
      body: Row(
        children: [
          // Navigation Menu
          Expanded(
            flex: 2, // takes 2/7 of the screen width
            child: Material(
              elevation: 4.0, // shadow effect
              child: ListView(
                children: [
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlutterLogo(
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Exodus'),
                            Text(
                              'v1.0',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 8),
                            ),
                          ],
                        )
                      ],
                    )),
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: ListTile(
                          leading: Icon(Icons.folder_shared_outlined),
                          title: Text('Portfolio'),
                        ),
                      ),
                      Container(
                        color: const Color.fromARGB(255, 27, 155, 176),
                        width: 4,
                        height: 50,
                      )
                    ],
                  ),

                  Row(
                    children: [
                      const Expanded(
                        child: ListTile(
                          leading: Icon(Icons.wallet),
                          title: Text('Wallet'),
                        ),
                      ),
                      Container(
                        color: const Color.fromARGB(255, 27, 155, 176),
                        width: 4,
                        height: 50,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: ListTile(
                          leading: Icon(Icons.compare_arrows),
                          title: Text('Exchange'),
                        ),
                      ),
                      Container(
                        color: const Color.fromARGB(255, 27, 155, 176),
                        width: 4,
                        height: 50,
                      )
                    ],
                  ),
                  // ... other list tiles
                ],
              ),
            ),
          ),
          // Content Area

          const Expanded(
              flex: 5, // takes 5/7 of the screen width
              child: PortfolioPage()),
        ],
      ),
    );
  }
}
