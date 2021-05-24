part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  final Transaction transaction;

  PaymentPage({this.transaction});

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Payment',
      onBackButtonPressed: () {},
      backColor: 'FAFAFC'.toColor(),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item Ordered',
                  style: blackTextFont3,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          margin: EdgeInsets.only(right: defaultMargin),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image:
                                    NetworkImage(transaction.food.picturePath),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width -
                                  2 * defaultMargin -
                                  60 -
                                  12 -
                                  78,
                              child: Text(
                                transaction.food.name,
                                style: blackTextFont2,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                            Text(
                                NumberFormat.currency(
                                  locale: 'id-ID',
                                  symbol: 'IDR ',
                                  decimalDigits: 0,
                                ).format(transaction.food.price),
                                style: greyFontStyle),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      '${transaction.quantity} item(s)',
                      style: blackTextFont2.copyWith(fontSize: 16),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: defaultMargin, bottom: 8),
                  child: Text(
                    'Details Transaction',
                    style: blackTextFont3.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        transaction.food.name,
                        style: greyFontStyle,
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                          locale: 'id-ID',
                          symbol: 'IDR',
                          decimalDigits: 0,
                        ).format(transaction.quantity * transaction.food.price),
                        style: blackTextFont3,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        'Driver',
                        style: greyFontStyle,
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                          locale: 'id-ID',
                          symbol: 'IDR ',
                          decimalDigits: 0,
                        ).format(50000),
                        style: blackTextFont3,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        'Tax 10%',
                        style: greyFontStyle,
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                          locale: 'id-ID',
                          symbol: 'IDR ',
                          decimalDigits: 0,
                        ).format(transaction.quantity *
                            (transaction.food.price * 0.1)),
                        style: blackTextFont3,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        'Total',
                        style: greyFontStyle,
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                          locale: 'id-ID',
                          symbol: 'IDR',
                          decimalDigits: 0,
                        ).format(transaction.food.price *
                                transaction.quantity *
                                1.1 +
                            50000),
                        style: blackTextFont2.copyWith(
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: defaultMargin, bottom: 8),
                  child: Text(
                    'Details Transaction',
                    style: blackTextFont3.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Name',
                      style: greyFontStyle,
                    ),
                    SizedBox(
                      width:
                          MediaQuery.of(context).size.width / 2 - defaultMargin,
                      child: Text(
                        'Syamsul Amin',
                        style: blackTextFont3,
                        textAlign: TextAlign.right,
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Phone No.',
                      style: greyFontStyle,
                    ),
                    SizedBox(
                      width:
                          MediaQuery.of(context).size.width / 2 - defaultMargin,
                      child: Text(
                        '087830120049',
                        style: blackTextFont3,
                        textAlign: TextAlign.right,
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Address',
                      style: greyFontStyle,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        'Gg. Madrasah No.18a Kalibata Jakarta Selatan asdfjasld;fjlk',
                        style: blackTextFont3,
                        textAlign: TextAlign.right,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'House No.',
                      style: greyFontStyle,
                    ),
                    SizedBox(
                      width:
                          MediaQuery.of(context).size.width / 2 - defaultMargin,
                      child: Text(
                        'No.18a',
                        style: blackTextFont3,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'City',
                      style: greyFontStyle,
                    ),
                    SizedBox(
                      width:
                          MediaQuery.of(context).size.width / 2 - defaultMargin,
                      child: Text(
                        'South Jakarta',
                        style: blackTextFont3,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(primary: mainColor),
                      child: Text(
                        "Checkout Now",
                        style: whiteFontStyle.copyWith(
                            fontWeight: FontWeight.w600),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
