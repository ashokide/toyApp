import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_tts/flutter_tts.dart';

class MultiWords extends StatefulWidget {
  const MultiWords({Key? key}) : super(key: key);

  @override
  _MultiWordsState createState() => _MultiWordsState();
}

List<String> names = [
  "Alarm",
  "Angel",
  "Ant",
  "Apple",
  "Award",
  "Bag",
  "Basket",
  "Bean",
  "Bear",
  "Bee",
  "Cat",
  "Chair",
  "Chef",
  "Chess",
  "Cow",
  "Dance",
  "Dinosaur",
  "Dog",
  "Donkey",
  "Duck",
  "Eagle",
  "Eye",
  "Elephant",
  "Eraser",
  "Earring",
  "Fish",
  "Flower",
  "Fox",
  "Frog",
  "Fire",
  "Goat",
  "Gooseberry",
  "Gorilla",
  "Grapes",
  "Guitar",
  "Hand",
  "Hammer",
  "Hen",
  "Horse",
  "House",
  "Ice Cream",
  "Igloo",
  "Ink",
  "Insect",
  "Invitation",
  "Jackfruit",
  "Jackie",
  "Jasmine",
  "Java",
  "Jelly Fish",
  "Kangaroo",
  "Kidney",
  "Kingfisher",
  "Kitkat",
  "Kiwi",
  "Latitude",
  "Leaf",
  "Lightning",
  "Line",
  "Lunch",
  "Milk",
  "Money",
  "Monkey",
  "Mug",
  "Mushroom",
  "Necklace",
  "Nest",
  "Newspaper",
  "Nurse",
  "Nut",
  "Octopus",
  "Orange",
  "Ostrich",
  "Owl",
  "Ox",
  "Papers",
  "Parrot",
  "Pen",
  "Pencil",
  "Pin",
  "Quater",
  "Queen",
  "Question",
  "Quiet",
  "Quill",
  "Rabbit",
  "Radish",
  "Rat",
  "Rocket",
  "Rose",
  "Shocks",
  "Shoes",
  "Spoon",
  "Sun",
  "Sunflower",
  "Table",
  "Teak",
  "Teeth",
  "Tree",
  "Turmeric",
  "Umbrella",
  "Underwear",
  "Uniform",
  "Upstairs",
  "Utensils",
  "Vaccine",
  "Van",
  "Vannila",
  "Vein",
  "Video",
  "Walnut",
  "Watch",
  "Watermelon",
  "Well",
  "Whistle",
  "X Ray",
  "Xebec",
  "X Mas",
  "Xylophone",
  "XRay Fish",
  "Yacht",
  "Yak",
  "Yarn",
  "Yawn",
  "Yogurt",
  "Zebra",
  "Zero",
  "Zip",
  "Zombie",
  "Zoo",
];
List<String> images = [
  "images/multiword/a1.jpg",
  "images/multiword/a2.jpg",
  "images/multiword/a3.jpg",
  "images/multiword/a4.jpg",
  "images/multiword/a5.jpg",
  "images/multiword/b1.jpg",
  "images/multiword/b2.jpg",
  "images/multiword/b3.jpg",
  "images/multiword/b4.jpg",
  "images/multiword/b5.jpg",
  "images/multiword/c1.jpg",
  "images/multiword/c2.jpg",
  "images/multiword/c3.jpg",
  "images/multiword/c4.jpg",
  "images/multiword/c5.jpg",
  "images/multiword/d1.jpg",
  "images/multiword/d2.jpg",
  "images/multiword/d3.jpg",
  "images/multiword/d4.jpg",
  "images/multiword/d5.jpg",
  "images/multiword/e1.jpg",
  "images/multiword/e2.jpg",
  "images/multiword/e3.jpg",
  "images/multiword/e4.jpg",
  "images/multiword/e5.jpg",
  "images/multiword/f1.jpg",
  "images/multiword/f2.jpg",
  "images/multiword/f3.jpg",
  "images/multiword/f4.jpg",
  "images/multiword/f5.jpg",
  "images/multiword/g1.jpg",
  "images/multiword/g2.jpg",
  "images/multiword/g3.jpg",
  "images/multiword/g4.jpg",
  "images/multiword/g5.jpg",
  "images/multiword/h1.jpg",
  "images/multiword/h2.jpg",
  "images/multiword/h3.jpg",
  "images/multiword/h4.jpg",
  "images/multiword/h5.jpg",
  "images/multiword/i1.jpg",
  "images/multiword/i2.jpg",
  "images/multiword/i3.jpg",
  "images/multiword/i4.jpg",
  "images/multiword/i5.jpg",
  "images/multiword/j1.jpeg",
  "images/multiword/j2.jpeg",
  "images/multiword/j3.jpeg",
  "images/multiword/j4.jpeg",
  "images/multiword/j5.jpeg",
  "images/multiword/k1.jpg",
  "images/multiword/k2.jpg",
  "images/multiword/k3.jpg",
  "images/multiword/k4.jpg",
  "images/multiword/k5.jpg",
  "images/multiword/l1.png",
  "images/multiword/l2.jpeg",
  "images/multiword/l3.jpg",
  "images/multiword/l4.jpg",
  "images/multiword/l5.jpg",
  "images/multiword/m1.jpg",
  "images/multiword/m2.jpg",
  "images/multiword/m3.jpg",
  "images/multiword/m4.jpg",
  "images/multiword/m5.jpg",
  "images/multiword/n1.jpg",
  "images/multiword/n2.jpg",
  "images/multiword/n3.jpg",
  "images/multiword/n4.jpg",
  "images/multiword/n5.jpg",
  "images/multiword/o1.jpg",
  "images/multiword/o2.jpg",
  "images/multiword/o3.jpg",
  "images/multiword/o4.jpg",
  "images/multiword/o5.jpg",
  "images/multiword/p1.jpg",
  "images/multiword/p2.jpg",
  "images/multiword/p3.jpg",
  "images/multiword/p4.jpg",
  "images/multiword/p5.jpeg",
  "images/multiword/q1.png",
  "images/multiword/q2.jpg",
  "images/multiword/q3.jpg",
  "images/multiword/q4.jpg",
  "images/multiword/q5.jpg",
  "images/multiword/r1.jpg",
  "images/multiword/r2.jpg",
  "images/multiword/r3.jpg",
  "images/multiword/r4.jpg",
  "images/multiword/r5.jpg",
  "images/multiword/s1.jpg",
  "images/multiword/s2.jpg",
  "images/multiword/s3.jpg",
  "images/multiword/s4.jpg",
  "images/multiword/s5.jpg",
  "images/multiword/t1.jpg",
  "images/multiword/t2.jpg",
  "images/multiword/t3.png",
  "images/multiword/t4.jpg",
  "images/multiword/t5.jpg",
  "images/multiword/u1.jpg",
  "images/multiword/u2.jpg",
  "images/multiword/u3.jpg",
  "images/multiword/u4.jpg",
  "images/multiword/u5.jpg",
  "images/multiword/v1.jpg",
  "images/multiword/v2.jpg",
  "images/multiword/v3.jpg",
  "images/multiword/v4.jpg",
  "images/multiword/v5.png",
  "images/multiword/w1.jpg",
  "images/multiword/w2.jpg",
  "images/multiword/w3.jpg",
  "images/multiword/w4.jpg",
  "images/multiword/w5.jpg",
  "images/multiword/x1.jpg",
  "images/multiword/x2.jpg",
  "images/multiword/x3.jpg",
  "images/multiword/x4.jpg",
  "images/multiword/x5.jpg",
  "images/multiword/y1.jpg",
  "images/multiword/y2.jpg",
  "images/multiword/y3.jpg",
  "images/multiword/y4.jpg",
  "images/multiword/y5.jpg",
  "images/multiword/z1.jpg",
  "images/multiword/z2.jpg",
  "images/multiword/z3.jpg",
  "images/multiword/z4.jpg",
  "images/multiword/z5.jpg",
];

FlutterTts tts = FlutterTts();
Future _speak(value) async {
  await tts.speak(value);
  await tts.setVolume(1.0);
  await tts.setSpeechRate(0.7);
  await tts.setPitch(1.0);
  await tts.setQueueMode(5);
}

Future _stop() async {
  await tts.stop();
}

class _MultiWordsState extends State<MultiWords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Words",
            style: GoogleFonts.roboto(
                letterSpacing: 1,
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 15,
        backgroundColor: Colors.purpleAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {
            _stop(),
            Navigator.pop(context),
          },
        ),
      ),
      body: ListView.builder(
        itemCount: names.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 55,
                        height: 49,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(images[index]),
                        ),
                      ),
                      SizedBox(width: 15.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            names[index],
                            style: GoogleFonts.aBeeZee(fontSize: 35),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    child: FlatButton(
                        color: Colors.deepOrangeAccent,
                        onPressed: () => {
                              _stop(),
                              _speak(names[index]),
                              names[index].runes.forEach((int rune) {
                                var character = new String.fromCharCode(rune);
                                _speak(character);
                              }),
                              _speak(names[index]),
                            },
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
