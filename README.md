# FAQ widget (Frequently asked questions)

The FAQ is the most commonly used widget all over customer-facing projects.

## Installing

Use this package as a library.

1. [Check the latest version.](https://pub.dev/packages/faq/versions) Depend on it.
   Add this to your pubspec.yaml file:

```
dependencies:
  faq: ^0.0.4
```

2. Install it
   You can install packages from the command line:

```
with pub:
$ dart pub get

with Flutter:
$ flutter pub get
```

Alternatively, your editor might support dart pub get or flutter pub get. Check the docs for dart documents.

3. Import it Now in your Dart code:

```
import 'package:faq/faq.dart';
```

## How do I use them?

```
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            faqList(
              title: 'Expandable List demo',
              data: _generateData(),
            )
          ],
        ),
      ),
    );
  }

  List<List<String>> _generateData() {
    int numberOfGroups = 5;
    List<List<String>> results = List<List<String>>();
    for (int i = 0; i < numberOfGroups; i++) {
      // List<String> items = List<String>();
      // for (int j = 0; j < 1; j++) {
      //   items.add("Item $j in group $i");
      // }
      results.add([
        "Everything’s a widget in Flutter… so wouldn’t it be nice to know how to make your own? There are several methods to create custom widgets, but the most basic is to combine simple existing widgets into the more complex widget that you want. This is called composition."
      ]);
    }
    return results;
  }
}

```

## Author

- Samninder Singh [Github](https://github.com/samninderSingh/faq)
