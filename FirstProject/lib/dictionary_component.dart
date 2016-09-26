import 'package:angular2/core.dart';
@Component(
    selector:'fruit_dictionary',
    styleUrls: const['dictionary_component.css'],
    templateUrl: 'dictionary_component.html')
class DictionaryComponent{
 String Translation='';
 String Word='';
 String ButtonText='请输入一个水果';
 bool isButtonEnabled=false;
  //文本框中输入时，翻译结果初始化
 // 输入前后按钮内容的变化
 void inputWord(String word) {
    Word=word;
    if(word.trim().isEmpty)
    {
      ButtonText='请输入一个水果';
      isButtonEnabled=false;
    }
    else
    {
      Translation='';
      ButtonText='翻译';
      isButtonEnabled=true;
    }
  }
 //点击按钮时将值传入Translation
  void translateWord(){
    if(Word=='apple'){
      Translation='苹果！';
    }
  }

}