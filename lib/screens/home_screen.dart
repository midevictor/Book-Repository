// import 'package:book_app/constants.dart';
// import 'package:book_app/widgets/book_rating.dart';
import 'package:book_app/constants.dart';
import 'package:book_app/widgets/book_rating.dart';
import 'package:book_app/widgets/details.dart';
import 'package:book_app/widgets/reading_cart_list.dart';
import 'package:book_app/widgets/two_sided_rounded_buton.dart';
// import 'package:book_app/widgets/two_sided_rounded_buton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * .1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                        text: TextSpan(
                      style: Theme.of(context).textTheme.displayMedium,
                      children: const [
                        TextSpan(text: "What are you \n reading"),
                        TextSpan(
                            text: "today?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    )),
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(
                          image: "assets/images/book-1.png",
                          title: "Crushinh & Influence",
                          auth: "Gary Venuck",
                          rating: 4.9,
                          pressDetails: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailsScreen();

                              })
                            );
                          },
                          pressRead: (){},
                        ),
                       ReadingListCard(
                          image: "assets/images/book-2.png",
                          title: "Top-ten buisness Hacks",
                          auth: "Herman Joel",
                          rating: 4.6,
                          pressDetails: (){},
                          pressRead: (){},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            RichText(
                                text: TextSpan(
                              style: Theme.of(context).textTheme.displayLarge,
                              children: const [
                                TextSpan(text: "Best of the"),
                                TextSpan(
                                  text: "day",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )),
                            bestOfTheDayCard(size, context),
                            RichText(
                                text: TextSpan(
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
                                    children: const [
                                  TextSpan(text: "Continue"),
                                  TextSpan(
                                      text: "reading..",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))
                                ])),
                            SizedBox(height: 20),
                            // ignore: sized_box_for_whitespace
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
                                        color:
                                            Color(0xFFD3D3D3).withOpacity(.84),
                                      ),
                                    ]),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(38.5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 30, right: 20),
                                          child: Row(
                                            children:  <Widget>[
                                              Expanded(child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: const <Widget> [
                                                  Text(
                                                    "Crushing and Influence",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Gary Wenchek",
                                                    style: TextStyle(
                                                      color: kLightBlackColorn,
                                                    )
                                                  ),
                                                  Align(alignment: Alignment.bottomRight,
                                                  child: Text(
                                                    "Chapter 7 of 10",
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      color: kLightBlackColorn,
                                                    )
                                                  )
                                                  ),
                                                  SizedBox(height: 5),
                                                ],
                                              ),),
                                              Image.asset(
                                                "assets/images/book-1.png",
                                                width: 55,
                                              )
                                            ]
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 7,
                                        width: size.width * .65,
                                        decoration: BoxDecoration(
                                          color: kProgressIndocator,
                                          borderRadius: BorderRadius.circular(7)
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                            SizedBox(height: 48),
                          ]))
                ],
              )),
        ],
      ),
    ));
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
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
                padding:
                    EdgeInsets.only(left: 24, top: 24, right: size.width * .35),
                height: 185,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFEAEAEA).withOpacity(.45),
                  borderRadius: BorderRadius.circular(29),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text("New York Time Best for 11th March 2020",
                        style:
                            TextStyle(fontSize: 9, color: kLightBlackColorn)),
                    SizedBox(height: 5),
                    Text(
                      "How to win \nFriends & Influence",
                      // style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Text(
                      "Gary Vonchuk",
                      style: TextStyle(color: kLightBlackColorn),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: const <Widget>[
                        Bookrating(score: 4.9),
                        SizedBox(width: 10),
                        Expanded(
                            child: Text(
                          "When the earthwas flat and everyone wanted to win so bad, it became deadly",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColorn,
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: 0,
                right: 0,
                child: Image.asset("assets/images/book-3.png",
                    width: size.width * .37)),
            Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                  height: 40,
                  width: size.width * .3,
                  child: TwoSideRoundedButton(
                    text: "Read",
                    radius: 24,
                    press: () {},
                  ),
                ))
          ],
        ));
  }
}
