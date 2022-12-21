import 'package:flutter/material.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Default')),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(22.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello Flutter',
                    style: Theme.of(context).textTheme.titleLarge),
                Text('Lorem Ipsum',
                    style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(height: 18.0),
                ElevatedButton(
                    onPressed: () {}, child: const Text('Hit me up')),
                Image.asset('assets/images/pict1.jpeg'),
                const SizedBox(height: 18.0),
                const Divider(),
                Material(
                  child: ListView(
                    shrinkWrap: true,
                    children: const <Widget>[
                      Card(child: ListTile(title: Text('One-line ListTile'))),
                      Card(
                        child: ListTile(
                          leading: FlutterLogo(),
                          title: Text('One-line with leading widget'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('One-line with trailing widget'),
                          trailing: Icon(Icons.more_vert),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: FlutterLogo(),
                          title: Text('One-line with both widgets'),
                          trailing: Icon(Icons.more_vert),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('One-line dense ListTile'),
                          dense: true,
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: FlutterLogo(size: 56.0),
                          title: Text('Two-line ListTile'),
                          subtitle: Text('Here is a second line'),
                          trailing: Icon(Icons.more_vert),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: FlutterLogo(size: 72.0),
                          title: Text('Three-line ListTile'),
                          subtitle: Text(
                              'A sufficiently long subtitle warrants three lines.'),
                          trailing: Icon(Icons.more_vert),
                          isThreeLine: true,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
