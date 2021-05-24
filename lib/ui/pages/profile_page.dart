part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.white),
          SafeArea(
              child: Container(
            color: "FAFAFC".toColor(),
          )),
          SafeArea(
              child: ListView(
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.symmetric(vertical: defaultMargin),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(mockUser.picturePath))),
                    ),
                    Text(
                      mockUser.name.toUpperCase(),
                      style: blackTextFont1.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.2),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: defaultMargin),
                      child: Text(
                        mockUser.email,
                        style: greyFontStyle.copyWith(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8, top: defaultMargin),
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    CustomTabbar(
                      titles: ['Account', 'Food Market'],
                      selectedIndex: selectedIndex,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                    SizedBox(
                      height: defaultMargin,
                    ),
                    Column(
                      children: ((selectedIndex == 0)
                              ? [
                                  'Edit Profile',
                                  'Home Address',
                                  'Security',
                                  'Payment'
                                ]
                              : [
                                  'Rate App',
                                  'Help Center',
                                  'Privacy & Policy',
                                  'Term & Condition'
                                ])
                          .map((e) => Padding(
                                padding: EdgeInsets.only(
                                    bottom: 16,
                                    left: defaultMargin,
                                    right: defaultMargin),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      e,
                                      style: blackTextFont3,
                                    ),
                                    Icon(Icons.arrow_right)
                                  ],
                                ),
                              ))
                          .toList(),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              )
            ],
          ))
        ],
      ),
    );
  }
}
