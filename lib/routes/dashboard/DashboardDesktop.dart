import 'package:flutter/material.dart';
import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardDesktop extends StatefulWidget {
  @override
  State<DashboardDesktop> createState() => _DashboardDesktopState();
}

class _DashboardDesktopState extends State<DashboardDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          DashboardDrawer(),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.green,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Recent transactions'),
                      Row(
                        children: [
                          ElevatedButton.icon(onPressed: () {}, icon: SvgPicture.asset(''), label: Text('20Jun -10 jul')),
                          SvgPicture.asset(''),
                        ],
                      )
                    ],
                  ),
                  ListView(
                    children: [
                      Row(),
                      Row(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.grey,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollapsibleSidebar(
      backgroundColor: Colors.white,
      items: <CollapsibleItem>[
        CollapsibleItem(
          text: 'Dashboard',
          icon: Icons.home_outlined,
          onPressed: () {},
          isSelected: true,
        ),
        CollapsibleItem(
          text: 'Cards',
          icon: Icons.credit_card_outlined,
          onPressed: () {},
          isSelected: true,
        ),
        CollapsibleItem(
          text: 'Transactions',
          icon: Icons.assessment,
          onPressed: () {},
          isSelected: true,
        ),
        CollapsibleItem(
          text: 'Savings',
          icon: Icons.assessment,
          onPressed: () {},
          isSelected: true,
        ),
        CollapsibleItem(
          text: 'Account',
          icon: Icons.person_pin,
          onPressed: () {},
          isSelected: true,
        ),
      ],
      body: Container(),
    );
  }
}
