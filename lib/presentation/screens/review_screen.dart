import 'package:flutter/material.dart';

class ReviewScreen extends StatefulWidget {
  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reviews'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // navigate to a new page to write a review
            },
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Reviews (1000)'),
                Text('+'), // This could be an icon as well
              ],
            ),
          ),
          Divider(),
          // A single review widget can be built here and then referenced multiple times in the list
          ReviewWidget(
            reviewerName: 'Rabbil Hasan',
            rating: 8,
            reviewText:
            'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator',
          ),
          ReviewWidget(
            reviewerName: 'Rabbil Hasan',
            rating: 8,
            reviewText:
            'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator',
          ),
          // Add more ReviewWidget based on your data
        ],
      ),
    );
  }
}

class ReviewWidget extends StatelessWidget {
  final String reviewerName;
  final int rating;
  final String reviewText;

  const ReviewWidget({
    Key? key,
    required this.reviewerName,
    required this.rating,
    required this.reviewText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            reviewerName,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              for (int i = 0; i < rating; i++)
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
            ],
          ),
          Text(reviewText),
        ],
      ),
    );
  }
}