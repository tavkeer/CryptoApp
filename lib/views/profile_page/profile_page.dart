import 'package:crypto_design/screens.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundPrimary,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey.withOpacity(0.8),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Icon(
            Icons.headset_mic_rounded,
            color: Colors.grey.withOpacity(0.6),
          ),
          const SizedBox(width: 20),
          Icon(
            Icons.settings,
            color: Colors.grey.withOpacity(0.6),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              UserDetailsSection(
                height: height,
                width: width,
              ),
              const CustomTags(),
              const SizedBox(height: 10),
              Divider(
                height: 1,
                color: Colors.white.withOpacity(0.5),
              ),
              const ProfileItem(
                title: "Binance Pro",
                icon: Icons.diamond_outlined,
              ),
              const ProfileItem(
                title: "Referral",
                icon: Icons.person_add_alt,
              ),
              const ProfileItem(
                title: "Payment Methods",
                icon: Icons.currency_rupee_outlined,
              ),
              const ProfileItem(
                title: "Security",
                icon: Icons.lock_outline_rounded,
              ),
              const ProfileItem(
                title: "Gift Card",
                icon: Icons.card_giftcard,
              ),
              const ProfileItem(
                title: "My Gifts",
                icon: Icons.card_giftcard,
              ),
              const ProfileItem(
                title: "Clear Cache",
                icon: Icons.delete,
              ),
              const ProfileItem(
                title: "Help & Support",
                icon: Icons.help,
              ),
              const ProfileItem(
                title: "Share the app",
                icon: Icons.share,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Please do not disclose SMS and Google Authentication codes to anyone, including Binance customer support",
                  style: TextStyle(
                    color: Colors.grey.withOpacity(0.8),
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 120),
            ],
          ),
        ),
      ),
    );
  }
}
