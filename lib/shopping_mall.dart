import 'dart:io';
import 'product.dart';

class ShoppingMall {
  //쇼핑몰 클래스를 만들고 상품목록과 총금액의 변수를 만든다.
  //상품목록의 List도 변수다.
  List<Product> products = [];
  int total = 0;

  //생성자에 상품을 추가한다. 이유는?
  ShoppingMall() {
    products.add(Product('셔츠', 45000));
    products.add(Product('원피스', 30000));
    products.add(Product('반팔티', 35000));
    products.add(Product('반바지', 38000));
    products.add(Product('양말', 5000));
  }

  //쇼핑몰에서 구현되어야 하는 기능에 대한 클래스 메소드를 정의한다.
//상품 목록을 무조건 모두 보여줘야함! 그러려면? 반복적으로 저 프로덕트 값을 프린트해줘야함
  void showProducts() {
    for (final product in products) {
      print('${product.name} / ${product.price}원');
    }
  }

//어려움...
  void addToCart() {
    print('상품 이름을 입력해 주세요!');
    String? name = stdin.readLineSync();

    print('상품 개수를 입력해 주세요!');
    String inputCount = stdin.readLineSync() ?? "";
    // ?? "" 이 부분이 이해가 안감

    try {
      Product product = products.firstWhere((product) => product.name == name);
      int count = int.parse(inputCount);

      if (count > 0) {
        total += (product.price * count);
        print('장바구니에 상품이 담겼어요 !');
      } else {
        print('0개보다 많은 개수의 상품만 담을 수 있어요 !');
      }
    } catch (error) {
      print('입력값이 올바르지 않아요 !');
    }
  }

  void showTotal() {
    print('장바구니에 $total원 어치를 담으셨네요!');
  }
}
