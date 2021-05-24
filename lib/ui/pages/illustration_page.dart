part of 'pages.dart';

class IllustrationPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String picturePath;
  final String buttonTitle1;
  final String buttonTitle2;
  final Function buttonTap1;
  final Function buttonTap2;

  IllustrationPage(
      {@required this.title,
      @required this.subtitle,
      @required this.picturePath,
      @required this.buttonTitle1,
      this.buttonTitle2,
      @required this.buttonTap1,
      this.buttonTap2});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 166,
            margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(picturePath), fit: BoxFit.cover),
            ),
          ),
          Text(
            title,
            style: blackTextFont3.copyWith(
                fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            subtitle,
            style: greyFontStyle.copyWith(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 12),
            width: 200,
            height: 45,
            child: ElevatedButton(
                onPressed: buttonTap1,
                style: ElevatedButton.styleFrom(
                  primary: mainColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  buttonTitle1,
                  style: whiteFontStyle.copyWith(fontWeight: FontWeight.w500),
                )),
          ),
          (buttonTap2 == null)
              ? SizedBox()
              : SizedBox(
                  width: 200,
                  height: 45,
                  child: ElevatedButton(
                      onPressed: buttonTap2,
                      style: ElevatedButton.styleFrom(
                        primary: '8D92A3'.toColor(),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        buttonTitle2 ?? 'title',
                        style: whiteFontStyle.copyWith(
                            fontWeight: FontWeight.w500),
                      )),
                )
        ],
      ),
    );
  }
}
