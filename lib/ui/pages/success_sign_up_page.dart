part of 'pages.dart';

class SucessSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "Yeay! Completed",
        subtitle: 'Now you are able to order \nsome foods as a self reward',
        picturePath: 'https://i.imgur.com/Mm6X5PM.png',
        buttonTitle1: 'Find Foods',
        buttonTap1: () {},
      ),
    );
  }
}
