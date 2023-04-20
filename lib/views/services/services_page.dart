import 'package:crypto_design/screens.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: SizedBox(
          // height: height,
          width: width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Container(
                  height: height * 0.2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: backgroundPrimary,
                    image: const DecorationImage(
                        alignment: Alignment.bottomRight,
                        image: AssetImage('assets/coins.png'),
                        fit: BoxFit.contain),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Explore Our\nAdvance Service",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                        fontSize: 33,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Best investment for beginners to deposit and earn daily rewards! Allow to redeem anytime you want.',
                  style: TextStyle(
                    color: Colors.grey.withOpacity(0.8),
                  ),
                ),
                const SizedBox(height: 15),
                const CoinListItem(
                  title: "Bitcoin",
                  path: "assets/coins/bitcoin.png",
                  percentage: "1.03",
                ),
                const CoinListItem(
                  title: "Ethereum",
                  path: "assets/coins/eth.png",
                  percentage: "1.03",
                ),
                const CoinListItem(
                  title: "Solana",
                  path: "assets/coins/solana.png",
                  percentage: "1.03",
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: const Color(0xFF223146),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    'Search More Coins',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                ///spot Trading section
                Text(
                  'Start Spot Trading',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    height: height * 0.3,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/spot.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                ///spot Future trading
                Text(
                  'Start Future Trading',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    height: height * 0.3,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/future.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CoinListItem extends StatelessWidget {
  final String title;
  final String path;
  final String percentage;
  const CoinListItem({
    Key? key,
    required this.title,
    required this.path,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF223146),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          leading: CircleAvatar(
            child: Image.asset(path),
          ),
          title: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
          subtitle: Text(
            "$percentage%",
            style: const TextStyle(color: Colors.white),
          ),
          trailing: const CircleAvatar(
            backgroundColor: Colors.amber,
            child: Icon(Icons.arrow_right_alt),
          ),
        ),
      ),
    );
  }
}
