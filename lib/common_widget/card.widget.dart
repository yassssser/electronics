import 'package:electronic/common_widget/text.widget.dart';
import 'package:electronic/product/product_detail.page.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(
            width: 5,
          ),
          _buildcard(context, "ipad", "Ipad Pro", "Apple", 924),
          const SizedBox(
            width: 15,
          ),
          _buildcard(context, "iphone", "Iphone 14 pro", "Apple", 924),
          const SizedBox(
            width: 15,
          ),
          _buildcard(context, "ipad", "Ipad Pro", "Apple", 924),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }

  Widget _buildcard(BuildContext context, String image, String title,
      String subTitle, int price) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProductPage(
                    image: image,
                    price: price,
                    subtitle: subTitle,
                    title: title,
                  ))),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/$image.png",
                ),
                TextWidget(
                  text: title,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                TextWidget(
                  text: subTitle,
                  fontSize: 12,
                  textColor: Colors.grey,
                ),
                ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                  title: TextWidget(
                    text: "$price £",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    paddingLeft: 0,
                  ),
                  trailing: Image.asset("assets/icons/plus.png"),
                )
              ]),
        ),
      ),
    );
  }
}
