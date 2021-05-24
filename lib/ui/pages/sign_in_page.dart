part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  final String iconLock = 'assets/Lock.svg';

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Sign In',
      child: Column(
        children: [
          SvgPicture.asset(
            iconLock,
            placeholderBuilder: (context) => CircularProgressIndicator(),
            height: 128.0,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              'Email address',
              style: greyFontStyle.copyWith(fontSize: 16),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Input your email address'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              'Password address',
              style: greyFontStyle.copyWith(fontSize: 16),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Input your password'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 24),
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading
                ? loadingIndicator
                : ElevatedButton(
                    child: Text('Login'),
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });

                      await context.bloc<UserCubit>().signIn(
                          emailController.text, passwordController.text);
                      UserState state = context.bloc<UserCubit>().state;

                      if (state is UserLoaded) {
                        context.bloc<FoodCubit>().getFoods();
                        context.bloc<TransactionCubit>().getTransaction();
                        Get.to(MainPage());
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        primary: mainColor,
                        elevation: 0,
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 16),
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading
                ? SpinKitDoubleBounce(
                    size: 45,
                    color: mainColor,
                  )
                : ElevatedButton(
                    child: Text('Register'),
                    onPressed: () {
                      Get.to(SignUpPage());
                    },
                    style: ElevatedButton.styleFrom(
                        primary: greyColor,
                        elevation: 0,
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
          )
        ],
      ),
    );
  }
}
