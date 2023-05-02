import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: SafeArea(
        child: MyScaffold(),
      ),
    ),
  );
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: const BoxDecoration(color: Color.fromARGB(255, 53, 127, 223)),
      // Row is a horizontal, linear layout.
      child: Row(
        children: [
          Expanded(
              child: Center(
            child: title,
          )),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece
    // of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: [
          MyAppBar(
            title: Text(
              'Calculator',
              style: Theme.of(context) //
                  .primaryTextTheme
                  .titleLarge,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 366.0, right: 34.0),
              child: Text(
                '0',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ),
          Container(
            child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  ElevatedButton(
                    child: Text(
                      'C',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(
                      '±',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(
                      '%',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(
                      '÷',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  )
                ])),
          ),
          Container(
            child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  ElevatedButton(
                    child: Text(
                      '7',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(
                      '8',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(
                      '9',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(
                      'x',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  )
                ])),
          ),
          Container(
            child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  ElevatedButton(
                    child: Text(
                      '4',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(
                      '5',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(
                      '6',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(
                      '-',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  )
                ])),
          ),
          Container(
            child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  ElevatedButton(
                    child: Text(
                      '1',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(
                      '2',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(
                      '3',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(
                      '+',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  )
                ])),
          ),
          Container(
            child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  ElevatedButton(
                    child: Text(
                      '0',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(
                      '',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(
                      ',',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(
                      '=',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    onPressed: () {},
                  )
                ])),
          ),
        ],
      ),
    );
  }
}
