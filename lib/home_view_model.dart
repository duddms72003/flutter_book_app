import 'package:flutter_book/user.dart';
import 'package:flutter_book/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//1.관리해야하는 상태클래스 만들기
class HomeState {
  User? user;
  HomeState(this.user);
}

//2.뷰모델 만들기. Notifier
class HomeViewModel extends Notifier<HomeState> {
  @override
  HomeState build() {
    return HomeState(null);
  }

  void getUser() async {
    UserRepository userRepository = UserRepository();
    User user = await userRepository.getUser();

    //상태를 받아오려면 state에 넣어주면 된다..
    state = HomeState(user);
    // state.user = user; 이런식으로 쓰면 에러는 안나는데 위젯에 알려주지 못함. 쓰나마나임
  }
}

//3.뷰모델을 위젯에게 공급해줄 관리자 만들기
