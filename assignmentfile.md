## 1. dart语言特性中的循环语句定义和操作方法
### for 循环
``` 
var message = new StringBuffer("Dart is fun");//定义一个字符串变量message
for (var i = 0; i < 5; i++) {message.write('!');}//循环语句，在字符串变量message添加五个’！’
```
注：String是定义字符串常量不能够在改变，StringBuffer是定义字符串变量能够改变。
```  var callbacks = [ ];//定义一个列表callbacks
for (var i = 0; i < 2; i++) {callbacks.add(() => print(i));}//循环添加列表值0,1
callbacks.forEach((c) => c( ));//遍历callbacks
```
注：forEach不使用迭代计数器的遍历
 - 列表和集合可以用for-in来遍历其中的元素
```  
var collection = [0, 1, 2];//定义一个列表collection
for (var x in collection) {print(x);}//用for-in语句遍历列表中的每个元素
```
###    while 和do-while 循环
 - while循环评估循环条件是在循环之前
```  
while (!isDone()) { doSomething();}//while循环，当isDone( )是假的时候执行循环
```
 - do-while循环评估条件是在循环之后
```
do {printLine();} while (!atEndOfPage());//do-while循环，当atEndOfPage()是假时执行循环
```
## 2. dart字符串的定义和操作方法
### 定义字符串

 - 可以用单引号，或者双引号
``` 
var s1 = 'Single quotes work well for string literals.'; //定义字符串s1
var s2 = "Double quotes work just as well.";//定义字符串s2
```
### 操作方法
 - 可以用${expression}将expression的值放入字符串中，如果expression是一个标识符，可以省略{ }
``` 
 var s = 'string interpolation';//定义字符串s
'Dart has $s, which is very handy.' == 'Dart has string interpolation, which is very handy.'//利用$s代替字符串s，这里的s是一个标识符所以{ }可以省略。
'That deserves all caps. ${s.toUpperCase()} is very handy!' == 'That deserves all caps.STRING INTERPOLATION is very handy!'//利用${s.toUpperCase()}代替字符串s的大写形式，这里的{ }不能够省略。
```
 - 可以将多个字符串放在一起或者使用“+”来连接字符串
``` 
 var s1 = 'String ' 'concatenation' 
" works even over line breaks.";//定义字符串s1
s1 == 'String concatenation works even over line breaks.'//字符串s1
var s2 = 'The + operator '
 - 'works, as well.';//定义字符串s2
```
 - 使用三个单引号或者双引号来定义多行的字符串
``` 
var s1 = '''You can create
multi-line strings like this one.''';//定义字符串s1
var s2 = """This is also a
multi-line string.""";//定义字符串s2
```
 - 	可以使用前缀r来创建一个未加工的字符串
``` 
var s = r"In a raw string, even \n isn't special.";//定义字符串s，其中的\n并不会换行而是正常显示原始状态。
```
 - 可以定义数字常量、字符串常量、布尔常量的值，在编译过程中不会改变
以下是定义的常量：
```  
const aConstNum = 0;//定义数字常量aConstNum，值为0
const aConstBool = true;//定义布尔常量aConstBool，值为ture
const aConstString = 'a constant string';//定义字符串常量aConstString，值为a constant string
```
以下的定义不是常量：
```  
var aNum = 0;//定义一个数字变量aNum，并为其赋值0
var aBool = true;//定义一个布尔变量aBool，并为其赋值ture
var aString = 'a string';//定义一个字符串变量aString，并未其赋值a string
const aConstList = const [1, 2, 3];//不能定义列表常量
```
常量可以用来定义字符串常量：
```  
const validConstString = '$aConstNum $aConstBool $aConstString';
```
 - 在一个字符串中搜索
可以在字符串中搜索一个特殊的位置，也可以检查是否以某种模式开头或者结束。
```  
assert('Never odd or even'.contains('odd'));//检查字符串中是否包含另一个字符串
assert('Never odd or even'.startsWith('Never'));//检查字符串是否以另一个字符串开头
assert('Never odd or even'.endsWith('even'));// 检查字符串是否以另一个字符串结尾
assert('Never odd or even'.indexOf('odd') == 6);//寻找一个字符串在另一个字符串中的位置
```
 - 从一个字符串中提取信息
可以从字符串中提取个别的字母作为独自的字符串或者整型，也可以提取一个子串或者将一个字符串分为子串。
```  
assert('Never odd or even'.substring(6, 9) == 'odd');//提取一个子串
使用串模式分离字符串：
var parts = 'structured web apps'.split('  ');//使用空格将字符串parts分为三个部分
assert(parts.length == 3);//字符串parts的长度为3
assert(parts[0] == 'structured');//字符串parts的第一部分为’structured’
```
```  
assert('Never odd or even'[0] == 'N');//检查从字符串中得到的一个字符
```
```  
for (var char in 'hello'.split(''))  {print(char);}//使用一个空的参数分离字符串中的字符，并利用迭代方法将其输出
```
```  
var codeUnitList = 'Never odd or even'.codeUnits.toList();//定义一个列表，记录字符串中每个字符的ASCII代码
assert(codeUnitList[0] == 78);//字符N的ASCII代码为78
```
```  
注：string = 'Dart';
string.codeUnitAt(0); // 68
string.codeUnits;     // [68, 97, 114, 116]
string.runes.toList(); // [68, 97, 114, 116]
```
 - 转换为大写字母或者小写字母（这种方法并不是对所有的语言适用，例如土耳其的一些字母就不能适用）
```  
assert('structured web apps'.toUpperCase() == 'STRUCTURED WEB APPS');//转换为大写字母
assert('STRUCTURED WEB APPS'.toLowerCase() =='structured web apps');//转换为小写字母
```
 - 修改空字符
用trim( )删除字符串前面和后面的所有空白，用isEmpty检查一个字符是否为空。
```  
assert('  hello  '.trim() == 'hello');// 用trim( )删除字符串前面和后面的空白
assert(''.isEmpty);//检查字符是否为空
assert(!'  '.isEmpty);//只有空白的字符串不为空
```
 - 	替代字符串中的一部分replaceAll( )
字符串是不可变对象，这意味着你可以创造它们，但是不能够改变它们。
```  
var greetingTemplate = 'Hello, NAME!';//定义字符串greetingTemplate
var greeting = greetingTemplate .replaceAll(new RegExp('NAME'), 'Bob');//利用replaceAll( )代替字符串greetingTemplate中的子串并赋值给字符串greeting
assert(greeting !=greetingTemplate); // 字符串greetingTemplate并没有被改变
```
 - 	构建一个字符串
为了以编程方式生成一个字符串,可以使用 StringBuffer( ), 但是 StringBuffer( )不生成一个新的字符串对象直到toString( )被引用。writeAll( )方法有一个可选的第二个参数,允许您指定一个分隔符。
```  
var sb = new StringBuffer();//定义一个字符串变量sb并以编成方式生成一个字符串
sb..write('Use a StringBuffer for ')//用write写入字符串sb的内容
  ..writeAll(['efficient', 'string', 'creation'], '  ')//用writeAll写入字符串sb的一部分，第一个参数是写入的内容，第二个参数是分隔符
  ..write('.');//用write写入字符串sb内容
var fullString = sb.toString( );  //用toString( )将字符串sb赋值给字符串fullString
assert(fullString == 'Use a StringBuffer for efficient string creation.');  //字符串fullString与字符串sb内容相同
```
 - 	正则表达式
RegExp类提供了与JavaScript相同的功能的正则表达式。使用正则表达式进行高效搜索和字符串的模式匹配。
```  
var numbers = new RegExp(r'\d+');// 定义一个或多个数字的正则表达式。
注：\d 表示与一个数字字符匹配，等价于[0-9]。“+” 表示匹配前一个字符一次或多次。
var allCharacters = 'llamas live fifteen to twenty years';//定义一个字符串allCharacters
var someDigits = 'llamas live 15 to 20 years'; //定义一个字符串someDigits
assert(!allCharacters.contains(numbers));//contains( )中使用正则表达式，字符串allCharacters中并没有包含数字，所以前面有一个！符号表示“非”
assert(someDigits.contains(numbers));// contains( )中使用正则表达式，字符串someDigits中包含数字

// 用“XX”代替字符串someDigits中所有的数字
var exedOut = someDigits.replaceAll(numbers, 'XX'); //定义一个字符串变量exedOut，并用 “XX”替换字符串someDigits中的数字后赋值给字符串exedOut。
assert(exedOut == 'llamas live XX to XX years');//字符串exedOut
```
你也可以直接与RegExp类工作。Match类支持访问正则表达式。
```  
var numbers = new RegExp(r'\d+');// 定义一个或多个数字的正则表达式。
var someDigits = 'llamas live 15 to 20 years';// 定义一个字符串someDigits
//检查在字符串中是否有匹配
assert(numbers.hasMatch(someDigits));//检查字符串someDigits与正则表达式numbers匹配
for (var match in numbers.allMatches(someDigits)) //遍历字符串someDigits中与正则表达式numbers所有的匹配
 { print(match.group(0)); } // 15, 20
```
## 3. dart函数定义和使用方法
## 4. dart中数组定义和使用方法
## 5.dart中列表定义和使用方法
## 6.dart中 Map定义和使用方法
## 7. querySelector（）函数的详细API解释
注：API（Application Programming Interface）：应用程序编程接口
###用法：
```  
Element querySelector(
String selectors
);
```
找到文件中与指定的组选择器匹配的第一个元素。
Selectors应该是一个使用CSS选择器语法的字符，常用的 CSS 选择器有 类选择器、ID 选择器和属性选择器。
```  
var element1 = document.querySelector('.className');    //定义一个参数为“类”的querySelector（）函数
var element2 = document.querySelector('#id'); //定义一个参数为“id”的querySelector( )函数	
```
###源：
```  
Element querySelector(String selectors) => document.querySelector(selectors);
```
```  
void main() {
  querySelector("#sample_text_id")//获取id=" sample_text_id " 的第一个元素   
..text = "Click me!"//将找到的id=" sample_text_id "元素的text赋值为"Click me!"
    ..onClick.listen(reverseText);//点击之后text中的内容反过来显示
}
```
注：’. .’语法在前面的代码称为级联。使用级联,可以执行多个操作一个对象的成员。
Eg：1和2等价
```  
 1. var button = querySelector('#button');//获取id=”button”的第一个元素并赋值给button
button.text = 'Confirm';//将button的text赋值为“Confirm”
 2. querySelector('#button') // 获取id=”button”的第一个元素
  ..text = 'Confirm'   // 将获取元素的text赋值为“Confirm”
```
## 8. 详细解释dart如何操作html的文档
1. 创建一个新的dart应用
File -> New project -> Dart(命名为first) -> Uber Simple Web Application - an absolote bare-bones web app -> create
2. 编辑HTML文件
Dart 编辑器创建一个应用的时候， 也会创建一些模板 HTML 代码。 双击 index.html 打开该文件。可以看到里面会有如下内容：
```  
<script defer type="application/dart" src="main.dart"></script>//将dart引入到html中
<script defer src="packages/browser/dart.js"></script>
```
第一个脚本文件包含了 first 应用的代码。type 属性指定了该脚本的类型 application/dart。src 属性告诉浏览器脚本文件的位置。Dart 代码文件应该和应用它的 HTML 文件放到同一个目录下。
第二个 script 标签引用了一个负责启动 Dart VM 的引导程序，并且处理不支持 Dart 的浏览器。
```  
在<body></body>标签中写入<p id="test">Hello World!</p>//id=”test”的一行文字
```
保存文档。
3.	编辑 Dart 源代码
打开 main.dart 文件并修改 为如下代码：
```  
import 'dart:html';//导入库
void main() {
  querySelector('#test').text = 'Wake up, sleepy head!';
}
```
import 命令导入了一个特别的库， 这样程序就可以使用这个库中的所有类和函数了。
使用 querySelector() 函数，将id=”test”的text属性修改为'Wake up, sleepy head!';
保存文档。
4.	运行
Run-Run ’index.html’完成运行
总的来说，dart是通过querySelector( )函数中的参数来对html文档进行操作，当然html文档中也要引用dart文件。
## 9. dart web app 应用程序组织结构的解释部分
## 10. dart可用的各种工具的解释部分
## 11. 指引你到其他社区社区寻求dart相关问题帮助的解释部分
## 12. 从web storm软件菜单找出webstrom 中dart开发的帮助文档
