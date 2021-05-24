part of 'pages.dart';

class FoodDetailsPage extends StatefulWidget {
  final Function onPressButtonBack;
  final Transaction transaction;

  FoodDetailsPage({this.onPressButtonBack, this.transaction});

  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: mainColor,
          ),
          SafeArea(
              child: Container(
            color: Colors.white,
          )),
          SafeArea(
              child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(widget.transaction.food.picturePath),
                    fit: BoxFit.cover)),
          )),
          SafeArea(
              child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          if (widget.onPressButtonBack != null) {
                            widget.onPressButtonBack();
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(4),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black38),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 180),
                    padding: EdgeInsets.symmetric(
                        vertical: 26, horizontal: defaultMargin),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width - 134,
                                  child: Text(
                                    widget.transaction.food.name,
                                    style: blackTextFont2,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                RatingStars(widget.transaction.food.rate),
                              ],
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        quantity = max(1, quantity - 1);
                                      });
                                    },
                                    child: Icon(
                                      Icons.remove_circle_outline,
                                      color: mainColor,
                                    )),
                                SizedBox(
                                    width: 50,
                                    child: Text(
                                      quantity.toString(),
                                      textAlign: TextAlign.center,
                                      style: blackTextFont2,
                                    )),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        quantity = min(999, quantity + 1);
                                      });
                                    },
                                    child: Icon(
                                      Icons.add_circle_outline,
                                      color: mainColor,
                                    )),
                              ],
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 16, 0, 24),
                          child: Text(
                            widget.transaction.food.description,
                            style: greyFontStyle,
                          ),
                        ),
                        Text(
                          'Ingredients : ',
                          style: blackTextFont2,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 8, 0, 16),
                          child: Text(
                            widget.transaction.food.ingredients,
                            style: greyFontStyle,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Total Price: ",
                                    style:
                                        greyFontStyle.copyWith(fontSize: 13)),
                                Text(
                                  NumberFormat.currency(
                                          locale: 'id-ID',
                                          symbol: 'IDR',
                                          decimalDigits: 0)
                                      .format(quantity *
                                          widget.transaction.food.price),
                                  style: blackTextFont2.copyWith(fontSize: 18),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 163,
                              height: 45,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: mainColor),
                                  child: Text(
                                    "Order Now",
                                    style: whiteFontStyle.copyWith(
                                        fontWeight: FontWeight.w600),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
