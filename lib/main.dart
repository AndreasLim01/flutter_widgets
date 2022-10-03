import 'package:flutter/material.dart';

void main() => runApp(Week3());

class Week3 extends StatefulWidget {
  const Week3({super.key});

  @override
  State<Week3> createState() => _Week3State();
}

class _Week3State extends State<Week3> {
  List<Widget> widget_list = [];
  bool favor = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Vasa Hotel"),
        backgroundColor: Colors.brown,
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.white, Colors.brown])),
          child: Column(children: [
            FloatingActionButton(
                child: Icon(
                  Icons.favorite,
                  color: (favor == false) ? Colors.red : Colors.grey
                ),
                backgroundColor: Colors.white,
                onPressed: () {
                  setState(() {
                    favor = !favor;
                  });
                }),
                
            Flexible(
              flex: 2,
              child: Container(
                child: Image(
                    image: AssetImage("images/vasa1.jpg"),
                    width: double.infinity,
                    fit: BoxFit.cover),
              ),
            ),
            Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(45),
                            child: Image.asset('images/vasa2.jpg',
                                fit: BoxFit.cover),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(45),
                            child: Image.asset('images/vasa3.jpg',
                                fit: BoxFit.cover),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(45),
                            child: Image.asset('images/vasa4.jpg',
                                fit: BoxFit.cover),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(45),
                            child: Image.asset('images/vasa5.jpg',
                                fit: BoxFit.cover),
                          )),
                    ),
                  ],
                )),
            Flexible(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  'About Vasa Hotel',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: ListView(children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Welcoming guests with contemporary design and modern facilities, Vasa Hotel Surabaya offers a 5-star accommodations in Surabaya in the East Java Region.\n\nThis property features a swimming pool, a spa and a fitness center. Free WiFi is available throughout. Fully furnished and decorated with artworks, each room and apartment at this hotel is generous in space. Fitted with air conditioning, all units have private bathroom that comes a bath or a shower. Guests enjoy bath amenities, bathrobes, and slippers. A flat screen TV with satellite channels is provided in each room for entertainment.\n\nThe on-site 209 Dining serves buffet breakfast every morning, as well as a selection of Asian and international dishes for lunch and dinner. The hotel also houses Xiang Fu Hai that specializes in Chinese cuisine.\n\nThe staff at the 24-hour front desk can provide information about the area and assist you during your stay. Airport shuttle is available at a surcharge. Ciputra World Mall is 1.7 mi from Vasa Hotel Surabaya, Tunjungan Plaza is 4.3 mi from the hotel. The nearest airport is Juanda International Airport, 8.7 mi from the property.',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                )
              ]),
            ),
          ])),
    ));
  }
}
