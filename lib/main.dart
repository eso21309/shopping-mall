import 'dart:io';
import 'shopping_mall.dart';

void main() {
  ShoppingMall shoppingMall = ShoppingMall();
  //이 생성자의 구조가 이해가 안됨. 또 대문자와 소문자의 차이
  bool isTerminated = false;
  //이건 무슨뜻이지??

//while 구분이 이해가 안됨
  while (!isTerminated) {
    print('----------------------------------------------------');
    print(
        '[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료');
    print('----------------------------------------------------');

    String? input = stdin.readLineSync();

//switch도 다시 공부 필요
    switch (input) {
      case '1':
        shoppingMall.showProducts();
      case '2':
        shoppingMall.addToCart();
      case '3':
        shoppingMall.showTotal();
      case '4':
        print('이용해 주셔서 감사합니다. 안녕히 가세요!');
        isTerminated = true;
      default:
        print('지원하지 않는 기능입니다! 다시 시도해 주세요');
    }
  }
}
