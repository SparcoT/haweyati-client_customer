import 'dark-container.dart';
import 'package:flutter/material.dart';
import 'package:haweyati/src/ui/widgets/counter.dart';

class ScaffoldingItemSelector extends DarkContainer {
  ScaffoldingItemSelector({
    String text,
    double price,
    Function onChange,
    int qty=1,
  }): super(
    height: 86,
    padding: const EdgeInsets.all(15),
    child: Row(children: [
      Column(
        children: [
          Text(text, style: TextStyle(
            color: Color(0xFF313F53),
            fontWeight: FontWeight.bold
          )),
          Spacer(),
          Text('SAR ${price.round()}/day')
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      Column(children: [
        Counter(onChange: (val) {
          qty = val.toInt();
          onChange();
        }),
        SizedBox(height: 10),
        Counter(
          increment: .5,
          maxValue: 4.0,
          minValue: 1.0,
          allowDouble: true,
          onChange: (val) {
            onChange();
          }
        )
      ])
    ], mainAxisAlignment: MainAxisAlignment.spaceBetween)
  );
}