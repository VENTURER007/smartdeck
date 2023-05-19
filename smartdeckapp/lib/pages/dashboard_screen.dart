import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulating data loading delay
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).colorScheme.surface;
    Color shadowcolor = Theme.of(context).colorScheme.shadow;
    Color surfacetint = Color.fromARGB(195, 107, 55, 184)!;
    const BorderRadius borderRadius = BorderRadius.all(Radius.circular(8.0));

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                title: Text(
                  'Dashboard',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.black,
                      ),
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
                          child: SizedBox(
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
                          child: SizedBox(
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
      SliverPadding(
  padding: EdgeInsets.symmetric(vertical: 20),
  sliver: SliverList(
    delegate: SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        List<String> imageNames = [
          'book.png',
          'increase-graph.png',
        ];

        String imagePath = 'lib/images/${imageNames[index]}';

        return Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Material(
            type: MaterialType.card,
            borderRadius: borderRadius,
            shadowColor: shadowcolor,
            surfaceTintColor: surfacetint,
            color: color,
            elevation: 10,
            child: FractionallySizedBox(
              widthFactor: 0.9, // Adjust the value as needed
              child: Container(
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Image.asset(
                      imagePath,
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            index == 0 ? 'Topics and Flashcards' : 'Stats and Progress',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                           index == 0 ? 'Click here to search new topics and create flashcars ' : 'Click here to view progress',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      childCount: 2,
    ),
  ),
),

            ],
          ),
          if (isLoading)
            Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }
}
