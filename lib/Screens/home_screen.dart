import 'package:ebookapp/Widgets/reading_cart_list.dart';
import 'package:ebookapp/Widgets/two_side_rounded_button.dart';
import 'package:flutter/material.dart';
import '../consttants.dart';
import '../Widgets/book_rating.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/main_page_bg.png'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: [
                          TextSpan(
                            text: 'What are you\nreading ',
                          ),
                          TextSpan(
                            text: 'today?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        ReadingListCard(
                          image: 'assets/images/book-1.png',
                          title: 'Crushing & Influence',
                          auth: 'Gary Venchuck',
                          rating: 4.9,
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen()
                              ),
                            );
                          },
                        ),
                        ReadingListCard(
                          image: 'assets/images/book-2.png',
                          title: 'Top Ten Business Hacks',
                          auth: 'Herman Joel',
                          rating: 7.2,
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen()
                              ),
                            );
                          },
                        ),
                        SizedBox(width: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headline4,
                            children: [
                              TextSpan(
                                text: 'Best of the ',
                              ),
                              TextSpan(
                                text: 'day',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        bestOftheDayCard(size, context),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headline4,
                            children: [
                              TextSpan(
                                text: 'Continue ',
                              ),
                              TextSpan(
                                text: 'reading...',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: Color(0xFFD3D3D3).withOpacity(0.84),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 30, right: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Crushing & Influence',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'Gary Venchuk',
                                                style: TextStyle(color: kLightBlackColor),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomRight,
                                                child: Text(
                                                  'Chapter 7 of 10',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                            ],
                                          ),
                                        ),
                                        Image.asset('assets/images/book-1.png', width: 55),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: size.width * 0.65,
                                  decoration: BoxDecoration(
                                    color: kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOftheDayCard(Size size, BuildContext context) {
    return Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: double.infinity,
                  height: 205,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.only(left: 24, top: 24, right: size.width * 0.35),
                          height: 185,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFEAEAEA).withOpacity(0.45),
                            borderRadius: BorderRadius.circular(29),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'New York Time Best For 11th March 2020',
                                style: TextStyle(
                                  fontSize: 9,
                                  color: kLightBlackColor,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'How The Win \nFriends & Influence',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              SizedBox(height: 5),
                              Text('Gary Venchuck', style: TextStyle(color: kLightBlackColor)),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  BookRating(score: 4.9),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      'When the earth was flat and everyone wanted to win the game',
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: kLightBlackColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Image.asset(
                          'assets/images/book-3.png',
                          width: size.width * 0.37,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: SizedBox(
                          height: 40,
                          width: size.width * 0.3,
                          child: TwoSideRoundedButton(
                            text: 'Read',
                            radius: 24,
                            press: (){},
                          ),
                        ),
                      ),
                    ],
                  ),
                );
  }
}

