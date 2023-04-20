import 'package:crypto_design/screens.dart';

class TradingPage extends StatelessWidget {
  const TradingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Text(
                "Trade Crypto",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const TradingListItem(
                icon: Icons.add,
                title: 'Buy',
                subtitle: 'Buy crypto with INR',
              ),
              TradingListItem(
                icon: Icons.arrow_downward,
                title: 'Deposit',
                subtitle: 'Deposit with flat and crypto currency',
                ontap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DepositePage(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
