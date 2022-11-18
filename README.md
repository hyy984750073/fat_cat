# fat_cat

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Vscode如何及时提示Flutter代码
1、文件-》首选项-》设置
2、搜索设置输入“prevent”
3、把第一个“Editor>Suggest:Snippets Prevent Quick Suggestions 控制活动代码是否阻止快速建议。”的勾选去掉。
4、使用举例：鼠标放到‘Scaffold’上+Ctrl+单击  即可查看对应的函数详情


## 代码风格
1、文件命名风格lowercase_with_underscores：slider_menu.dart
2、使用UpperCamelCase 风格：Classes（类名）、 enums（枚举类型）、 typedefs（类型定义）、以及 type parameters（类型参数）、使用元数据注解的类@Foo
3、注解类的构造函数是无参函数，则可以使用一个 lowerCamelCase 风格的常量来初始化这个注解：@foo


## 色系：洛可可
由浅到深：#E8E7D2、#D2D5B8、#BDC2BB、#C9BA98 ? #C9BA9B


## 制定资源
Flutter 使用 pubspec.yaml 文件，位于项目根目录，来识别应用程序所需的资源。
1、指定文件
flutter:
  assets:
    - assets/my_icon.png
    - assets/background.png

2、如果要包含一个目录下的所有 assets，需要在目录名称的结尾加上 /：
flutter:
  assets:
    - directory/
    - directory/subdirectory/