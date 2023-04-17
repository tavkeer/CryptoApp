// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:crypto_design/views/buying_page.dart';
import 'package:crypto_design/views/home_page/utils/custom_elevatedbutton.dart';

class PopularCoins extends StatelessWidget {
  final String path;
  final dynamic coin;
  final String coinImage;
  const PopularCoins({
    Key? key,
    required this.path,
    required this.coin,
    required this.coinImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.23,
      width: width - 20,
      margin: const EdgeInsets.only(right: 2.5, left: 2.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(
            path,
          ),
          fit: BoxFit.cover,
          opacity: 0.15,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    leading: CircleAvatar(
                      child: Image.asset(
                        coinImage,
                      ),
                    ),
                    title: Text(
                      coin.name.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '${change90d(coin.percentChange90d)}%\n',
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                        ),
                      ),
                      const TextSpan(
                        text: '      in the last 90 days',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Last Price\n',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: toUSD(coin.price),
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                  width: width * 0.3,
                  child: CustomElevatedbutton(
                    backgroundColor: Colors.amber,
                    textColor: Colors.black,
                    text: "Buy Now",
                    ontap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BuyingPage(),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  //functions for string manuplation
  String change90d(double? string) {
    //convert string to double
    String text = string!.toStringAsFixed(2);

    //add a positive sign as it is not given by API
    if (!text.startsWith("-")) {
      text = "+$text";
    }

    //return the formated text
    return text;
  }

  String toUSD(double? number) {
    // Convert number to a string with two decimal places
    String numberString = number!.toStringAsFixed(2);

    // Split the number into whole and decimal parts
    List<String> parts = numberString.split(".");

    // Add commas to the whole part
    String whole = parts[0];
    String formattedWhole = "";
    for (int i = whole.length - 1, j = 0; i >= 0; i--, j++) {
      if (j != 0 && j % 3 == 0) {
        formattedWhole = ",$formattedWhole";
      }
      formattedWhole = whole[i] + formattedWhole;
    }

    // Combine the whole and decimal parts with the USD symbol
    return "\$$formattedWhole.${parts[1]}";
  }
}
