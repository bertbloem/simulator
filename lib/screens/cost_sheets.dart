import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CostSheet());

class CostSheet extends StatefulWidget {
  const CostSheet({Key? key}) : super(key: key);

  @override
  State<CostSheet> createState() => _CostSheetState();
}

class _CostSheetState extends State<CostSheet> {
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
              iconTheme: IconThemeData(size: 200.0), // explore icons and other
              //properties of SliverAppBar to fit image
              titleSpacing: 5.0,
              backgroundColor: const Color(0xFFFFFF),
              floating: true,
              flexibleSpace: Image(
                image: AssetImage('assets/costsheet_youtube.jpeg'),
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
                (context, index) => ListTile(title: Text('Cost Sheet #$index')),
                // Builds 1000 ListTiles
                childCount: 1000,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
