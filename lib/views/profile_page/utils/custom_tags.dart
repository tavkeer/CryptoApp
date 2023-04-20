import 'package:crypto_design/screens.dart';

class CustomTags extends StatelessWidget {
  const CustomTags({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.2),
            child: const Padding(
              padding: EdgeInsets.all(7.0),
              child: Icon(
                Icons.calendar_month_outlined,
                color: Colors.amber,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.2),
            child: const Padding(
              padding: EdgeInsets.all(7.0),
              child: Icon(
                Icons.bookmark_add_sharp,
                color: Colors.amber,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.2),
            child: const Padding(
              padding: EdgeInsets.all(7.0),
              child: Icon(
                Icons.play_arrow_rounded,
                color: Colors.amber,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.2),
            child: const Padding(
              padding: EdgeInsets.all(7.0),
              child: Icon(
                Icons.notifications_on,
                color: Colors.amber,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
