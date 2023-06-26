import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  // Map<String, dynamic> arg = {
  //   'name': 'Temitope James',
  //   'age': 30,
  //   'occupation': 'Software Engineer',
  //   'school': 'Uniben',
  // };

  String word = 'This is to be Transferred';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        // backgroundColor: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(
          child: const Text('Click Me'),
          // onPressed: () => {Navigator.pushNamed(context, '/about')}
          onPressed: () => {}),
      // ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // const Text(
                // title:
                const Center(
                  child: Text(
                    'Item 1',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'lex',
                    ),
                  ),
                ),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 120.0), // Symmetric padding
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 20.0),
                        ),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        print('Pressed');
                      },
                      child: const Text('Click Me')),
                ),
                const ListTile(
                  title: Text('Item 2'),
                ),
                Container(
                  width: 200,
                  height: 200,
                  // color: Theme.of(context)
                  //     .primaryColor, // Use primary color from the theme
                  color: Colors.red[100],
                ),
                const ListTile(
                  title: Text('Item 3'),
                ),
                const ListTile(
                  title: Text('Item 4'),
                ),
                const ListTile(
                  title: Text('Item 5'),
                ),

                const ListTile(
                  title: Text('Item 10'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
