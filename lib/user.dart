//서버에서 데이터를 가져오는 모델 클래스
class User {
  String name;
  int age;
  User({
    required this.name,
    required this.age,
  });

  //named 생성자
  User.fromJson(Map<String, dynamic> map)
      : this(
          name: map['name'],
          age: map['age'],
        );

  //toJson 메서드
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}
