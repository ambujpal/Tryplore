import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:tryplore_shop/common/common.dart';

class ReviewList extends StatefulWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  State<ReviewList> createState() => _ReviewListState();
}

class _ReviewListState extends State<ReviewList> {
  List<String> list = ['Maria Joh'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
        itemBuilder: (context, index){
      return Row(
        children: [
          const CircleAvatar(
            radius: 33,
            backgroundImage: AssetImage('assets/images/manbeard-is.jpg'),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(list[index], style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
              SmoothStarRating(
                starCount: 5,
                rating: 3.5,
                size: 25,
                color: Colors.orange,
                borderColor: Colors.orange,
              ),
              Text('Lorem ipsum is simply dummy text  of the \n printing and type setting industry', style: AppTextStyle.bodyM(fSize: 15,txtColor: AppColors.greyDark),)
      ],
            ),
        ],
      );
    });
  }
}
