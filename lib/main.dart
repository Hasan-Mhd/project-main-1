// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   final items = List<String>.generate(20, (i) => 'product ${i + 1}');
//   @override
//   Widget build(BuildContext context) {
//     const tiltle = 'Dismiissed';
//     return MaterialApp(
//       title: tiltle,
//       theme: ThemeData(primarySwatch: Colors.teal),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(tiltle),
//         ),
//         body: ListView.builder(
//             itemCount: items.length,
//             itemBuilder: (context, index) {
//               final item = items[index];
//               return Dismissible(
//                 key: Key(item),
//                 onDismissed: (direction) {
//                   setState(() {
//                     items.removeAt(index);
//                   });
//                   ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text('$item Dismissed ')));
//                 },
//                 background: Container(
//                   color: Colors.teal,
//                 ),
//                 child: ListTile(
//                   title: Text(item),
//                 ),
//               );
//             }),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final items = List<String>.generate(20, (i) => 'item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    const title = 'dismissed';
    return MaterialApp(
      title: title,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Dismissible(
                  key: Key(item),
                  onDismissed: (direction) {
                    setState(() {
                      items.removeAt(index);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('$item Dismissed'),
                      duration: const Duration(seconds: 1),
                    ));
                  },
                  background: Container(
                    color: Colors.black,
                  ),
                  child: ListTile(
                    title: Text(item),
                  ));
            }),
      ),
    );
  }
}
