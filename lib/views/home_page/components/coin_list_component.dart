import 'package:crypto_design/screens.dart';
import 'package:fl_chart/fl_chart.dart';

class CoinComponent extends StatelessWidget {
  final double height;
  final double width;
  final dynamic coin;
  final String coinImage;
  final bool showPercent;
  const CoinComponent({
    Key? key,
    required this.height,
    required this.width,
    required this.coin,
    required this.coinImage,
    this.showPercent = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color upOrDown = Colors.green;

    //functions for string manuplation
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

    String change24h(double? string) {
      String ret;
      //convert string to double
      ret = string!.toStringAsFixed(2);

      //add a positive sign as it is not given by API
      if (!ret[0].startsWith("-")) {
        ret = "+$ret";
      } else {
        upOrDown = Colors.red;
      }

      //return the formated text
      return ret;
    }

    //actual returning container
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsPage(
            coin: coin,
            lineColor: Colors.pink,
            data: getChartData(coin.m as Map<String, dynamic>),
          ),
        ),
      ),
      child: Container(
        height: height * 0.075,
        width: width,
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
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
                subtitle: Text(
                  coin.symbol.toString(),
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            (showPercent)
                ? RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${change24h(coin.percentChange24h)}%\n',
                          style: TextStyle(
                            fontSize: 17,
                            color: upOrDown,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                          ),
                        ),
                        TextSpan(
                          text: toUSD(coin.price),
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                : Text(
                    toUSD(coin.price),
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  List<FlSpot> getChartData(Map<String, dynamic> priceHistory) {
    final List<FlSpot> data = [];

    for (var entry in priceHistory.entries) {
      final timestamp =
          DateTime.parse(entry.key).millisecondsSinceEpoch.toDouble();
      final price = entry.value.toDouble();
      data.add(FlSpot(timestamp, price));
    }

    return data;
  }
}
