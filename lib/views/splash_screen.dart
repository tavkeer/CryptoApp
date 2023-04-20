import 'package:crypto_design/screens.dart';
import 'package:crypto_design/views/onboarding_page/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    onBoardingMove();
    super.initState();
  }

  onBoardingMove() {
    Future.delayed(const Duration(seconds: 2)).whenComplete(
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoardingPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
