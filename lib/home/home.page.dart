import 'package:electronic/common_widget/card.widget.dart';
import 'package:electronic/common_widget/search.input.dart';
import 'package:electronic/common_widget/text.widget.dart';
import 'package:electronic/home/chips.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: TextWidget(
            text: "Hello Yasser",
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          subtitle: TextWidget(
            text: "What are you buying today ?",
            textColor: Colors.grey,
          ),
          trailing: Image.asset("assets/icons/shopping.png"),
        ),
        SearchInput(
          label: "Search for products",
          controller: _search,
        ),
        const SizedBox(
          height: 15,
        ),
        const ChipsWidget(),
        ListTile(
          title: TextWidget(
            text: "Trending sales",
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          trailing: TextWidget(
            text: "See All",
            fontSize: 14,
            textColor: Colors.purple,
          ),
        ),
        const CardWidget(),
        ListTile(
          title: TextWidget(
            text: "New arrivals",
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          trailing: TextWidget(
            text: "See All",
            fontSize: 14,
            textColor: Colors.purple,
          ),
        ),
        const CardWidget(),
      ],
    );
  }
}
