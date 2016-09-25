##5.dart中列表定义和使用方法

在dart官网中，部分英文原文如下：

**Lists**
Perhaps the most common collection in nearly every programming language is the array, or ordered group of objects. In Dart, arrays are List objects, so we usually just call them lists.
Dart list literals look like JavaScript array literals. Here’s a simple Dart list:

```
var list = [1, 2, 3];
```
Lists use zero-based indexing, where 0 is the index of the first element and list.length - 1 is the index of the last element. You can get a list’s length and refer to list elements just as you would in JavaScript:
```
var list = [1, 2, 3];
assert(list.length == 3);
assert(list[1] == 2);

list[1] = 1;
assert(list[1] == 1);
```
To create a list that’s a compile-time constant, add const before the list literal:
```
var constantList = const [1, 2, 3];

// constantList[1] = 1; // Uncommenting this causes an error.
```
The List type has many handy methods for manipulating lists. For more information about lists, see Generics and Collections.

**根据我的理解，综合整个网站的数组介绍，我将其翻译为中文：**

在Dart中数组也叫列表list.

定义一个数组：
```
    var list = [1,2,3];  
    var constantList = const [1, 2, 3];//创建常量列表
```
  操作数组：
```
    var list = [1,2,3];  
    assert(list.length == 3);
    assert(list[1] == 2);
    
    list[1] = 1;
    assert(list[1] == 1)
```
  给数组添加元素：
```
    var list = [1,2,3];  
    list.add(4);  
```
  从数组中删除一定范围内的元素：
```
    var list = [1,2,3,4];  
    list.removeRange(2, 1); // remove the third element  
```





##6.dart中 Map定义和使用方法

在dart官网中，部分英文原文如下：

**Maps**

In general, a map is an object that associates keys and values. Both keys and values can be any type of object. Each key occurs only once, but you can use the same value multiple times. Dart support for maps is provided by map literals and the Map type.
Here are a couple of simple Dart maps, created using map literals:
```
var gifts = {
// Keys      Values
'first' : 'partridge',
'second': 'turtledoves',
'fifth' : 'golden rings'
};

var nobleGases = {
// Keys  Values
  2 :   'helium',
  10:   'neon',
  18:   'argon',
};
```
You can create the same objects using a Map constructor:
```
var gifts = new Map();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var nobleGases = new Map();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
```
Add a new key-value pair to an existing map just as you would in JavaScript:
```
var gifts = {'first': 'partridge'};
gifts['fourth'] = 'calling birds'; // Add a key-value pair
```
Retrieve a value from a map the same way you would in JavaScript:
```
var gifts = {'first': 'partridge'};
assert(gifts['first'] == 'partridge');
```
If you look for a key that isn’t in a map, you get a null in return:
```
var gifts = {'first': 'partridge'};
assert(gifts['fifth'] == null);
```
Use .length to get the number of key-value pairs in the map:
```
var gifts = {'first': 'partridge'};
gifts['fourth'] = 'calling birds';
assert(gifts.length == 2);
```
To create a map that’s a compile-time constant, add const before the map literal:
```
final constantMap = const {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

//constantMap[2] = 'Helium';//Uncommenting this causes an error.
```
**根据我的理解，结合网站更多例子，我将map部分翻译如下：**

映射即Map对象，定义一个map对象可以使用如下方式：
```
    var gifts = {  
    // Keys      Values
     'first' : 'partridge',
     'second': 'turtledoves',
     'fifth' : 'golden rings
     };
     
     var nobleGases = {
     // Keys  Values
     2 :   'helium',
     10:   'neon',
     18:   'argon',
     };
```
  使用这种方式，key只能使用字符串，如果使用Map构造函数，则key可以使用其他类型，如：
```
     var gifts = new Map();
     gifts['first'] = 'partridge';
     gifts['second'] = 'turtledoves';
     gifts['fifth'] = 'golden rings';
    
     var nobleGases = new Map();
     nobleGases[2] = 'helium';
     nobleGases[10] = 'neon';
     nobleGases[18] = 'argon';
```
  在map中值可以是任何对象或null,也可以像javascript中那样直接给map添加一个映射项：
```
    var gifts = { "first": "partridge" };  
    gifts["fourth"] = "calling birds";    // add a key-value pair  
```
  取得一个映射项的值：
```
    var gifts = { "first": "partridge" };  
    print(gifts['first']);                // partridge  
```
  如果map不存在某个key，则获取该key对应的值会返回null
  ```
var gifts = {'first': 'partridge'};
assert(gifts['fifth'] == null);
```
map中也提供length方法返回映射的项数，remove方法可以删除一个项





##11.指引你到其他社区社区寻求dart相关问题帮助的解释部分

在Community and Support栏目当中





##12. 从web storm软件菜单找出webstrom 中dart开发的帮助文档
点击help菜单栏，选择"help topics"选项，进入WebStorm 2016.2 Help页面，在how to 栏目中选择Dart Support选项，即可进入Dart开发帮助文档。
以下是Dart Support文档内容：

Dart Support

In this section:

    Dart Support
        Overview
    Preparing for Dart Development
    Using Integration with the Pub Tool
    Using Integration with the Dart Analysis Server
    Running and Debugging Dart Applications
    Testing Dart

Overview

WebStorm supports developing, running, and debugging Dart code. WebStorm recognizes *.dart files, and allows you to edit them providing full range of coding assistance. Dart files are marked with the icon_dart.png icon.

Dart is intended for developing Web and command-line applications. WebStorm supports both workflows.

For running and debugging Dart command-line applications, WebStorm provides a dedicated run/debug configuration of the type Dart Command Line Application.
To run and debug a Dart Web application in a browser, you either need to use the Dartium browser or have the Dart code translated into JavaScript.

Most browsers that work with JavaScript code do not natively process Dart code. The only exception is Dartium. This dart-oriented version of Chromium contains a built-in Dart VM and therefore can run Dart code directly. To be executed in any other browser, Dart code has to be compiled into JavaScript.

With the pub tool, the compilation is performed through the pub serve action using the built-in dart2js compiler.

You can run Dart Web application in any browser, while debugging is supported only in Dartium and Chrome. To run a Dart Web application you just need to open the starling HTML page in the browser of your choice. Debugging a Dart Web application is initiated through a run configuration of the type JavaScript Debug.

When the Dart development support is enabled, see Preparing for Dart Development, WebStorm provides full coding assistance, which involves:

Code completion for keywords, labels, variables, parameters and functions.
Error and syntax highlighting.
Code formatting and folding.
Numerous code inspections and quick-fixes.
Integration with the native Dart static analysis engine: all inconsistencies and potential problems are reported in the dedicated Dart Analysis Tool Window with the possibility to navigate to the fragment of the source code where the problem was detected.
Refactoring:
Common refactoring procedures, such as extract method , inline, rename/move, etc.
Dart-specific refactoring procedures, such as change signature, extract parameter, extract variable. 
See JavaScript-Specific Refactorings for details.
Code generation:
Generating code stubs based on file templates during file creation.
Navigation and search through the source code:
Navigating with Structure View.
Navigate | Implementation (Ctrl+Alt+B) from overridden method / subclassed class.


