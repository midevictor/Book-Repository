import "package:book_app/constants.dart";
import "package:book_app/widgets/book_rating.dart";
import "package:book_app/widgets/rounded_button.dart";
import "package:flutter/material.dart";

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/bg.png"),
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(children: <Widget>[
                        SizedBox(height: size.height * .1),
                        BookInfo()
                      ]))),
              Padding(
                padding: EdgeInsets.only(top: size.height * .4 - 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ChapterCard(
                          name: "Money",
                          chapterNumber: 1,
                          tag: "Life is about change",
                          press: () {}),
                      ChapterCard(
                          name: "Money",
                          chapterNumber: 1,
                          tag: "Life is about change",
                          press: () {}),
                      ChapterCard(
                          name: "Money",
                          chapterNumber: 1,
                          tag: "Life is about change",
                          press: () {}),
                      ChapterCard(
                          name: "Money",
                          chapterNumber: 1,
                          tag: "Life is about change",
                          press: () {}),
                      SizedBox(height: 10),
                    ]),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                    text: TextSpan(
                  style: Theme.of(context).textTheme.displayMedium,
                  children: const [
                    TextSpan(
                      text: "You might also",
                    ),
                    TextSpan(
                      text: "Like...",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
                SizedBox(height: 20),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: double.infinity,
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 24, top: 74, right: 150),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: Color(0xFFFFF8F9),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  <Widget>[
                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(color: kBlackColor),
                                      children:  const [
                                    TextSpan(
                                        text:
                                            "How To Win \nFriends & Influence \n",
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),

                                        TextSpan(
                                          text: "Gary Venchuk",
                                          style: TextStyle(color: kBlackColor)

                                        )
                                  ])),
                                  Row(children:  <Widget> [
                                    Bookrating(score: 4.9,),
                                    SizedBox(width: 20),

                                    Expanded(child: RoundedButton (text: "Read", verticalPadding: 10, press: () {},) )
                                  ],)
                            ],
                          ),
                        )),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Image.asset(
                        "assets/images/book-3.png",
                        width: 150,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    ));
  }
}



class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final VoidCallback press;
  const ChapterCard({
    super.key,
    required this.name,
    required this.tag,
    required this.chapterNumber,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(38.5),
          boxShadow: [
            BoxShadow(
              offset: Offset(6, 10),
              blurRadius: 33,
              color: Color(0xFFD3D3D3).withOpacity(.84),
            )
          ]),
      child: Row(
        children: <Widget>[
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Chapt $chapterNumber : $name \n",
                style: TextStyle(
                  fontSize: 16,
                  color: kBlackColor,
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(
              text: tag,
              style: TextStyle(color: kLightBlackColorn),
            ),
          ])),
          Spacer(),
          IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: press)
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Crushing &",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                "Influence",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
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
                            "when earth was flat everyoone alswasy ahad a say but now the earth is round , what goes around , come saround",
                            maxLines: 5,
                            style: TextStyle(
                              fontSize: 10,
                              color: kLightBlackColorn,
                            )),
                        SizedBox(height: 5),
                        RoundedButton(
                          text: "Read",
                          verticalPadding: 10,
                          press: () {},
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      Bookrating(score: 4.9),
                    ],
                  )
                ],
              )
            ]),
      ),
      Image.asset(
        "assets/images/book-1.png",
        height: 200,
      )
    ]);
  }
}
