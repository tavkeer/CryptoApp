// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:crypto_design/screens.dart';

class CheckoutPage extends StatelessWidget {
  final dynamic coin;
  final String coinImage;
  const CheckoutPage({
    Key? key,
    required this.coin,
    required this.coinImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundPrimary,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  leading: CircleAvatar(
                    child: Image.asset(
                      coinImage,
                    ),
                  ),
                  title: Text(
                    "Buy ${coin.symbol.toString()}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Text(
                "I want to pay",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFF1D293B),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 15),
                      hintText: "Please enter amount",
                      hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                      ),
                      border: InputBorder.none,
                      suffixText: "INR",
                      suffixStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "100.00 - 2000000.00 INR",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEEC73A),
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Buy",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              const SizedBox(height: 35)
            ],
          ),
        ),
      ),
    );
  }
}
