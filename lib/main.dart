// // // import 'package:flutter/material.dart';

// // // void main() {
// // //   runApp(const MyApp());
// // // }

// // // class MyApp extends StatelessWidget {
// // //   const MyApp({super.key});

// // //   // This widget is the root of your application.
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       title: 'Flutter Demo',
// // //       theme: ThemeData(
// // //         // This is the theme of your application.
// // //         //
// // //         // TRY THIS: Try running your application with "flutter run". You'll see
// // //         // the application has a purple toolbar. Then, without quitting the app,
// // //         // try changing the seedColor in the colorScheme below to Colors.green
// // //         // and then invoke "hot reload" (save your changes or press the "hot
// // //         // reload" button in a Flutter-supported IDE, or press "r" if you used
// // //         // the command line to start the app).
// // //         //
// // //         // Notice that the counter didn't reset back to zero; the application
// // //         // state is not lost during the reload. To reset the state, use hot
// // //         // restart instead.
// // //         //
// // //         // This works for code too, not just values: Most code changes can be
// // //         // tested with just a hot reload.
// // //         colorScheme: .fromSeed(seedColor: Colors.deepPurple),
// // //       ),
// // //       home: const MyHomePage(title: 'Flutter Demo Home Page'),
// // //     );
// // //   }
// // // }

// // // class MyHomePage extends StatefulWidget {
// // //   const MyHomePage({super.key, required this.title});

// // //   // This widget is the home page of your application. It is stateful, meaning
// // //   // that it has a State object (defined below) that contains fields that affect
// // //   // how it looks.

// // //   // This class is the configuration for the state. It holds the values (in this
// // //   // case the title) provided by the parent (in this case the App widget) and
// // //   // used by the build method of the State. Fields in a Widget subclass are
// // //   // always marked "final".

// // //   final String title;

// // //   @override
// // //   State<MyHomePage> createState() => _MyHomePageState();
// // // }

// // // class _MyHomePageState extends State<MyHomePage> {
// // //   int _counter = 0;

// // //   void _incrementCounter() {
// // //     setState(() {
// // //       // This call to setState tells the Flutter framework that something has
// // //       // changed in this State, which causes it to rerun the build method below
// // //       // so that the display can reflect the updated values. If we changed
// // //       // _counter without calling setState(), then the build method would not be
// // //       // called again, and so nothing would appear to happen.
// // //       _counter++;
// // //     });
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     // This method is rerun every time setState is called, for instance as done
// // //     // by the _incrementCounter method above.
// // //     //
// // //     // The Flutter framework has been optimized to make rerunning build methods
// // //     // fast, so that you can just rebuild anything that needs updating rather
// // //     // than having to individually change instances of widgets.
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         // TRY THIS: Try changing the color here to a specific color (to
// // //         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
// // //         // change color while the other colors stay the same.
// // //         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
// // //         // Here we take the value from the MyHomePage object that was created by
// // //         // the App.build method, and use it to set our appbar title.
// // //         title: Text(widget.title),
// // //       ),
// // //       body: Center(
// // //         // Center is a layout widget. It takes a single child and positions it
// // //         // in the middle of the parent.
// // //         child: Column(
// // //           // Column is also a layout widget. It takes a list of children and
// // //           // arranges them vertically. By default, it sizes itself to fit its
// // //           // children horizontally, and tries to be as tall as its parent.
// // //           //
// // //           // Column has various properties to control how it sizes itself and
// // //           // how it positions its children. Here we use mainAxisAlignment to
// // //           // center the children vertically; the main axis here is the vertical
// // //           // axis because Columns are vertical (the cross axis would be
// // //           // horizontal).
// // //           //
// // //           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
// // //           // action in the IDE, or press "p" in the console), to see the
// // //           // wireframe for each widget.
// // //           mainAxisAlignment: .center,
// // //           children: [
// // //             const Text('You have pushed the button this many times:'),
// // //             Text(
// // //               '$_counter',
// // //               style: Theme.of(context).textTheme.headlineMedium,
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //       floatingActionButton: FloatingActionButton(
// // //         onPressed: _incrementCounter,
// // //         tooltip: 'Increment',
// // //         child: const Icon(Icons.add),
// // //       ),
// // //     );
// // //   }
// // // }


// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       title: "Flutter Activity - Set C",
// //       theme: ThemeData(
// //         colorScheme: ColorScheme.fromSeed(
// //           seedColor: Colors.blue
// //         ),
// //       ),
// //       home: const HomePage(),
// //     );
// //   }
// // }

// // class HomePage extends StatelessWidget {
// //   const HomePage({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Flutter Activity - Set C"),
// //         centerTitle: true,
// //         backgroundColor: Colors.yellow,
// //         foregroundColor: Colors.white,
// //       ),

// //       body: SingleChildScrollView(
// //         padding: const EdgeInsets.all(20),

// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [

// //             //Network Image
// //             Center(
// //               child: Image.network(
// //                 "https://images.unsplash.com/photo-1516321318423-f06f85e504b3",
// //                 width: 300,
// //               ),
// //             ),

// //             const SizedBox(height: 20),

// //             //Name
// //             const Text(
// //               "Amber Roses Perote",
// //               style: TextStyle(
// //                 fontSize: 24,
// //                 fontWeight: FontWeight.bold,
// //               ),
// //             ),

// //             const SizedBox(height: 10),

// //             //Course
// //             const Text(
// //               "Bachelor of Science in Over Attractive",
// //               style: TextStyle(
// //                 fontSize: 16,
// //               ),
// //             ),

// //             const SizedBox(height: 10),

// //             //Section
// //             const Text(
// //               "BSIT-3 Section 1",
// //               style: TextStyle(
// //                 fontSize: 16,
// //               ),
// //             ),

// //             const SizedBox(height: 25),

// //             //Icons and Labels
// //             const Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: [

// //                 Column(
// //                   children: [
// //                     Icon(
// //                       Icons.code,
// //                       size: 35,
// //                       color: Colors.blue,
// //                     ),
// //                     Text("Code"),
// //                   ],
// //                 ),

// //                 Column(
// //                   children: [
// //                     Icon(
// //                       Icons.computer,
// //                       size: 35,
// //                       color: Colors.green,
// //                     ),
// //                     Text("Computer"),
// //                   ],
// //                 ),

// //                 Column(
// //                   children: [
// //                     Icon(
// //                       Icons.phone_android,
// //                       size: 35,
// //                       color: Colors.orange,
// //                     ),
// //                     Text("Mobile"),
// //                   ],
// //                 ),

// //                 Column(
// //                   children: [
// //                     Icon(
// //                       Icons.language,
// //                       size: 35,
// //                       color: Colors.purple,
// //                     ),
// //                     Text("Web"),
// //                   ],
// //                 ),

// //                 Column(
// //                   children: [
// //                     Icon(
// //                       Icons.favorite,
// //                       size: 35,
// //                       color: Colors.red,
// //                     ),
// //                     Text("Love"),
// //                   ],
// //                 ),
// //               ],
// //             ),

// //             const SizedBox(height: 25),

// //             //Asset Image
// //             const Text(
// //               "Asset Image",
// //               style: TextStyle(
// //                 fontSize: 24,
// //                 fontWeight: FontWeight.bold,
// //               ),
// //             ),

// //             const SizedBox(height: 15),

// //             Center(
// //               child: Image.asset(
// //                 "images/elem.jpeg",
// //                 width: 300,
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // // }
// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // // Main application widget
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: ProfilePage(),
// //     );
// //   }
// // }

// // // Profile page
// // class ProfilePage extends StatelessWidget {
// //   const ProfilePage({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(s
// //       appBar: AppBar(
// //         title: const Text('Container, Padding, Row & Column'),
// //         centerTitle: true,
// //       ),

// //     );
// //       body: Container(
// //   child: Padding(
// //     padding: const EdgeInsets.all(12.0),
// //     child: Column(
// //       children: [
// //         SizedBox(
// //           width: 140,
// //           height: 125,
// //           child: Text(
// //             "Anyeong",
// //             style: TextStyle(
// //               fontSize: 40,
// //               color: Colors.blue,
// //             ),
// //           ),
// //         ),
// //       ],
// //     ),
// //   ),
// // ),

// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // // Main application widget
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: const ProfilePage(),
// //     );
// //   }
// // }

// // // Profile page
// // class ProfilePage extends StatelessWidget {
// //   const ProfilePage({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Container, Padding, Row & Column'),
// //         centerTitle: true,
// //       ),

// //       body: Center(
// //         child: Container(
// //           width: 350,
// //           padding: const EdgeInsets.all(20),
// //           decoration: BoxDecoration(
// //             color: Colors.pink[300],
// //             borderRadius: BorderRadius.circular(15),
// //           ),

// //           child: Column(
// //             mainAxisSize: MainAxisSize.min,
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               const Text(
// //                 "My Profile Card",
// //                 style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
// //               ),

// //               const SizedBox(height: 15),

// //               const Text("Name: Amber Rose Perote", style: TextStyle(fontSize: 17)),

// //               const SizedBox(height: 12),

// //               const Text("Age: 18", style: TextStyle(fontSize: 17)),

// //               const SizedBox(height: 10),

// //               const Text(
// //                 "Location: Ubojan Tubigon Bohol",
// //                 style: TextStyle(fontSize: 19),
// //               ),

// //               const SizedBox(height: 20),

// //               // Row containing icons
// //               const Column(
// //                 mainAxisAlignment: MainAxisAlignment.start,
// //                 children: [
// //                   Row(
// //                     children: [
// //                       Icon(Icons.star, size: 45, color: Colors.amber),
// //                       SizedBox(height: 5),
// //                       Text("Tala", style: TextStyle(fontSize: 16)),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   final List<String> fruits = const [
//     'Apple',
//     'Grapes',
//     'Amber Rose',
//     'Manggo',
//     'watermelon',
//     'strawberry',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Fruit List'),
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.shopping_cart),
//               onPressed: () {},
//             ),
//           ],
//         ),
//         body: ListView.builder(
//           padding: const EdgeInsets.all(16),
//           itemCount: fruits.length,
//           itemBuilder: (context, index) {
//             return Card(
//               margin: const EdgeInsets.only(bottom: 12),
//               child: ListTile(
//                 title: Text(fruits[index]),
//                 trailing: const Icon(Icons.shopping_cart_outlined),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

void main() {
  runApp(const WanderlistApp());
}

class WanderlistApp extends StatelessWidget {
  const WanderlistApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wanderlist Travel Guide',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class Destination {
  final String name;
  final String location;
  final String description;
  final String imageAsset;
  final double estimatedBudget;
  bool isFavorite;

  Destination({
    required this.name,
    required this.location,
    required this.description,
    required this.imageAsset,
    required this.estimatedBudget,
    this.isFavorite = false,
  });
}

class DestinationRepository {
  static List<Destination> getDestinations() {
    return [
      Destination(
        name: 'Beach Cove',
        location: 'Palawan',
        description:
            'Relax on beautiful beaches and enjoy the clear water.',
        imageAsset: 'assets/images/palwan.jpeg',
        estimatedBudget: 3500,
      ),
      Destination(
        name: 'Mountain Ridge',
        location: 'Benguet',
        description:
            'Explore cool mountain views and peaceful surroundings.',
        imageAsset: 'assets/images/Baguio.Banner-1.jpg',
        estimatedBudget: 2800,
      ),
      Destination(
        name: 'Old Town Square',
        location: 'Vigan',
        description:
            'Experience historic streets and traditional architecture.',
        imageAsset: 'assets/images/vigan.jpeg',
        estimatedBudget: 2200,
      ),
      Destination(
        name: 'River Park',
        location: 'Bohol',
        description:
            'Enjoy nature and relaxing views beside the river.',
        imageAsset: 'assets/images/river.jpeg',
        estimatedBudget: 1800,
      ),
      Destination(
        name: 'Lakeside Village',
        location: 'Laguna',
        description:
            'Visit a peaceful lakeside destination.',
        imageAsset: 'assets/images/laguna.jpeg',
        estimatedBudget: 1500,
      ),
      Destination(
        name: 'Hill Station',
        location: 'Sagada',
        description:
            'Discover scenic mountain landscapes and local culture.',
        imageAsset: 'assets/images/Baguio.Banner-1.jpg',
        estimatedBudget: 3000,
      ),
    ];
  }
}

class GuideHeader extends StatelessWidget {
  final VoidCallback onExplore;

  const GuideHeader({
    super.key,
    required this.onExplore,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/Baguio.Banner-1.jpg',
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            'Wanderlist Travel Guide',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Discover amazing destinations and plan your next adventure.',
            style: TextStyle(fontSize: 16),
          ),

          const SizedBox(height: 12),

          ElevatedButton(
            onPressed: onExplore,
            child: const Text('Explore Destinations'),
          ),
        ],
      ),
    );
  }
}

class BudgetLabel extends StatelessWidget {
  final double budget;

  const BudgetLabel({
    super.key,
    required this.budget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        'Budget: ₱${budget.toStringAsFixed(0)}',
        style: TextStyle(
          color: Colors.green.shade800,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  final Destination destination;
  final VoidCallback onFavoriteToggle;

  const DestinationCard({
    super.key,
    required this.destination,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                destination.imageAsset,
                width: 110,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          destination.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      IconButton(
                        onPressed: onFavoriteToggle,
                        icon: Icon(
                          destination.isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: destination.isFavorite
                              ? Colors.red
                              : null,
                        ),
                      ),
                    ],
                  ),

                  Text(
                    destination.location,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    destination.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(height: 8),

                  BudgetLabel(
                    budget: destination.estimatedBudget,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Destination> destinations;

  @override
  void initState() {
    super.initState();
    destinations = DestinationRepository.getDestinations();
  }

  void toggleFavorite(int index) {
    setState(() {
      destinations[index].isFavorite =
          !destinations[index].isFavorite;
    });
  }

  void scrollToDestinations() {
    // Explore button action
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wanderlist'),
        centerTitle: true,
      ),

      body: Column(
        children: [
          GuideHeader(
            onExplore: scrollToDestinations,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Destinations',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 8),

          Expanded(
            child: ListView.builder(
              itemCount: destinations.length,
              itemBuilder: (context, index) {
                return DestinationCard(
                  destination: destinations[index],
                  onFavoriteToggle: () {
                    toggleFavorite(index);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}