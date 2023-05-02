import 'package:crypto_design/screens.dart';
import 'package:http/http.dart' as http;

class Coin {
  int? id;
  String? name;
  String? symbol;
  double? price;
  double? percentChange1h;
  double? percentChange24h;
  double? percentChange90d;
  double? exchangeRates;
  double? marketCap;
  final Map<String, dynamic>? map;

  Coin({
    this.id,
    this.name,
    this.symbol,
    this.price,
    this.percentChange1h,
    this.percentChange24h,
    this.percentChange90d,
    this.exchangeRates,
    this.marketCap,
    this.map,
  });

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
      id: json['id'],
      name: json['name'],
      symbol: json['symbol'],
      price: json['quote']['USD']['price'],
      percentChange1h: json['quote']['USD']['percent_change_1h'],
      percentChange24h: json['quote']['USD']['percent_change_24h'],
      percentChange90d: json['quote']['USD']['percent_change_90d'],
      exchangeRates: json['quote']['USD']['price'],
      marketCap: json['quote']['USD']['market_cap'],
      map: json['quote']['USD'],
    );
  }
}

Future<Coin> fetchCoin(String coinId) async {
  try {
    final response = await http.get(
      Uri.parse(
          'https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?id=$coinId'),
      headers: {
        // 'X-CMC_PRO_API_KEY': 'Your own Api key',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      Coin coin = Coin.fromJson(jsonResponse['data'][coinId]);
      return coin;
    }
  } catch (e) {
    throw Exception(e.toString());
  }
  return Coin(
    id: 0,
    name: '    ',
    price: 0,
    percentChange1h: 0,
    percentChange24h: 0,
    percentChange90d: 0,
    exchangeRates: 0,
    marketCap: 0,
    map: {},
  );
}
