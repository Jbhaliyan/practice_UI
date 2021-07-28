import 'package:flutter/material.dart';
import 'package:pinterest_clone/pageItems.dart';

class HomePage extends StatelessWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.amber,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "All",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Hairstyle",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Learn English",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            PageView(
              children: [
                GridPage(),
                GridPage(),
                GridPage(),
              ],
            ),
            Positioned(
              bottom: 50.0,
              right: 20.0,
              left: 20.0,
              child: Container(
                // margin: EdgeInsets.symmetric(horizontal: 100),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.grey[800],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.home,
                          color: Theme.of(context).primaryIconTheme.color,
                          size: Theme.of(context).primaryIconTheme.size,
                        ),
                        Icon(
                          Icons.search,
                          color: Theme.of(context).primaryIconTheme.color,
                          size: Theme.of(context).primaryIconTheme.size,
                        ),
                        Icon(
                          Icons.message_rounded,
                          color: Theme.of(context).primaryIconTheme.color,
                          size: Theme.of(context).primaryIconTheme.size,
                        ),
                        Icon(
                          Icons.person,
                          color: Theme.of(context).primaryIconTheme.color,
                          size: Theme.of(context).primaryIconTheme.size,
                        ),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
