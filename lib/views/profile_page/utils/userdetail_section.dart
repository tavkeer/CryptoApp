import 'package:crypto_design/screens.dart';

class UserDetailsSection extends StatelessWidget {
  final double height;
  final double width;
  const UserDetailsSection({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: width,
      child: ListTile(
        contentPadding: const EdgeInsets.all(0),
        leading: CircleAvatar(
          backgroundColor: Colors.grey.withOpacity(0.5),
          child: Lottie.asset(
            "assets/profile.json",
          ),
        ),
        title: Text(
          'ID: 1234567ABC',
          style: TextStyle(
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
        subtitle: Text(
          'Binance-User12AB12',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white.withOpacity(0.8),
            height: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
    );
  }
}
