import 'package:crypto_design/screens.dart';

class ProfileItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const ProfileItem({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.grey.withOpacity(0.7),
          size: 35,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.grey.withOpacity(0.7),
        ),
      ),
    );
  }
}
