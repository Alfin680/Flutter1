// import 'package:flutter/material.dart';

// main(){
//    runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//         theme: ThemeData(
//           primaryColor: Color.fromARGB(255, 226, 8, 8)
//         ),
//         home: HomeScreen(),
//     );
//   }
// }
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       backgroundColor: Color.fromARGB(255, 0, 0, 0),
//       body:  SafeArea(
//         child: Container(
//           width: double.infinity,
//           height: double.infinity,
//           child: const Text('Welcome ',
//           textAlign: TextAlign.center,
//           style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),
//           fontSize: 30,
//           fontWeight: FontWeight.bold,
          
//           ),),
//         )),
      
//     );
//   }
// }










// class DateScrollWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100, // Adjust the height as needed
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: 10, // Number of days/dates to display
//         itemBuilder: (context, index) {
//           DateTime currentDate = DateTime.now().add(Duration(days: index));
//           String dayName = currentDate.weekday.toString().substring(0, 3);
//           String date = currentDate.day.toString();

//           return Container(
//             margin: EdgeInsets.symmetric(horizontal: 8),
//             padding: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(16),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   dayName,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 4),
//                 Text(
//                   date,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Date Scroll Widget')),
//         body: DateScrollWidget(),
//       ),
//     );
//   }
// }

// class DateScrollWidget extends StatelessWidget {
//   final int numberOfDates = 15; // Adjust the number of dates as needed
//   final double containerWidth = 80.0;
//   final double borderRadius = 16.0;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100, // Adjust the height as needed
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: numberOfDates,
//         itemBuilder: (context, index) {
//           int middleIndex = numberOfDates ~/ 2;
//           int dayDifference = index - middleIndex;
//           DateTime currentDate = DateTime.now().add(Duration(days: dayDifference));
//           String date = currentDate.day.toString();

//           Color backgroundColor = dayDifference == 0
//               ? Colors.blue // Present date
//               : Colors.grey; // Other dates

//           return Container(
//             width: containerWidth,
//             margin: EdgeInsets.symmetric(horizontal: 8),
//             decoration: BoxDecoration(
//               color: backgroundColor,
//               borderRadius: BorderRadius.circular(borderRadius),
//               gradient: dayDifference == 0
//                   ? LinearGradient(
//                       colors: [Colors.blue, Colors.lightBlue],
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                     )
//                   : null,
//             ),
//             child: Center(
//               child: Text(
//                 date,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

//icon
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class ProfileIconScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Text(
//           'This is the profile screen',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//     );
//   }
// }

// class ChatScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Text(
//           'This is the chat screen',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Profile and Chat Icon Example',
//       theme: ThemeData.dark(),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         child: Stack(
//           alignment: Alignment.topLeft,
//           children: [
//             Positioned(
//               top: 20,
//               left: 20,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => ProfileIconScreen()),
//                   );
//                 },
//                 child: Container(
//                   width: 50,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.blue,
//                   ),
//                   child: Icon(
//                     Icons.person,
//                     size: 40,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 20,
//               right: 20,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => ChatScreen()),
//                   );
//                 },
//                 child: Container(
//                   width: 50,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                   ),
//                   child: Icon(
//                     Icons.chat_bubble_outline_sharp,
//                     size: 40,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 30,
//               left: 90,
//               child: Text(
//                 'Welcome Buddy!\nExplore Tasks',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
                  
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class ProfileIconScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'This is the profile screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'This is the chat screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile and Chat Icon Example',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Tasks',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CustomToggleButtons(),
                ],
              ),
              SizedBox(height: 20),
              // Add your tasks content here
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileIconScreen()),
                  );
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen()),
                  );
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: Icon(
                    Icons.chat,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 90,
              child: Text(
                'Welcome Buddy!\nExplore Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  _showBottomSheet(context);
                },
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16),
                  child: Center(
                    child: Text(
                      'Tasks',
                      style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.w800
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomToggleButtons extends StatefulWidget {
  @override
  _CustomToggleButtonsState createState() => _CustomToggleButtonsState();
}

class _CustomToggleButtonsState extends State<CustomToggleButtons> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(20),
          right: Radius.circular(20),
        ),
        color: const Color.fromARGB(255, 238, 238, 238),
      ),
      child: ToggleButtons(
        isSelected: isSelected,
        onPressed: (index) {
          setState(() {
            isSelected[index] = !isSelected[index];
            isSelected[(index + 1) % 2] = !isSelected[(index + 1) % 2];
          });
        },
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(20),
          right: Radius.circular(20),
        ),
        selectedColor: Colors.black,
        color: const Color.fromARGB(255, 0, 0, 0),
        children: [
          Container(
            width: 80,
            alignment: Alignment.center,
            child: Text('Availed'),
          ),
          Container(
            width: 80,
            alignment: Alignment.center,
            child: Text('Unavailed'),
          ),
        ],
      ),
    );
  }
}

