part of 'widgets.dart';

class FoodCard extends StatefulWidget {
  final Food food;

  FoodCard(this.food);

  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 210,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(spreadRadius: 3, blurRadius: 15, color: Colors.black26)
          ]),
      child: Column(
        children: [RatingStars(food.id)],
      ),
    );
  }
}
