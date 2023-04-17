import 'package:crypto_design/screens.dart';

class DetailsPage extends StatelessWidget {
  final String text;
  const DetailsPage({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
