## 1. dart语言特性中的循环语句定义和操作方法
### for 循环

```dart
var message = new StringBuffer("Dart is fun");//定义一个字符串变量message
for (var i = 0; i < 5; i++) {message.write('!');}//循环语句，在字符串变量message添加五个’！’
```

注：String是定义字符串常量不能够在改变，StringBuffer是定义字符串变量能够改变。

``` dart  
var callbacks = [ ];//定义一个列表callbacks
for (var i = 0; i < 2; i++) {callbacks.add(() => print(i));}//循环添加列表值0,1
callbacks.forEach((c) => c( ));//遍历callbacks
```

注：forEach不使用迭代计数器的遍历

 -  列表和集合可以用for-in来遍历其中的元素
 
``` dart 
var collection = [0, 1, 2];//定义一个列表collection
for (var x in collection) {print(x);}//用for-in语句遍历列表中的每个元素
```

###  while 和do-while 循环
 - while循环评估循环条件是在循环之前
 
```  dart
while (!isDone()) { doSomething();}//while循环，当isDone( )是假的时候执行循环
```

 - do-while循环评估条件是在循环之后
 
```dart
do {printLine();} while (!atEndOfPage());//do-while循环，当atEndOfPage()是假时执行循环
```
## 2. dart字符串的定义和操作方法

### 定义字符串

 - 可以用单引号，或者双引号
 
``` dart
var s1 = 'Single quotes work well for string literals.'; //定义字符串s1
var s2 = "Double quotes work just as well.";//定义字符串s2
```

### 操作方法
 - 可以用${expression}将expression的值放入字符串中，如果expression是一个标识符，可以省略{ }
 
``` dart
 var s = 'string interpolation';//定义字符串s
'Dart has $s, which is very handy.' == 'Dart has string interpolation, which is very handy.'
//利用$s代替字符串s，这里的s是一个标识符所以{ }可以省略。
'That deserves all caps. ${s.toUpperCase()} is very handy!'
== 'That deserves all caps.STRING INTERPOLATION is very handy!'
//利用${s.toUpperCase()}代替字符串s的大写形式，这里的{ }不能够省略。
```

 - 可以将多个字符串放在一起或者使用“+”来连接字符串
 
``` dart
 var s1 = 'String ' 'concatenation' 
" works even over line breaks.";//定义字符串s1
s1 == 'String concatenation works even over line breaks.'//字符串s1
var s2 = 'The + operator '
 +'works, as well.';//定义字符串s2
 s2=='The + operator works, as well.'//字符串s2
```

 - 使用三个单引号或者双引号来定义多行的字符串
 
``` dart
var s1 = '''You can create
multi-line strings like this one.''';//定义字符串s1
var s2 = """This is also a
multi-line string.""";//定义字符串s2
```

 - 	可以使用前缀r来创建一个未加工的字符串
 
```dart 
var s = r"In a raw string, even \n isn't special.";//定义字符串s，其中的\n并不会换行而是正常显示原始状态。
```

 - 可以定义数字常量、字符串常量、布尔常量的值，在编译过程中不会改变 
以下是定义的常量：

``` dart 
const aConstNum = 0;//定义数字常量aConstNum，值为0
const aConstBool = true;//定义布尔常量aConstBool，值为ture
const aConstString = 'a constant string';//定义字符串常量aConstString，值为a constant string
```

以下的定义不是常量：

``` dart 
var aNum = 0;//定义一个数字变量aNum，并为其赋值0
var aBool = true;//定义一个布尔变量aBool，并为其赋值ture
var aString = 'a string';//定义一个字符串变量aString，并未其赋值a string
const aConstList = const [1, 2, 3];//不能定义列表常量
```

常量可以用来定义字符串常量：

```dart  
const validConstString = '$aConstNum $aConstBool $aConstString';
```

 - 在一个字符串中搜索 
可以在字符串中搜索一个特殊的位置，也可以检查是否以某种模式开头或者结束。

``` dart 
assert('Never odd or even'.contains('odd'));//检查字符串中是否包含另一个字符串
assert('Never odd or even'.startsWith('Never'));//检查字符串是否以另一个字符串开头
assert('Never odd or even'.endsWith('even'));// 检查字符串是否以另一个字符串结尾
assert('Never odd or even'.indexOf('odd') == 6);//寻找一个字符串在另一个字符串中的位置
```

 - 从一个字符串中提取信息 
可以从字符串中提取个别的字母作为独自的字符串或者整型，也可以提取一个子串或者将一个字符串分为子串。

``` dart 
assert('Never odd or even'.substring(6, 9) == 'odd');//提取一个子串
使用串模式分离字符串：
var parts = 'structured web apps'.split('  ');//使用空格将字符串parts分为三个部分
assert(parts.length == 3);//字符串parts的长度为3
assert(parts[0] == 'structured');//字符串parts的第一部分为’structured’
```

``` dart 
assert('Never odd or even'[0] == 'N');//检查从字符串中得到的一个字符
```

```dart  
for (var char in 'hello'.split(''))  {print(char);}//使用一个空的参数分离字符串中的字符，并利用迭代方法将其输出
```

```dart  
var codeUnitList = 'Never odd or even'.codeUnits.toList();//定义一个列表，记录字符串中每个字符的ASCII代码
assert(codeUnitList[0] == 78);//字符N的ASCII代码为78
```

``` dart 
注：string = 'Dart';
string.codeUnitAt(0); // 68
string.codeUnits;     // [68, 97, 114, 116]
string.runes.toList(); // [68, 97, 114, 116]
```

 - 转换为大写字母或者小写字母（这种方法并不是对所有的语言适用，例如土耳其的一些字母就不能适用）
 
```dart  
assert('structured web apps'.toUpperCase() == 'STRUCTURED WEB APPS');//转换为大写字母
assert('STRUCTURED WEB APPS'.toLowerCase() =='structured web apps');//转换为小写字母
```

 - 修改空字符 
用trim( )删除字符串前面和后面的所有空白，用isEmpty检查一个字符是否为空。

```dart  
assert('  hello  '.trim() == 'hello');// 用trim( )删除字符串前面和后面的空白
assert(''.isEmpty);//检查字符是否为空
assert(!'  '.isEmpty);//只有空白的字符串不为空
```

 - 	替代字符串中的一部分replaceAll( ) 
字符串是不可变对象，这意味着你可以创造它们，但是不能够改变它们。

```dart  
var greetingTemplate = 'Hello, NAME!';//定义字符串greetingTemplate
var greeting = greetingTemplate .replaceAll(new RegExp('NAME'), 'Bob');
//利用replaceAll( )代替字符串greetingTemplate中的子串并赋值给字符串greeting
assert(greeting !=greetingTemplate); // 字符串greetingTemplate并没有被改变
```

 - 	构建一个字符串 
为了以编程方式生成一个字符串,可以使用 StringBuffer( ), 但是 StringBuffer( )不生成一个新的字符串对象直到toString( )被引用。writeAll( )方法有一个可选的第二个参数,允许您指定一个分隔符。

```dart  
var sb = new StringBuffer();//定义一个字符串变量sb并以编成方式生成一个字符串
sb..write('Use a StringBuffer for ')//用write写入字符串sb的内容
  ..writeAll(['efficient', 'string', 'creation'], '  ')
  //用writeAll写入字符串sb的一部分，第一个参数是写入的内容，第二个参数是分隔符
  ..write('.');//用write写入字符串sb内容
var fullString = sb.toString( );  //用toString( )将字符串sb赋值给字符串fullString
assert(fullString == 'Use a StringBuffer for efficient string creation.'); 
//字符串fullString与字符串sb内容相同
```

 - 	正则表达式
RegExp类提供了与JavaScript相同的功能的正则表达式。使用正则表达式进行高效搜索和字符串的模式匹配。

```dart  
var numbers = new RegExp(r'\d+');// 定义一个或多个数字的正则表达式。
注：\d 表示与一个数字字符匹配，等价于[0-9]。“+” 表示匹配前一个字符一次或多次。
var allCharacters = 'llamas live fifteen to twenty years';//定义一个字符串allCharacters
var someDigits = 'llamas live 15 to 20 years'; //定义一个字符串someDigits
assert(!allCharacters.contains(numbers));
//contains( )中使用正则表达式，字符串allCharacters中并没有包含数字，所以前面有一个！符号表示“非”
assert(someDigits.contains(numbers));// contains( )中使用正则表达式，字符串someDigits中包含数字

用“XX”代替字符串someDigits中所有的数字:
var exedOut = someDigits.replaceAll(numbers, 'XX'); 
//定义一个字符串变量exedOut，并用 “XX”替换字符串someDigits中的数字后赋值给字符串exedOut。
assert(exedOut == 'llamas live XX to XX years');//字符串exedOut
```

你也可以直接与RegExp类工作。Match类支持访问正则表达式。

```dart  
var numbers = new RegExp(r'\d+');// 定义一个或多个数字的正则表达式。
var someDigits = 'llamas live 15 to 20 years';// 定义一个字符串someDigits
检查在字符串中是否有匹配:
assert(numbers.hasMatch(someDigits));//检查字符串someDigits与正则表达式numbers匹配
for (var match in numbers.allMatches(someDigits)) //遍历字符串someDigits中与正则表达式numbers所有的匹配
 { print(match.group(0)); } // 15, 20
```

## 3. dart函数定义和使用方法

### 一. 函数的定义
我们都已经学过很多语言：c、python、javascript等等，所以函数的定义方法其实我们都已经非常清楚了，无非是函数类型、函数的参数、函数体等等，dart也不例外，但是这个语言也有它自己比较特殊的定义规则。
#### 1、函数类型和参数类型的省略
```dart
 isNoble(atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}//函数的类型和参数的类型都被省略
```

- **要点一：** dart语言中公用函数的函数类型和参数类型允许被省略

#### 2. 函数的参数

- **要点二**：
参数有两种类型，必须参数和**可选参数**，可选参数又分为命名可选参数和位置可选参数。
 
  区分项| 必须参数 | 可选参数  
 ------- | ---- | --- |
 特征（函数调用时） | 一定要赋值 |  可不赋值  
 定义方法 | 函数名（参数类型：参数名）  |  见下表   

  区分项| 命名可选参数 | 位置可选参数   
 ------- | ---- | ----- 
 特征 | 只带一个值 |  可带**多个值**   
 定义方法   | 函数名（{参数类型：参数名}  ） |  函数名（[参数类型：参数名] ）  

请看例子：
``` dart
//带有命名可选参数的函数1，命名可选参数用{}表示
void printfunc1(bool a,{string bold}) {
   print(a);
   if(bold!=null){print('string: $bold');}
}
//带有位置可选参数的函数2，位置可选参数用[]表示
void printfunc2(string a,[string bold]) {
   print(a);
   if(bold!=null){print('string: $bold');}//注意打印字符串的格式
}
//带有默认值的可选参数的函数3,const表示常量
void printfunc3({List<int> list: const[1, 2, 3]}) {
   print('list: $list');//注意打印数组的格式
}
//main函数
main(){
   printfunc1(a:true,bold:'apple');//请注意调用有参数的函数时参数值的书写格式
   printfunc2(a:'apple',bold:'banana orange');
   printfunc3();
   printfunc3(list:[4,5,6]);
}
```

- **注意点**：调用函数时的参数值的书写形式是：函数名（参数名：值）；
#### 3. 函数体
##### （1）引用和级联调用

- **要点三**：
 - “.”是引用一个对象上的方法或者字段，例如：对象.方法=......或对象.字段=......；
 - “..”是级联调用，返回调用对象自身，就是可以连续调用同一个对象上的多个方法，请看栗子

举个栗子：
``` dart 
main(){
//注意：这是一个语句，只有一个分号
  querySelector("#sample_text_id")//获取一个对象
  ..text="Click me!"//对方法的调用，此处为对该对象的text赋值
  ..onClick.listen(reverseText);//调用对象的其中某个子函数
}
```
##### （2）简写法
Dart语言里采用了一种简写的方法，让我们看看前面的几个函数用简写法怎么写呢？
``` dart
//上面第一个例子的另一种写法
bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;
```
```dart
//printfun3的简写法
void printfunc3({List<int> list: const[1, 2, 3]})=> print('list: $list');
```

- **要点四**
 - 当函数体中只有一个语句时，可以用**“=>”**代替**“{}”**
 -  当函数体中只有一个return语句时，可以省略return，直接写成**“函数名（参数）=>表达式”**（注意一定是一个表达式，例如a+b，而不是一个语句，如for循环语句）

##### （3）return语句

- **要点五：**所有的函数都有返回值，如果没有在函数体中添加return语句，系统会隐式地自动添加**return null;**

### 二.函数的使用方法
-----------------------------
#### 1、函数作为参数传递
```dart
var list = ['apples', 'oranges', 'grapes', 'bananas', 'plums'];
list.forEach((i) {
  print(list.indexOf(i).toString() + ': ' + i);
});//括号里是一个匿名函数,(i)为参数,{...}为函数体
```
上面的例子中，函数作为一个参数传给了list.forEach()这个函数。
#### 2、函数分配给变量
```dart
main() {
  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';//第一个等式右边是匿名函数
  print(loudify('apple'));
}//输出结果是：!!! APPLE !!!
```
在此例中，由于函数分配给了变量，因此，变量**“变成了”**一个**“函数”**！
## 4. dart中数组定义和使用方法
### 一.数组的定义
- **要点一：**定义方法可以用变量=[数组值]，或者变量=new List（）的方法
**注意**：
1、在上述两种方法的等号右边加上const可以获得编译时常量（Compile-time constant）
2、dart语言中的数组是用list表示的，并且定义时没有规定数组的长度，这与其他语言要区分开
例子：
```dart
var list = [1, 2, 3];//第一种方法
var list2 = new ();//第二种方法
var constantList = const [1, 2, 3];//获得一个const常量数组（值不允许修改）
```
### 二.数组的使用方法
- **要点二：**强制数组里的数据类型，可以用变量=<数据类型>[列表值]，或者变量=new List<数据类型>（）的方法
例子：
```dart 
var names = new List<String>();//将数组中的数据类型强制规定为字符串型
names.addAll(['Seth', 'Kathy', 'Lars']);//添加数组的值
```
## 5.dart中列表定义和使用方法
## 6.dart中 Map定义和使用方法
## 7. querySelector（）函数的详细API解释
注：API（Application Programming Interface）：应用程序编程接口
###用法：

``` dart 
Element querySelector(
String selectors
);
```

找到文件中与指定的组选择器匹配的第一个元素。
Selectors应该是一个使用CSS选择器语法的字符，常用的 CSS 选择器有 类选择器、ID 选择器和属性选择器。

``` dart 
var element1 = document.querySelector('.className');    //定义一个参数为“类”的querySelector（）函数
var element2 = document.querySelector('#id'); //定义一个参数为“id”的querySelector( )函数	
```

###源：

```  dart
Element querySelector(String selectors) => document.querySelector(selectors);
```

```  dart
void main() {
  querySelector("#sample_text_id")//获取id=" sample_text_id " 的第一个元素   
..text = "Click me!"//将找到的id=" sample_text_id "元素的text赋值为"Click me!"
    ..onClick.listen(reverseText);//点击之后text中的内容反过来显示
}
```

注：’. .’语法在前面的代码称为级联。使用级联,可以执行多个操作一个对象的成员。
Eg：1和2等价

```  dart
 1. var button = querySelector('#button');//获取id=”button”的第一个元素并赋值给button
button.text = 'Confirm';//将button的text赋值为“Confirm”
 2. querySelector('#button') // 获取id=”button”的第一个元素
  ..text = 'Confirm'   // 将获取元素的text赋值为“Confirm”
```

## 8. 详细解释dart如何操作html的文档
####  1. 创建一个新的dart应用
File -> New project -> Dart(命名为first) -> Uber Simple Web Application - an absolote bare-bones web app -> create
####  2. 编辑HTML文件
Dart 编辑器创建一个应用的时候， 也会创建一些模板 HTML 代码。 双击 index.html 打开该文件。可以看到里面会有如下内容：
``` dart 
<script defer type="application/dart" src="main.dart"></script>//将dart引入到html中
<script defer src="packages/browser/dart.js"></script>
```
第一个脚本文件包含了 first 应用的代码。type 属性指定了该脚本的类型 application/dart。src 属性告诉浏览器脚本文件的位置。Dart 代码文件应该和应用它的 HTML 文件放到同一个目录下。
第二个 script 标签引用了一个负责启动 Dart VM 的引导程序，并且处理不支持 Dart 的浏览器。
``` dart 
在<body></body>标签中写入<p id="test">Hello World!</p>//id=”test”的一行文字
```
保存文档。
####  3. 编辑 Dart 源代码
打开 main.dart 文件并修改 为如下代码：
``` dart 
import 'dart:html';//导入库
void main() {
  querySelector('#test').text = 'Wake up, sleepy head!';
}
```
import 命令导入了一个特别的库， 这样程序就可以使用这个库中的所有类和函数了。
使用 querySelector() 函数，将id=”test”的text属性修改为'Wake up, sleepy head!';
保存文档。
####  4. 运行
Run-Run ’index.html’完成运行
总的来说，dart是通过querySelector( )函数中的参数来对html文档进行操作，当然html文档中也要引用dart文件。

## 9. dart web app 应用程序组织结构的解释部分
### 1、数据传递
web app通常使用json文件来传递用户和服务器的数据
### 2、web app的语言和相应作用

| 语言 | dart | html | css |
------ | ------| ------ | ------
| 功能 | 对html进行**结构化修改**并实现**交互**和**动态特性** | 描述网页内容 | 网页的外观 |

### 3、组成部分：
**DOM树**（Document Object Model）、**节点**、**元素**、**html**、**dart语言**和**库**——来自[Dartwebdev](https://webdev.dartlang.org/tutorials/low-level-html/connect-dart-html)

DOM树描述了一个网页文件的节点关系（比如head、body各自是一个节点，他们下面还有其他的节点）并以树的形式展现，文件就是这棵树的根，dart和JavaScript可以直接修改这棵树来修改web文件的结构，而**querySelector()**则是根据CSS selector选取出相应的节点进行操作的函数，这是dart的**核心函数**。
## 10. dart可用的各种工具的解释部分
### 1、dartpad:
dartpad是一款开源工具，支持完整的dart语言和核心链接库，dartpad上有**dart**、**html**和**css**三种语言的界面，能够让**初学者**写出一个功能比较简单但是结构完整的**web app**，体验dart语言的特点以及web app的体系架构，当然初学者也可以从简单的**命令行app**入手，[dart官网](http://www.dartlang.org)中关于这两种app的实现都给出了详细的操作指导。而且dartpad的设计非常**人性化**，除了提示错误等基本的功能外，选中变量或者方法等任何一个元素，在dartpad的右下角都会有相应的提示，并提供了相应链接库的链接，是初学者**学习dart语言**和**了解dart核心链接库**的一个很好的平台。
### 2、IDE(集成开发环境)：
如果说上面的dartpad是给初学者做各种尝试的试验田，那么IDE就是给入门了的程序员们实现各种高大上的app和服务器的**终极实验室**了。官网中给出了几个常用的IDE以及一些不支持的但是开源的dart插件，但是dart官网对于写web APP推荐的是**webstorm**，IDE中提供的功能更加的完备，一方面是有**更好的写代码的体验**，最主要的是会有**智能的编码助手**（简单的举两个例子：1、在写代码的过程中只要输入几个字符，右下方就会出现一系列的方法或者与你所打的关键字相关的变量、类、函数等等；2，各种快捷键可以实现跳转到相关的函数定义的位置，能更方便写代码以及找bug）；另一方面，IDE提供的**设置断点、调试**等各种功能都能帮助用户能更快地找到自己的程序中出现的问题并及时修改。
### 3、SKDs（软件开发工具包）：
SDK中提供了一系列工具、链接库，方便用户使用各种各样的方法和功能。dart里的SDK有三种，针对三种不同的应用类型，包括网站app,脚本或服务器以及手机应用。我们这们课程用到的是第一种SDK。

## 11. 指引你到其他社区社区寻求dart相关问题帮助的解释部分
## 12. 从web storm软件菜单找出webstrom 中dart开发的帮助文档
