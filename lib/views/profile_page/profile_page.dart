// ignore_for_file: public_member_api_docs, sort_constructors_first
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
              SizedBox(
                width: width,
                child: Row(
                  children: [
                    const CustomTags(
                      title: "Verified",
                      icon: Icons.done,
                      color: Colors.green,
                    ),
                    const SizedBox(width: 15),
                    CustomTags(
                      title: "Regular",
                      icon: Icons.diamond,
                      color: Colors.white.withOpacity(0.8),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTags extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  const CustomTags({
    Key? key,
    required this.title,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 70,
      color: color.withOpacity(0.4),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Icon(
            icon,
            color: color,
            size: 10,
          ),
          const SizedBox(width: 2),
          Text(
            title,
            style: TextStyle(
              color: color,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

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
      height: height * 0.2,
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
