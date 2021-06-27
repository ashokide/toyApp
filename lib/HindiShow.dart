import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_tts/flutter_tts.dart';
class HindiShow extends StatefulWidget {
  var alphaName = "", alpha = "", content = "";
  HindiShow(this.alphaName, this.alpha, this.content);
  @override
  _HindiShowState createState() => _HindiShowState(this.alphaName, this.alpha, this.content);
}
class _HindiShowState extends State<HindiShow> {
  var alphaName = "", alpha = "", content = "";
  FlutterTts tts = FlutterTts();
  Future _speak(value) async {
    await tts.setLanguage("hi-IN");
    await tts.speak(value);
    await tts.setVolume(1.0);
    await tts.setSpeechRate(0.7);
    await tts.setPitch(1.0);
    await tts.setQueueMode(5);
  }

  Future _stop() async {
    await tts.stop();
  }

  void initState() {
    _stop();
    _speak(alphaName + " के लिये " + alpha);
    super.initState();
  }
  _HindiShowState(this.alphaName, this.alpha, this.content);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: ()=>{
            _stop(),
            Navigator.pop(context),
          },
        ),
        title: Text("LEARN - " + widget.alphaName,
            style: GoogleFonts.roboto(
                letterSpacing: 1,
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 15,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple, Colors.blue])),
        child: Column(children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.alphaName,
                style: GoogleFonts.aBeeZee(
                  fontSize: 120,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.alpha,
                style: GoogleFonts.aBeeZee(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.height/4,
                child: Image(
                  image: AssetImage("$content"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrangeAccent,
                  textStyle: GoogleFonts.pangolin(fontSize: 40),
                ),
                child: Text("Pronounciate"),
                onPressed: () => {
                  _speak(alphaName + " के लिये " + alpha),
                },
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
