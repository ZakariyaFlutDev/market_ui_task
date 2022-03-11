import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: Text(
          "Cars",
          style: TextStyle(color: Colors.deepOrange, fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.deepOrange,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.deepOrange,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _scrollTab(true,"All"),
                    _scrollTab(false,"Red"),
                    _scrollTab(false,"Blue"),
                    _scrollTab(false,"Black"),
                    _scrollTab(false,"Green"),
                    _scrollTab(false,"White"),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              makeItem("assets/images/im_car1.jpg"),
              makeItem("assets/images/im_car2.jpg"),
              makeItem("assets/images/im_car3.jpg"),
              makeItem("assets/images/im_car4.png"),
              makeItem("assets/images/im_car5.jpg"),              makeItem("assets/images/im_car1.jpg"),
              makeItem("assets/images/im_car2.jpg"),
              makeItem("assets/images/im_car3.jpg"),
              makeItem("assets/images/im_car4.png"),
              makeItem("assets/images/im_car5.jpg"),

            ],
          ),
        ),
      ),
    );
  }

  Widget _scrollTab(bool type, String text){
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: type ? Colors.deepOrange : Colors.transparent
        ),
        child: Center(
          child: Text(text, style: TextStyle(color: type ? Colors.white : Colors.black, fontSize: type ? 20 :17 ),),
        )
      ),
    );
  }

  Widget makeItem(String image){
    return Container(
      height: 240,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        ),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 10, offset: Offset(0,10))
        ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("PDP Car", style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Text("Electric", style: TextStyle(color: Colors.deepOrange, fontSize: 20, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text("100\$", style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepOrange
              ),
              child: Center(
                child: Icon(Icons.favorite_border, color: Colors.white,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
