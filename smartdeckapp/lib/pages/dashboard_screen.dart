import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).colorScheme.surface;
    Color shadowcolor = Theme.of(context).colorScheme.shadow;
    Color surfacetint = Colors.blue;
    const BorderRadius borderRadius = BorderRadius.all(Radius.circular(8.0));
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Dashboard'),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 30),
                    Material(
                      type: MaterialType.card,
                      borderRadius: borderRadius,
                      shadowColor: shadowcolor,
                      surfaceTintColor: surfacetint,
                      color: color,
                      elevation: 10,
                      child: Container(
                        height: 120,
                        width: 120,
                        child: Center(
                          child: Text(
                            'Container 1',
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Material(
                      type: MaterialType.card,
                      borderRadius: borderRadius,
                      shadowColor: shadowcolor,
                      surfaceTintColor: surfacetint,
                      color: color,
                      elevation: 10,
                      child: Container(
                        height: 100,
                        width: 200,
                        child: Center(
                          child: Text(
                            'Container 2',
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Material(
                  type: MaterialType.card,
                  borderRadius: borderRadius,
                  shadowColor: shadowcolor,
                  surfaceTintColor: surfacetint,
                  color: Colors.black,
                  elevation: 2,
                  child: Container(
                    height: 5,
                    width: 350,
                  ),
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}
