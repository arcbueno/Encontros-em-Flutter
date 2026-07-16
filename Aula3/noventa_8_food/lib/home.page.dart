import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final nameList = [
      'João',
      'Maria',
      'Pedro',
      'Ana',
      'Carlos',
      'Lucas',
      'Mariana',
      'Gabriel',
      'Julia',
      'Rafael',
    ];
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              for (var name in nameList) Text(name),
              SizedBox(height: 100),
              ...nameList.map((name) => Text(name)),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Clique aqui'),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: const Text('Clique aqui'),
              ),
              InkWell(
                onTap: () {
                  print(' TAP');
                },
                child: Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: Theme.of(context).colorScheme.copyWith(
                      primary: Colors.red,
                      onPrimary: Colors.white,
                    ),
                  ),
                  child: Builder(
                    builder: (context) {
                      return Container(
                        color: Theme.of(context).colorScheme.primary,
                        height: 100,
                        width: 100,
                        transform: Matrix4.rotationZ(0.5),
                        child: Center(child: Text('Clique aqui')),
                      );
                    },
                  ),
                ),
              ),
              // const Text('You have pushed the button this many times:'),
              // Padding(
              //   padding: const EdgeInsets.only(top: 20, bottom: 20),
              //   child: Text(
              //     'Isso é um texto',
              //     textAlign: TextAlign.center,
              //     style: const TextStyle(
              //       color: Colors.red,
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: const Color(0xFF007BFF),
              //     foregroundColor: Colors.white,
              //     padding: const EdgeInsets.symmetric(
              //       vertical: 10,
              //       horizontal: 20,
              //     ),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(5),
              //     ),
              //     elevation: 0,
              //   ),
              //   onPressed: () {},
              //   child: Text('Clique aqui'),
              // ),
              // Card(child: Text('Clique aqui')),
              // Container(
              //   margin: const EdgeInsets.all(30),
              //   padding: const EdgeInsets.all(20),
              //   width: 500,
              //   height: 500,
              //   alignment: Alignment.center,
              //   clipBehavior: Clip.hardEdge,
              //   // color: Colors.white, // Só se não tiver decoration
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(10),
              //     border: Border.all(color: Colors.black, width: 1),
              //   ),
              //   // foregroundDecoration: BoxDecoration(
              //   //   color: Colors.blue,
              //   //   borderRadius: BorderRadius.circular(10),
              //   //   border: Border.all(color: Colors.black, width: 1),
              //   // ),
              //   // transform: Matrix4.rotationZ(0.5),
              //   // transformAlignment: Alignment.center,
              //   constraints: BoxConstraints(maxWidth: 500, maxHeight: 500),
              //   child: Placeholder(),
              // ),
              // SizedBox(height: 100),
              // RichText(
              //   text: TextSpan(
              //     children: [
              //       TextSpan(
              //         text: 'Isso',
              //         style: TextStyle(
              //           color: Colors.red,
              //           fontSize: 20,
              //           fontWeight: FontWeight.normal,
              //           fontStyle: FontStyle.italic,
              //         ),
              //       ),
              //       TextSpan(
              //         text: ' é ',
              //         style: TextStyle(
              //           color: Colors.blue,
              //           fontSize: 15,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //       TextSpan(
              //         text: 'um texto',
              //         style: TextStyle(
              //           color: Colors.black,
              //           fontSize: 10,
              //           letterSpacing: 2,
              //           wordSpacing: 1,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(height: 100),
              // TextButton(
              //   onPressed: () {},
              //   style: TextButton.styleFrom(
              //     backgroundColor: Colors.red,
              //     foregroundColor: Colors.white,
              //     padding: const EdgeInsets.symmetric(
              //       vertical: 30,
              //       horizontal: 100,
              //     ),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              //   child: Text('Clique aqui'),
              // ),
              // TextButton(onPressed: () {}, child: Text('Clique aqui')),
              ElevatedButton(onPressed: () {}, child: Text('Clique aqui')),
              // OutlinedButton(onPressed: () {}, child: Text('Clique aqui')),
              // IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              // SizedBox(height: 200),
              // ElevatedButton(
              //   onPressed: () {},
              //   style: ButtonStyle(
              //     backgroundColor:
              //         WidgetStateProperty.fromMap(<WidgetState, Color?>{
              //           WidgetState.pressed: Colors.red,
              //           WidgetState.hovered: Colors.blue,
              //           WidgetState.focused: Colors.green,
              //           WidgetState.disabled: Colors.grey,
              //           WidgetState.selected: Colors.yellow,
              //           WidgetState.dragged: Colors.purple,
              //           WidgetState.error: Colors.red,
              //           WidgetState.scrolledUnder: Colors.purple,
              //         }),
              //   ),
              //   child: Text('Clique aqui'),
              // ),
              // SizedBox(height: 200),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
