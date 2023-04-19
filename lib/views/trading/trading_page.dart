// ignore_for_file: public_member_api_docs, sort_constructors_first
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
                subtitle: 'Deposit with flat and crupto currency',
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

class TradingListItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final void Function()? ontap;
  const TradingListItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SizedBox(
          height: 55,
          child: ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.amber,
              child: Icon(
                icon,
                size: 30,
              ),
            ),
            title: Text(
              title,
              style: const TextStyle(
                fontSize: 19,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                height: 1.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
