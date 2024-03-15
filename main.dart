void main()
{

    List<Map<String,dynamic>>fruits=[
      {"name": "Banana","color":"Yellow","price":20.0},
      {"name": "Guava","color":"Green","price":40.0},
      {"name": "Orange","color":"Orange","price":80.0},];


    void diplayFuitDetails(List<Map<String,dynamic>> fruitList)
    {
      print("---------------------------------------");
      print("Original Fruit Details before Discount:");
      print("---------------------------------------");
         for(int i =0; i<fruitList.length;i++)
           {
            print("Name: ${fruitList[i]['name']},Color: ${fruitList[i]['color']},Price: \$${fruitList[i]['price']}");

           }
    }
    void applyPriceDiscount(List<Map<String,dynamic>> fruitList, double discount){
      print("--------------------------------------------");
      print('Fruit Details After Applying $discount% Discount:');
      print("--------------------------------------------");
      for(int i =0; i<fruitList.length;i++)
      {
       double  discountedPrice = fruitList[i]['price']*(1-discount/100);
       fruitList[i]['price']=discountedPrice.toStringAsFixed(2);
       print("Name: ${fruitList[i]['name']},Color: ${fruitList[i]['color']},Price: \$${fruitList[i]['price']}");
      }

    }

    diplayFuitDetails(fruits);
    applyPriceDiscount(fruits, 10.0);

}