class Product {

  String name;
  String address;
  String price;
  String imageUrl;
  String size;
  String details;

  Product(this.name, this.price, this.address, this.imageUrl,this.size,this.details);

  static List<Product> generateRecommended(){

    return [
      Product("The Moon House","50000 BDT/month", "24 Kamal Ataturk, Banani, Dhaka", "assets/images/house01.jpeg","5000 sqft","It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
      Product("Nahid's Guiter","1000 BDT/week", "Kuril Badda, Dhaka", "assets/images/guiter.jpeg","6 String Guiter","It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
      Product("Jony's Snecker","100 BDT/day", "24 Kamal Ataturk, Banani, Dhaka", "assets/images/shoes.jpeg","42 Size","It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
      Product("The White House","35000 BDT/month", "34, Khilkhet, Dhaka", "assets/images/house02.jpeg","43000 sqft","It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
      Product("Sara Desen","10 BDT/week", "Sector 4, Uttara, Dhaka", "assets/images/books.jpeg","300 Pages","It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
    ];
  }

  static List<Product> generateBestOffer(){

    return [
      Product("The Moon House","5000 BDT/month", "24 Kamal Ataturk, Banani, Dhaka", "assets/images/offer01.jpeg","5000 sqft","It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
      Product("The Moon House","500 BDT/month", "24 Kamal Ataturk, Banani, Dhaka", "assets/images/offer02.jpeg","5000 sqft","It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
      Product("The Moon House","1100 BDT/month", "24 Kamal Ataturk, Banani, Dhaka", "assets/images/offer01.jpeg","5000 sqft","It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
    ];
  }
}