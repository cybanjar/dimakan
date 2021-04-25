part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onBackButtonPressed;
  final Widget child;
  final Color backColor;

  GeneralPage(
      {this.title = "Title",
      this.subtitle = "subtitle",
      this.onBackButtonPressed,
      this.child,
      this.backColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        SafeArea(
            child: Container(
          color: backColor ?? "FAFAFC".toColor(),
        )),
        SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: defaultMargin),
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    width: double.infinity,
                    height: 80,
                    color: Colors.white,
                    child: Row(
                      children: [
                        onBackButtonPressed != null
                            ? Container(
                                margin: EdgeInsets.only(right: 16),
                                width: 24,
                                height: 24,
                                child:
                                    Icon(Icons.arrow_back, color: Colors.black))
                            : SizedBox(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(title,
                                style: blackTextFont.copyWith(fontSize: 20)),
                            Text(subtitle,
                                style: greyFontStyle.copyWith(fontSize: 16))
                          ],
                        )
                      ],
                    ),
                  ),
                  child ?? SizedBox()
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
