import 'dart:ui';

class jobgo{



}


// ignore: camel_case_types
class jobs{
  String? title;
  String? subtitle;
  String? state;
  String? prise;
  String? img;
  Color? bgColor;
  bool? isBookMarks;

  jobs({
    this.title,
    this.subtitle,
    this.state,
    this.prise,
    this.img,
    this.bgColor,
    this.isBookMarks,
});
}

jobs  J = jobs();

class Jobcategories{
  String? title;
  bool? isSelect;

  Jobcategories({
    this.title,
    this.isSelect,
});
}

class Noti{
  String? title;
  String? prise;
  String? img;

  Noti({
    this.title,
    this.prise,
    this.img,
  });
}

class tipsforyou{
  String? title;
  String? img;
  Color? buttonColor;
  Color? shadowColor;
  Color? bgColor1;
  Color? bgColor2;

  tipsforyou({
    this.title,
    this.img,
    this.buttonColor,
    this.shadowColor,
    this.bgColor1,
    this.bgColor2,
  });
}