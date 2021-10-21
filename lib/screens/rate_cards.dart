import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const RateCards());

class RateCards extends StatefulWidget {
  const RateCards({Key? key}) : super(key: key);

  @override
  State<RateCards> createState() => _RateCardsState();
}

class _RateCardsState extends State<RateCards> {
  @override
  Widget build(BuildContext context) {
    const title = 'Floating App Bar';

    return MaterialApp(
      title: title,
      home: Scaffold(
        // No appbar provided to the Scaffold, only a body with a
        // CustomScrollView.
        body: CustomScrollView(
          slivers: [
            // Add the app bar to the CustomScrollView.
            SliverAppBar(
              backgroundColor: const Color(0xFFFFFF),
              floating: true,
              flexibleSpace: Image(
                image: AssetImage('assets/ratescard_youtube.jpeg'),
                fit: BoxFit.cover,
              ),
              // Make the initial height of the SliverAppBar larger than normal.
              expandedHeight: 185,
            ),
            // Next, create a SliverList
            SliverList(
              // Use a delegate to build items as they're scrolled on screen.
              delegate: SliverChildBuilderDelegate(
                // The builder function returns a ListTile with a title that
                // displays the index of the current item.
                (context, index) => ListTile(title: Text('Rate Card #$index')),
                // Builds 1000 ListTiles
                childCount: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
