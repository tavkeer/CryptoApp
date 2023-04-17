import 'package:crypto_design/screens.dart';

class CustomElevatedbutton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final void Function()? ontap;
  final String text;
  const CustomElevatedbutton({
    Key? key,
    required this.backgroundColor,
    required this.textColor,
    this.ontap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: Size(width * 0.4, height * 0.056),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: ontap,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
