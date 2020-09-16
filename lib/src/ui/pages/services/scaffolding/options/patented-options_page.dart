import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:haweyati/src/ui/pages/services/scaffolding/adjustments/patented-adjustments_page.dart';
import 'package:haweyati/src/ui/views/header_view.dart';
import 'package:haweyati/src/ui/views/no-scroll_view.dart';
import 'package:haweyati/src/ui/widgets/app-bar.dart';
import 'package:haweyati/src/ui/widgets/dark-list-item.dart';
import 'package:haweyati/src/ui/widgets/no-scroll_page.dart';
import 'package:haweyati/src/utils/custom-navigator.dart';
import 'package:haweyati/src/utlis/const.dart';

class PatentedOptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NoScrollView(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15
        ),
        child: Column(children: [
          HeaderView(
            title: 'Scaffolding Options',
            subtitle: loremIpsum.substring(0, 70),
          ),

          DarkListTile(
            title: 'Facades',
            trailing: Icon(CupertinoIcons.right_chevron),
            onTap: () => Navigator.of(context).pushNamed('/scaffoldings-facades')
          ),
          SizedBox(height: 15),
          DarkListTile(
            title: 'Manual',
            trailing: Icon(CupertinoIcons.right_chevron),
            onTap: () => navigateTo(context, PatentedAdjustmentsPage()),
          ),
        ]),
      ),
    );
  }
}