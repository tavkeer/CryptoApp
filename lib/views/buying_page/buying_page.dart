import 'package:crypto_design/screens.dart';

class BuyingPage extends StatelessWidget {
  final dynamic bitcoin;
  final dynamic ethereum;
  final dynamic bnb;
  final dynamic cardano;
  final dynamic litecoin;
  final dynamic dog;
  final dynamic solana;
  const BuyingPage({
    Key? key,
    required this.bitcoin,
    required this.ethereum,
    required this.bnb,
    required this.cardano,
    required this.litecoin,
    required this.dog,
    required this.solana,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundPrimary,
        elevation: 0,
        title: const Text(
          "Choose Crypto",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Container(
              // margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  color: const Color(0xFF1D293B),
                  borderRadius: BorderRadius.circular(24)),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Colors.grey.withOpacity(0.5),
                    fontWeight: FontWeight.bold,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            //text
            Text(
              "Top Searches",
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.w700,
                fontSize: 19,
              ),
            ),
            const SizedBox(height: 20),

            //list of coins
            //coin List
            Expanded(
              child: ListView(
                children: [
                  //bitcoin
                  CoinComponent(
                    height: height,
                    width: width,
                    coin: bitcoin,
                    coinImage: 'assets/coins/bitcoin.png',
                    showPercent: false,
                  ),

                  //ethereum
                  CoinComponent(
                    height: height,
                    width: width,
                    coin: ethereum,
                    coinImage: 'assets/coins/eth.png',
                    showPercent: false,
                  ),

                  //bnb
                  CoinComponent(
                    height: height,
                    width: width,
                    coin: bnb,
                    coinImage: 'assets/coins/bnb.png',
                    showPercent: false,
                  ),

                  //cardano
                  CoinComponent(
                    height: height,
                    width: width,
                    coin: cardano,
                    coinImage: 'assets/coins/cardano.png',
                    showPercent: false,
                  ),

                  //dogcoin
                  CoinComponent(
                    height: height,
                    width: width,
                    coin: dog,
                    coinImage: 'assets/coins/dogecoin.png',
                    showPercent: false,
                  ),

                  //solana
                  CoinComponent(
                    height: height,
                    width: width,
                    coin: solana,
                    coinImage: 'assets/coins/solana.png',
                    showPercent: false,
                  ),

                  //litecoin
                  CoinComponent(
                    height: height,
                    width: width,
                    coin: litecoin,
                    coinImage: 'assets/coins/litecoin.png',
                    showPercent: false,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
