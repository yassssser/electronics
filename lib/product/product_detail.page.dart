import 'package:electronic/common_widget/text.widget.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  ProductPage(
      {Key? key,
      required this.image,
      required this.price,
      required this.subtitle,
      required this.title})
      : super(key: key);
  String image, title, subtitle;
  int price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: TextWidget(
          text: "Product details",
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        foregroundColor: Colors.black,
        actions: [
          Image.asset("assets/icons/shopping.png"),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: Image.asset(
                "assets/images/$image.png",
                fit: BoxFit.fill,
              )),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            title: TextWidget(
              text: title,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            subtitle: TextWidget(
              text: subtitle,
              fontSize: 14,
            ),
            trailing: TextWidget(
              text: "$price £",
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Image.asset(
                "assets/icons/star.png",
                color: Colors.amber,
              ),
              const SizedBox(
                width: 5,
              ),
              TextWidget(
                text: "4.9",
                fontSize: 14,
                textColor: Colors.grey,
              ),
              const SizedBox(
                width: 20,
              ),
              TextWidget(
                text: "|",
                fontSize: 14,
                textColor: Colors.grey,
              ),
              const SizedBox(
                width: 15,
              ),
              TextWidget(
                text: "109 reviewers",
                fontSize: 14,
                textColor: Colors.blue,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          TextWidget(
            text: "About $title",
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 5,
          ),
          TextWidget(
            text: "description...",
            fontSize: 14,
          ),
        ],
      ),
    );
  }
}
