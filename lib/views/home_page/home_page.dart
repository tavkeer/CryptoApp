import 'package:crypto_design/screens.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Coin bitcoin;
  late Coin bnb;
  late Coin dog;
  late Coin solana;
  late Coin cardano;
  late Coin ethereum;
  late Coin litecoin;

  bool isloading = true;

  @override
  void initState() {
    fetchdata();
    super.initState();
  }

  fetchdata() async {
    bitcoin = await fetchCoin("1");
    bnb = await fetchCoin("1839");
    dog = await fetchCoin("74");
    solana = await fetchCoin("5426");
    cardano = await fetchCoin("2010");
    ethereum = await fetchCoin("1027");
    litecoin = await fetchCoin("2");
    setState(() {
      if (bitcoin.symbol == null || ethereum.symbol == null) {
        isloading = true;
      } else {
        isloading = false;
      }
    });
    // Timer.periodic(const Duration(seconds: 100), (timer) async {
    //   bitcoin = await fetchCoin("1");
    //   bnb = await fetchCoin("1839");
    //   dog = await fetchCoin("74");
    //   solana = await fetchCoin("5426");
    //   cardano = await fetchCoin("2010");
    //   ethereum = await fetchCoin("1027");
    //   litecoin = await fetchCoin("2");
    //   debugPrint(bitcoin.name);
    //   setState(() {
    //     if (bitcoin.symbol == null || ethereum.symbol == null) {
    //       isloading = true;
    //     } else {
    //       isloading = false;
    //     }
    //   });
    // });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundPrimary,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 30),
        child: HomePageAppBar(),
      ),
      body: (isloading)
          ? Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey,
                color: backgroundPrimary,
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),

                  //headerContainer
                  HeaderContainer(
                      bitcoin: bitcoin,
                      ethereum: ethereum,
                      bnb: bnb,
                      cardano: cardano,
                      litecoin: litecoin,
                      dog: dog,
                      solana: solana),
                  const SizedBox(height: 20),

                  //text
                  Text(
                    "Express Checkout",
                    style: TextStyle(
                      fontSize: height * 0.025,
                      fontWeight: FontWeight.w600,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(height: 10),

                  //popular coins at glance
                  SizedBox(
                    height: height * 0.23,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        PopularCoins(
                          coin: ethereum,
                          path: "assets/eth_back.jpeg",
                          coinImage: 'assets/coins/eth.png',
                        ),
                        PopularCoins(
                          coin: bitcoin,
                          path: 'assets/bitcoinback.jpeg',
                          coinImage: 'assets/coins/bitcoin.png',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),

                  //text
                  Text(
                    "Coins",
                    style: TextStyle(
                      fontSize: height * 0.025,
                      fontWeight: FontWeight.w600,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(height: 5),

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
                        ),

                        //ethereum
                        CoinComponent(
                          height: height,
                          width: width,
                          coin: ethereum,
                          coinImage: 'assets/coins/eth.png',
                        ),

                        //bnb
                        CoinComponent(
                          height: height,
                          width: width,
                          coin: bnb,
                          coinImage: 'assets/coins/bnb.png',
                        ),

                        //cardano
                        CoinComponent(
                          height: height,
                          width: width,
                          coin: cardano,
                          coinImage: 'assets/coins/cardano.png',
                        ),

                        //dogcoin
                        CoinComponent(
                          height: height,
                          width: width,
                          coin: dog,
                          coinImage: 'assets/coins/dogecoin.png',
                        ),

                        //solana
                        CoinComponent(
                          height: height,
                          width: width,
                          coin: solana,
                          coinImage: 'assets/coins/solana.png',
                        ),

                        //litecoin
                        CoinComponent(
                          height: height,
                          width: width,
                          coin: litecoin,
                          coinImage: 'assets/coins/litecoin.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
