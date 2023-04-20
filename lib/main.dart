import 'screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Crypto price tracker",
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: "Montserrat",
        scaffoldBackgroundColor: backgroundPrimary,
      ),
      home: const SplashScreen(),
    );
  }
}
