import 'package:flutter/material.dart';

void main() => runApp(CostSheet());

class CostSheet extends StatefulWidget {
  @override
  State<CostSheet> createState() => _CostSheetState();
}

class _CostSheetState extends State<CostSheet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // No appbar provided to the Scaffold, only a body with a
        // CustomScrollView.
        body: CustomScrollView(
          slivers: [
            // Add the app bar to the CustomScrollView.
            SliverAppBar(
              title: Text('Cost Sheets'),
              centerTitle: true,
              pinned: true,
              floating: true,
              expandedHeight: 185,
              backgroundColor: Colors.blue[800],
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                    image: AssetImage('assets/images/costsheet_youtube.jpeg'),
                    fit: BoxFit.cover),
              ),
            ),
            // Next, create a SliverList
            SliverList(
              // Use a delegate to build items as they're scrolled on screen.
              delegate: SliverChildBuilderDelegate(
                // The builder function returns a ListTile with a title that displays the index of the current item.
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
