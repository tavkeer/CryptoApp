import 'package:crypto_design/screens.dart';

class HeaderContainer extends StatelessWidget {
  final dynamic bitcoin;
  final dynamic ethereum;
  final dynamic bnb;
  final dynamic cardano;
  final dynamic litecoin;
  final dynamic dog;
  final dynamic solana;
  const HeaderContainer({
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
    return Container(
      height: height * 0.23,
      width: width - 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        color: const Color(0xFF585656).withOpacity(0.2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Get started with crypto",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
                Image.asset(
                  'assets/coins.png',
                  fit: BoxFit.contain,
                  height: height * 0.05,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomElevatedbutton(
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  textColor: Colors.white.withOpacity(0.7),
                  text: "Deposite",
                  ontap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DepositePage(),
                    ),
                  ),
                ),
                CustomElevatedbutton(
                  backgroundColor: Colors.amber,
                  textColor: Colors.black.withOpacity(0.7),
                  text: "Buy Crypto",
                  ontap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BuyingPage(
                          bitcoin: bitcoin,
                          ethereum: ethereum,
                          bnb: bnb,
                          cardano: cardano,
                          litecoin: litecoin,
                          dog: dog,
                          solana: solana),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
