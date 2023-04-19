import 'package:crypto_design/screens.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _controller = PageController();
  final PageStorageKey _homeKey = const PageStorageKey('homePage');
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _controller.initialPage,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(
          color: Colors.grey,
        ),
        selectedItemColor: Colors.white,
        selectedLabelStyle: const TextStyle(color: Colors.white),
        showUnselectedLabels: true,
        onTap: (index) => setState(() => _controller.jumpToPage(index)),
        items: [
          BottomNavigationBarItem(
            backgroundColor: backgroundPrimary,
            icon: Icon(
              Icons.bar_chart_rounded,
              color: Colors.white.withOpacity(0.8),
            ),
            label: 'Markets',
          ),
          BottomNavigationBarItem(
            backgroundColor: backgroundPrimary,
            icon: Icon(
              Icons.bar_chart,
              color: Colors.white.withOpacity(0.8),
            ),
            label: 'Trade',
          ),
          BottomNavigationBarItem(
            backgroundColor: backgroundPrimary,
            icon: Icon(
              Icons.wallet_outlined,
              color: Colors.white.withOpacity(0.8),
            ),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            backgroundColor: backgroundPrimary,
            icon: Icon(
              Icons.wallet_outlined,
              color: Colors.white.withOpacity(0.8),
            ),
            label: 'Portfolio',
          ),
        ],
      ),
      body: PageView(
        controller: _controller,
        children: [
          HomePage(key: _homeKey),
          const TradingPage(),
          const ServicesPage(),
          const PortfolioPage(),
        ],
      ),
    );
  }
}
