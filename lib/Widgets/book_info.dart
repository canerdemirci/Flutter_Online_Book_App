import 'package:flutter/material.dart';
import '../consttants.dart';
import './rounded_button.dart';
import './book_rating.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Crushing &',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'Influence',
                style: Theme.of(context).textTheme.headline5.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'When the earth was flat and everyone wanted to the best and people and winning with an a game with all the things you have.',
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                        SizedBox(height: 5),
                        RoundedButton(
                          text: 'Read',
                          verticalPadding: 10,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      BookRating(score: 4.9),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset('assets/images/book-1.png', height: 200),
      ],
    );
  }
}