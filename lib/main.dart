import 'dart:io';
import 'shopping_mall.dart';

void main() {
  ShoppingMall shoppingMall = ShoppingMall();
  bool isTerminated = false;
  //isTerminated > 종료될때

//!isTerminated 종료되지 않았을때 while구문이 돌아간다는 뜻
  while (!isTerminated) {
    print('----------------------------------------------------');
    print(
        '[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료');
    print('----------------------------------------------------');

    String? input = stdin.readLineSync();

//switch는 각 케이스에 맞는 출력값이 나오는 것임. default값으로 케이스 외의 예외도 포함시킬 수 있음
    switch (input) {
      case '1':
        shoppingMall.showProducts();
      case '2':
        shoppingMall.addToCart();
      case '3':
        shoppingMall.showTotal();
      case '4':
        isTerminated = true;
        print('이용해 주셔서 감사합니다. 안녕히 가세요!');

      default:
        print('지원하지 않는 기능입니다! 다시 시도해 주세요');
    }
  }
}
