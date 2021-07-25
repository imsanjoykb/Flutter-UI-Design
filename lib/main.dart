import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

void main() {
  runApp(TravellApp());
}

class TravellApp extends StatelessWidget {
  get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'KCP TEA Stall',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Chowrasta,Jessore',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttionSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'Call'),
          _buildButtonColumn(color, Icons.near_me, 'Route'),
          _buildButtonColumn(color, Icons.share, 'Share'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(13),
      child: Text('Generally, the small tea stalls sell low-cost tea to the customers along with other foods.'
          'Sometimes these stores don’t provide even sitting arrangements. '
          'Here, you can price a cup of tea typically Rs 5 to 10. '
          'In urban areas, the demand for tea bars has increased in the recent past.'
          'A lot of companies are now offering franchise business opportunities to new entrepreneurs.'
          'If you want to start a business with a brand, then the franchise is the better option for you. With an established brand, you can generate a good number of clients from the very first day.'),
    );

    return MaterialApp(
      title: 'Tea Stall',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tea Stall Interface'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/teastall.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttionSection,
            textSection,
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          //currentIndex: 0,
          fixedColor: Colors.yellow,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.search)),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle)),
            BottomNavigationBarItem(icon: Icon(Icons.notifications)),
          ],
          onTap: (int indexOfItem) {},
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
