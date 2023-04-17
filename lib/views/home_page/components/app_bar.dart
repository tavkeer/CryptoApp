import 'package:crypto_design/screens.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundPrimary,
      elevation: 0,
      leading: CircleAvatar(
        backgroundColor: Colors.grey.withOpacity(0.5),
        child: Lottie.asset(
          "assets/profile.json",
        ),
      ),
      actions: [
        Image.asset(
          'assets/search.png',
          color: const Color(0xFF9E9E9E).withOpacity(0.5),
        ),
        const SizedBox(width: 10),
        Image.asset(
          'assets/qr.png',
          color: Colors.grey.withOpacity(0.5),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
