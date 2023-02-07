import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _nameState();
}
/*
we automatically get the return button and responsiveness with each page in flutter
we write the type of each argument but here we do not sperate them with :
Scaffold is the main container that contain appbar  
and  body is simply the bodyu 
bottomNvaigationBar is like the footer 
function here are same as javascript (){}  annoumus function but without arrow 
flutter is widget  like scaffold that contain properties that is AppBar, title,autmaticallyImplictyLeadding, that can contain
either another wdieget like Text widget or just a value like autmaticallyImplictyLeadding
each propertiy can contain wdiget,eventlistners like on press or would need primitive value 
child allwo one widget inside 
children multiple childer
Text widget obvs for text
Divider is obviously divider
Image.asset to add image 
push to push navigation 
.pop to delete
navigator.of(content to navigate )
onPress handler 
scaffold contains everything we need appbar/body
Colors for color and we can use [] to choose the color we want 
sized box is like giving spacing between each item,
control space to add arguments
formating documenating is important 
usage of prettier is important here 
center widget to center items
const need to be at higher level possible means if center widget and it contain child text then we can not add 
debugPrint to write in console
add ;
usage of prettier here
how to allow assets 
cafeful of s here
we can refactor and wrap an item in a child
we have ontap and many other event listner 

*/

class _nameState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool isCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Learn Flutter"),
          automaticallyImplyLeading:
              false, // to remove the arrow which means loeading here,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pop(); // flutter uses content behind the seen and pop function will delete the page that was over this one
              },
              icon: const Icon(Icons.arrow_back_ios))),
      body: Column(children: [
        Image.asset("../images/1.png"),
        // const SizedBox(height: 10),// creates spacing
        const Divider(color: Colors.black),
        Container(
          margin: const EdgeInsets.all(
              10.0), // to add margine and we choose which edge
          padding:
              const EdgeInsets.all(10.0), //To add padding as well to all sets
          color: Colors.red, //background color,
          width: double.infinity, //width at max width possible max width,
          child: const Center(
            child: Text("This is a text wdiget ",
                style: TextStyle(
                    color: Colors // Text Color
                        .white)),
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.blue : Colors.green),
            onPressed: () {
              debugPrint("the buton in learn_flutter-page");
            },
            child: const Text("hey")),
        OutlinedButton(
          onPressed: () {
            debugPrint("the buton in learn_flutter-page");
          },
          child: const Text("newTtoe If Button"),
        ),
        GestureDetector(
          behavior: HitTestBehavior
              .opaque, // yo make sure that gequture deector work on everyplace we use hitTestBehavoir
          onTap: () {
            debugPrint("This is the row");
          },
          child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            //Row have its own axiss it is horizontal,  main access
            Icon(Icons.local_fire_department, color: Colors.blue),
            Text("Row Widget"),
            Icon(Icons.local_fire_department, color: Colors.blue)
          ]),
        ),
        Switch(
          // Switch to navigate
          value: isSwitch,
          onChanged: (bool newBool) {
            setState(() {
              isSwitch = newBool;
            }); // to switch
          },
        )
        // like a box but can put a lot of items in it
      ] //creates a divider line between each items],
          ),
    ); //Adding our own arrow back function
  }
}
