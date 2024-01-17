import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// ignore: unused_element
const TextStyle _textStyle = TextStyle(
fontSize: 40,
fontWeight: FontWeight.bold,
letterSpacing: 2,
// fontStyle: FontStyle.italic,
color:Colors.white
);
const TextStyle _textStyleapp = TextStyle(
fontSize: 40,
fontWeight: FontWeight.bold,
// letterSpacing: 2,
// fontStyle: FontStyle.italic,
color:Color.fromARGB(255, 71, 69, 69)
);

List<String> welcomeData = ["Home", "Search for Donor", "Activity", "Manage Profile"];



class _HomeScreenState extends State<HomeScreen> {
  int myselectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 14, 14, 14),
      body:  Center(child: AnimatedTextKit(
  animatedTexts: [
    TypewriterAnimatedText(
      welcomeData[myselectedIndex],
      textStyle: const TextStyle(
        fontSize: 42.0,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
      speed: const Duration(milliseconds: 50),
    ),
  ],
  
  totalRepeatCount: 100,
  // pause: const Duration(milliseconds: 1000),
  // displayFullTextOnTap: true,
  // stopPauseOnTap: true,
)),

      bottomNavigationBar:NavigationBar(
        // animationDuration: Duration(seconds: 1),
        // animationDuration:  Duration(ms: 55000),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected ,
        animationDuration:  const Duration(seconds: 1),
        onDestinationSelected: (value) {
          setState((){
               myselectedIndex = value;
          });
        },
        selectedIndex: myselectedIndex,
        destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home,size:25.0 ),
          selectedIcon: Icon(Icons.home_outlined,size:30.0),
           label: 'Home'
        ),
      
       NavigationDestination(
          icon: Icon(Icons.search),
          selectedIcon: Icon(Icons.search_outlined,size:35.0),
           label: 'Explore'
        ),
       NavigationDestination(
          icon: Icon(Icons.health_and_safety,size:25.0),
         
           label: 'Activity'
        ),
         NavigationDestination(
          icon: Icon(Icons.account_circle),
          
           label: 'Profile'
        ),
      ],) ,
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.green,
        title: AnimatedTextKit(
        animatedTexts: [
          RotateAnimatedText('Blood Link',
          duration: const Duration(milliseconds: 1000),
          rotateOut: false,
          textStyle: const TextStyle(
          
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      )),
          RotateAnimatedText('Connecting Hearts. Saving Lives ',textStyle: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 190, 36, 36)
      )
      ),
  ],
  // pause: const Duration(milliseconds: 2000),
  totalRepeatCount: 10000,
  
  // pause: const Duration(milliseconds: 1000),
  // displayFullTextOnTap: true,
  // stopPauseOnTap: true,
)

      ),
      
      // body:Column(
        
      // ) ,
      
       
    );
  }
}