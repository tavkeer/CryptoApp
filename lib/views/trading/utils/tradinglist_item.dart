import 'package:crypto_design/screens.dart';

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
