import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_365_2/exchange_page.dart';
import 'package:flutter_365_2/page_provider.dart';
import 'package:flutter_365_2/portfolio_page.dart';
import 'package:flutter_365_2/wallet_page.dart';
import 'package:flutter_365_2/widgets/custom_list_tile_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget page = const PortfolioPage();
    int pageN = context.watch<PageProvider>().pageNo;

    switch (pageN) {
      case 0:
        page = const PortfolioPage();
        break;
      case 1:
        page = const WalletPage();
        break;
      case 2:
        page = const ExchangePage();
        break;
      case 3:
        page = const PortfolioPage();
        break;
    }

    if (pageN == 0) {
    } else if (pageN == 1) {
      page = const WalletPage();
    } else if (pageN == 2) {
      page == const ExchangePage();
    }

    return Scaffold(
      body: Row(
        children: [
          // Navigation Menu
          Expanded(
            flex: 2,
            child: Material(
              elevation: 4.0,
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
                  CustomListTileaWidget(
                      title: 'Porfolio',
                      isSelected: pageN == 0 ? true : false,
                      onTab: () {
                        context.read<PageProvider>().changePage(0);
                      },
                      icon: Icons.folder_copy_outlined),
                  CustomListTileaWidget(
                      isSelected: pageN == 1 ? true : false,
                      title: 'Wallet',
                      onTab: () {
                        context.read<PageProvider>().changePage(1);
                      },
                      icon: Icons.wallet_outlined),
                  CustomListTileaWidget(
                      isSelected: pageN == 2 ? true : false,
                      title: 'Exchange',
                      onTab: () {
                        context.read<PageProvider>().changePage(2);
                      },
                      icon: Icons.compare_arrows_rounded),
                  CustomListTileaWidget(
                      isSelected: pageN == 3 ? true : false,
                      title: 'Other',
                      onTab: () {
                        context.read<PageProvider>().changePage(3);
                      },
                      icon: Icons.compare_arrows_rounded),
                ],
              ),
            ),
          ),

          Expanded(flex: 5, child: page),
        ],
      ),
    );
  }
}
