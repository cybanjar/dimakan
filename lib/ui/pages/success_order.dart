part of 'pages.dart';

class SucessOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "You've made order",
        subtitle: 'Just stay at home while we are \npreparing your best foods',
        picturePath: 'https://i.imgur.com/jtHIitN.png',
        buttonTitle1: 'Order Other Foods',
        buttonTap1: () {},
        buttonTitle2: 'View My Order',
        buttonTap2: () {},
      ),
    );
  }
}
