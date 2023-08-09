import 'package:electronic/common_widget/text.widget.dart';
import 'package:flutter/material.dart';

class ChipsWidget extends StatelessWidget {
  const ChipsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const SizedBox(
            width: 15,
          ),
          _buildChip(
            'All',
          ),
          const SizedBox(
            width: 15,
          ),
          _buildChip(
            'Gamming',
            "gaming.png",
          ),
          const SizedBox(
            width: 15,
          ),
          _buildChip(
            'Headphone',
            "headphones.png",
          ),
          const SizedBox(
            width: 15,
          ),
          _buildChip(
            'Speaker',
            "speaker.png",
          ),
          const SizedBox(
            width: 15,
          ),
          _buildChip(
            'Printer',
            "printer.png",
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label, [String? icon]) {
    return Chip(
      labelPadding: const EdgeInsets.all(4.0),
      avatar: icon == null
          ? Container()
          : CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset("assets/icons/$icon"),
            ),
      label: TextWidget(
        text: label,
        fontSize: 12,
        textColor: label == "All" ? Colors.white : Colors.black,
      ),
      backgroundColor: label == "All" ? Colors.purple : Colors.white,
      elevation: 5.0,
      padding: const EdgeInsets.all(8.0),
    );
  }
}
