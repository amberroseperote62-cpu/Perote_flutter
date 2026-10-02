import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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

// ================= PRODUCT / DESTINATION MODEL =================

class Destination {
  final String name;
  final String location;
  final String description;
  final String imageUrl;
  final int population;
  bool isFavorite;

  Destination({
    required this.name,
    required this.location,
    required this.description,
    required this.imageUrl,
    required this.population,
    this.isFavorite = false,
  });

  factory Destination.fromJson(Map<String, dynamic> json) {
    final nameData = json['name'] as Map<String, dynamic>?;
    final capitals = json['capital'] as List<dynamic>?;
    final flags = json['flags'] as Map<String, dynamic>?;

    final countryName = nameData?['common'] ?? 'Unknown';
    final region = json['region'] ?? 'Unknown region';

    return Destination(
      name: countryName.toString(),
      location: capitals != null && capitals.isNotEmpty
          ? capitals.first.toString()
          : 'No capital',
      description: 'Explore this destination in $region.',
      imageUrl: flags?['png'] ?? '',
      population: json['population'] ?? 0,
    );
  }
}

// ================= API SERVICE =================

class DestinationRepository {
  static const String url =
      'https://restcountries.com/v3.1/all?fields=name,capital,region,population,flags';

  static Future<List<Destination>> fetchDestinations() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);

      final List<Destination> destinations = data
          .map(
            (item) => Destination.fromJson(
              item as Map<String, dynamic>,
            ),
          )
          .toList();

      destinations.sort(
        (a, b) => a.name.compareTo(b.name),
      );

      return destinations;
    } else {
      throw Exception(
        'Failed to load destinations: ${response.statusCode}',
      );
    }
  }
}

// ================= HEADER =================

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
              height: 140,
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

// ================= POPULATION LABEL =================

class PopulationLabel extends StatelessWidget {
  final int population;

  const PopulationLabel({
    super.key,
    required this.population,
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
        'Population: ${population.toString()}',
        style: TextStyle(
          color: Colors.green.shade800,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// ================= DESTINATION CARD =================

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

              child: Image.network(
                destination.imageUrl,
                width: 110,
                height: 110,
                fit: BoxFit.cover,

                errorBuilder: (
                  context,
                  error,
                  stackTrace,
                ) {
                  return const SizedBox(
                    width: 110,
                    height: 110,
                    child: Icon(
                      Icons.broken_image,
                      size: 40,
                    ),
                  );
                },
              ),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
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

                  PopulationLabel(
                    population: destination.population,
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

// ================= HOME SCREEN =================

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Destination> destinations = [];

  bool isLoading = true;

  String? errorMessage;

  final ScrollController scrollController =
      ScrollController();

  @override
  void initState() {
    super.initState();

    loadDestinations();
  }

  Future<void> loadDestinations() async {
    setState(() {
      isLoading = true;
      errorMessage = null;
    });

    try {
      final result =
          await DestinationRepository.fetchDestinations();

      setState(() {
        destinations = result;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        errorMessage =
            'Could not load data. Check your internet connection.';
        isLoading = false;
      });
    }
  }

  void toggleFavorite(int index) {
    setState(() {
      destinations[index].isFavorite =
          !destinations[index].isFavorite;
    });
  }

  void scrollToDestinations() {
    scrollController.animateTo(
      250,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity'),
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
            child: isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : errorMessage != null
                    ? Center(
                        child: Column(
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [
                            Text(errorMessage!),

                            const SizedBox(height: 10),

                            ElevatedButton(
                              onPressed: loadDestinations,
                              child: const Text('Retry'),
                            ),
                          ],
                        ),
                      )
                    : ListView.builder(
                        controller: scrollController,
                        itemCount: destinations.length,

                        itemBuilder: (context, index) {
                          return DestinationCard(
                            destination:
                                destinations[index],
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