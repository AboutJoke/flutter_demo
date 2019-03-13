import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(new MyDemo());

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
////    final wordPair = new WordPair.random();
//    return new MaterialApp(
////      title: 'Welcome to Flutter',
////      home: new Scaffold(
////        appBar: new AppBar(
////          title: new Text('Welcome to Flutter'),
////        ),
////        body: new Center(
//////          child: new Text(wordPair.asPascalCase),
////          child: new RandomWords(),
////        ),
////      ),
//
//      title: 'Startup Name Generator', //标题名称
//      theme: new ThemeData(
//        primaryColor: Colors.blueGrey, // 主题色
//      ),
//      home: new RandomWords(), //首页路由
//    );
//  }
//}
//
//class RandomWords extends StatefulWidget {
//  @override
//  createState() => new RandomWordsState();
//}
//
////StatefulWidget类本身是不变的，但是 State类在widget生命周期中始终存在.
//class RandomWordsState extends State<RandomWords> {
//  final _suggestions = <WordPair>[];
//  final _saved = new Set<WordPair>();
//  final _biggerFont = const TextStyle(fontSize: 18.0);
//
//  @override
//  Widget build(BuildContext context) {
////    final wordPair = new WordPair.random();
////    return new Text(wordPair.asPascalCase);
//
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Startup Name Generator'),
//        actions: <Widget>[
//          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
//        ],
//      ),
//      body: _buildSuggestions(),
//    );
//  }
//
//  Widget _buildSuggestions() {
//    return new ListView.builder(
//        padding: const EdgeInsets.all(16.0),
//        // 对于每个建议的单词对都会调用一次itemBuilder，然后将单词对添加到ListTile行中
//        // 在偶数行，该函数会为单词对添加一个ListTile row.
//        // 在奇数行，该函数会添加一个分割线widget，来分隔相邻的词对。
//        // 注意，在小屏幕上，分割线看起来可能比较吃力。
//        itemBuilder: (context, i) {
//          // 在每一列之前，添加一个1像素高的分隔线widget
//          if (i.isOdd) return new Divider();
//
//          // 语法 "i ~/ 2" 表示i除以2，但返回值是整形（向下取整），比如i为：1, 2, 3, 4, 5
//          // 时，结果为0, 1, 1, 2, 2， 这可以计算出ListView中减去分隔线后的实际单词对数量
//          final index = i ~/ 2;
//          // 如果是建议列表中最后一个单词对
//          if (index >= _suggestions.length) {
//            // ...接着再生成10个单词对，然后添加到建议列表
//            _suggestions.addAll(generateWordPairs().take(10));
//          }
//          return _buildRow(_suggestions[index]);
//        });
//  }
//
//  //每一个item
//  Widget _buildRow(WordPair pair) {
//    final alreadySaved = _saved.contains(pair);
//
//    return new ListTile(
//      title: new Text(
//        pair.asPascalCase,
//        style: _biggerFont,
//      ),
//      trailing: new Icon(
//        alreadySaved ? Icons.favorite : Icons.favorite_border,
//        color: alreadySaved ? Colors.red : null,
//      ),
//      onTap: () {
//        setState(() {
//          if (alreadySaved) {
//            _saved.remove(pair);
//          } else {
//            _saved.add(pair);
//          }
//        });
//      }, //click
//    );
//  }
//
//  void _pushSaved() {
//    Navigator.of(context).push(
//      new MaterialPageRoute(
//        //新页面
//        builder: (context) {
//          final tiles = _saved.map(
//            (pair) {
//              return new ListTile(
//                title: new Text(
//                  pair.asPascalCase,
//                  style: _biggerFont,
//                ),
//              );
//            },
//          );
//          final divided = ListTile.divideTiles(
//            context: context,
//            tiles: tiles,
//          ).toList();
//
//          return new Scaffold(
//            appBar: new AppBar(
//              title: new Text('Saved Suggestions'),
//              actions: <Widget>[
//                FlatButton(
//                  // i`m just lucky i study english just for fun [^] but cut love done
//                  child: Text("open new route"),
//                  //early dirty hurt urgent I`m working on it/ we have 30 minutes to kill [ə]
//                  textColor: Colors.blue,
//                  onPressed: () {
//                    //导航到新路由
//                    Navigator.push(context,
//                        new MaterialPageRoute(builder: (context) {
//                      return new NewRoute(); //eager teacher whatever sure  over my dead body I`m all ears [ə]
//                    })); //america suppose famous china and america should work together /have you thought about staying home? [ə]
////                    Navigator.pushNamed(context, "new_page");//[ a] calm chicago  father  like father ,like son / calm down there`s nothing to worry about
//                  },
//                ),
//              ],
//            ),
//            body: new ListView(children: divided),
//          );
//        },
//      ),
//    );
//  }
//}
//
//class NewRoute extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      routes: {
//        "new_page": (context) => NewRoute(),
//      },
////      home: CupertinoTestRoute(),
//      home: ParentWidget(),
////        home: new Scaffold(
////          appBar: new AppBar(
////            title: new Text("is a new route page"),
////          ),
////          body: Center(
////            child: new Text("page 2"),
////          ),
////        )
//    );
//  }
//}
//
/////
///// Widget管理自身状态
/////
//class TapBoxA extends StatefulWidget {
//  @override
////  State<StatefulWidget> createState() {
////    return _TapboxAState();
////  }
//
//  createState() => new _TapboxAState();
//}
//
//class _TapboxAState extends State<TapBoxA> {
//  bool _active = false;
//
//  void _handleTap() {
//    setState(() {
//      _active = !_active;
//    });
//  }
//
//  Widget build(BuildContext context) {
//    return new GestureDetector(
//      onTap: _handleTap,
//      child: new Container(
//        child: new Center(
//          child: new Text(
//            _active ? 'Active' : 'Inactive',
//            style: new TextStyle(fontSize: 32.0, color: Colors.white),
//          ),
//        ),
//        width: 200.0,
//        height: 200.0,
//        decoration: new BoxDecoration(
//          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
//        ),
//      ),
//    );
//  }
//}
//
/////
///// 父widget管理子widget的state
/////
//class ParentWidget extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return _ParentWidget();
//  }
//}
//
//class _ParentWidget extends State<ParentWidget> {
//  bool _active = false;
//
//  void _handleTapBoxChanged(bool newValue) {
//    setState(() {
//      _active = newValue;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('从本地获取图像'),
//      ),
//      body: new Center(
//          child: new Container(
//              decoration: new BoxDecoration(
//                  image: DecorationImage(
//        image: new AssetImage('images/blankpages_404.png'),
//      )))),
//    );
////    return new Container(
////      child: new TapBoxB(
////        active: _active,
////        onChanged: _handleTapBoxChanged,
////      ),
////    );
//  }
//}
//
//class TapBoxB extends StatelessWidget {
//  TapBoxB({Key key, this.active: false, @required this.onChanged})
//      : super(key: key);
//
//  final bool active;
//  final ValueChanged<bool> onChanged;
//
//  void _handleTap() {
//    onChanged(!active);
//  }
//
//  Widget build(BuildContext context) {
//    return new GestureDetector(
//      onTap: _handleTap,
//      child: new Container(
//        child: new Center(
//          child: new Text(
//            active ? 'Active' : 'Inactive',
//            style: new TextStyle(fontSize: 32.0, color: Colors.white),
//          ),
//        ),
//        width: 200.0,
//        height: 200.0,
//        decoration: new BoxDecoration(
//          color: active ? Colors.lightGreen[700] : Colors.grey[600],
//        ),
//      ),
//    );
//  }
//}
//
/////
///// 混合管理
/////
//class ParentWidgetC extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return _ParentWidgetC();
//  }
//}
//
//class _ParentWidgetC extends State<ParentWidgetC> {
//  bool _active = false;
//
//  void _handleTapBoxChanged(bool newValue) {
//    setState(() {
//      _active = newValue;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Container(
//      child: new TapboxC(
//        active: _active,
//        onChanged: _handleTapBoxChanged,
//      ),
//    );
//  }
//}
//
//class TapboxC extends StatefulWidget {
//  TapboxC({Key key, this.active: false, @required this.onChanged})
//      : super(key: key);
//
//  final bool active;
//  final ValueChanged<bool> onChanged;
//
//  _TapboxCState createState() => new _TapboxCState();
//}
//
//class _TapboxCState extends State<TapboxC> {
//  bool _highlight = false;
//
//  void _handleTapDown(TapDownDetails details) {
//    setState(() {
//      _highlight = true;
//    });
//  }
//
//  void _handleTapUp(TapUpDetails details) {
//    setState(() {
//      _highlight = false;
//    });
//  }
//
//  void _handleTapCancel() {
//    setState(() {
//      _highlight = false;
//    });
//  }
//
//  void _handleTap() {
//    widget.onChanged(!widget.active);
//  }
//
//  Widget build(BuildContext context) {
//    // 在按下时添加绿色边框，当抬起时，取消高亮
//    return new GestureDetector(
//      onTapDown: _handleTapDown,
//      // 处理按下事件
//      onTapUp: _handleTapUp,
//      // 处理抬起事件
//      onTap: _handleTap,
//      onTapCancel: _handleTapCancel,
//      child: new Container(
//        child: new Center(
//          child: new Text(widget.active ? 'Active' : 'Inactive',
//              style: new TextStyle(fontSize: 32.0, color: Colors.white)),
//        ),
//        width: 200.0,
//        height: 200.0,
//        decoration: new BoxDecoration(
//          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
//          border: _highlight
//              ? new Border.all(
//                  color: Colors.teal[700],
//                  width: 10.0,
//                )
//              : null,
//        ),
//      ),
//    );
//  }
//}
//
//class CupertinoTestRoute extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return CupertinoPageScaffold(
//      navigationBar: CupertinoNavigationBar(
//        middle: Text("Cupertino Demo"),
//      ),
//      child: Center(
//        child: CupertinoButton(
//            color: CupertinoColors.activeBlue,
//            child: Text("Press"),
//            onPressed: () {}),
//      ),
//    );
//  }
//}

class MyDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleLayout = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );
//    return titleLayout;

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(
            icon,
            color: color,
          ),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w300,
                color: color,
              ),
            ),
          )
        ],
      );
    }

    Widget buttonLayout = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textLayout = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.network(
              'https://images.unsplash.com/photo-1471115853179-bb1d604434e0?dpr=1&auto=format&fit=crop&w=767&h=583&q=80&cs=tinysrgb&crop=',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleLayout,
            buttonLayout,
            textLayout,
          ],
        ),
      ),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteWidget();
  }
}

class _FavoriteWidget extends State<FavoriteWidget> {
  @override
  Widget build(BuildContext context) {

    return null;
  }

}

//卡片图片
//class MyApp extends StatefulWidget {
//  @override
// createState() => new RandomWordsState();
//}
//
//class RandomWordsState extends State<MyApp> {
//  @override
//  Widget build(BuildContext context) {
//    return new Container(
//      decoration: new BoxDecoration(color: Colors.white),
//      child: new Center(
//          child: new Card(
//              elevation: 24.0,
//              child: new CircleAvatar(
//                backgroundImage: new NetworkImage(
//                  'https://images.unsplash.com/photo-1471115853179-bb1d604434e0?dpr=1&auto=format&fit=crop&w=767&h=583&q=80&cs=tinysrgb&crop=',),
//                backgroundColor: Colors.greenAccent,
//                radius: 90.0,
//              )
//          )
//
////            child: new Image.network(
////              'https://images.unsplash.com/photo-1471115853179-bb1d604434e0?dpr=1&auto=format&fit=crop&w=767&h=583&q=80&cs=tinysrgb&crop=',
////              width: 600,
////              height: 240,
////              fit: BoxFit.cover,
////            ),
////          )
////        child: new Text('Hello World',
////            textDirection: TextDirection.ltr,
////            style: new TextStyle(fontSize: 40.0, color: Colors.black87)),
//      ),
//    );
//  }
//}

