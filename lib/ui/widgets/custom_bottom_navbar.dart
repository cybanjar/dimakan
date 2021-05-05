part of 'widgets.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;
  final String iconHome = 'assets/Home.svg';

  CustomBottomNavbar({this.selectedIndex, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/icon_left.png'))),
          ),
        ],
      ),
    );
  }
}
