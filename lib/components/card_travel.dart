import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';

import '../utils/colors.dart';

class CardTravel extends StatelessWidget {
  final String start;
  final String date;
  final String end;
  const CardTravel({
    super.key,
    required this.start,
    required this.date,
    required this.end,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: second,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.deepPurple, width: 1),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 40,
            child: Column(
              children: [
                OutlinedDotIndicator(color: primary),
                SizedBox(height: 20, child: SolidLineConnector(color: primary)),
                SizedBox(
                  height: 20,
                  child: DashedLineConnector(color: primary),
                ),
                SizedBox(height: 20, child: SolidLineConnector(color: primary)),
                DotIndicator(color: primary),
              ],
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '18A Topsia avenue Lekki',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 20),
                Text(
                  '23 mins trip',
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Block 5 Phase 12 Chevron Hotels',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
