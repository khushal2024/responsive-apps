// import 'package:flutter/material.dart';
// import 'package:responsive/model.dart';

// void main() => runApp(const Home());

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Responsive(),
//     );
//   }
// }

// class Responsive extends StatefulWidget {
//   const Responsive({super.key});

//   @override
//   State<Responsive> createState() => _ResponsiveState();
// }

// class _ResponsiveState extends State<Responsive> {
//   bool isDesktop(BuildContext context) =>
//       MediaQuery.of(context).size.width >= 600;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: isDesktop(context)
//             ? const Text('Desktop view')
//             : const Text('Mobile view'),
//         centerTitle: true,
//       ),
//       drawer: isDesktop(context)
//           ? null
//           : Drawer(
//               child: Container(
//                 width: 200,
//                 color: Colors.cyan,
//                 child: Column(
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.symmetric(vertical: 5),
//                       width: 100,
//                       height: 100,
//                       child: const CircleAvatar(
//                         child: Icon(Icons.person, size: 60),
//                         backgroundColor: Colors.grey,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//       body: Row(
//         children: [
//           if (isDesktop(context))
//             Container(
//               width: 200,
//               color: Colors.cyan,
//               child: Column(
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.symmetric(vertical: 5),
//                     width: 100,
//                     height: 100,
//                     child: const CircleAvatar(
//                       backgroundColor: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           Expanded(
//             child: Container(
//               color: Colors.amber,
//               child: Center(
//                 child: isDesktop(context)
//                     ? const Text('Desktop Responsive')
//                     : const Text('Mobile Responsive'),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:responsive/model.dart';

// void main() => runApp(Home());

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Another(),
//     );
//   }
// }

// class Another extends StatefulWidget {
//   const Another({super.key});

//   @override
//   State<Another> createState() => _AnotherState();
// }

// class _AnotherState extends State<Another> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ListView.builder(
//           itemCount: data.length,
//           itemBuilder: (context, index) {
//             return Material(
//               child: ListTile(
//                 tileColor: Colors.cyan,
//                 title: Text(data[index].name),
//               ),
//             );
//           }),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Another(),
    );
  }
}

class Another extends StatefulWidget {
  const Another({super.key});

  @override
  State<Another> createState() => _AnotherState();
}

class _AnotherState extends State<Another> {
  bool isClicked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ElevatedButton(
            onPressed: () {
              setState(() {
                isClicked = !isClicked;
              });
            },
            child: isClicked ? Text('Clicked') : Text('UnClicked')),
      ),
    );
  }
}
