class User {
  final String name;
  final String address;
  final String review;
  final String avatar;
  User({
   required this.name,
   required this.address,
   required this.review,
   required this.avatar
});

  static final users = [
    User(
      name: 'Tuan Tran',
      address: 'Danang, Vietnam',
      review: '127',
      avatar: 'assets/user/tuan_tran.png'
    ),
    User(
        name: 'Emmy',
        address: 'Hanoi, Vietnam',
        review: '127',
        avatar: 'assets/user/emmy.png'
    ),
    User(
        name: 'Linh Hana',
        address: 'Danang, Vietnam',
        review: '127',
        avatar: 'assets/user/linh_ho.png'
    ),
    User(
        name: 'Khai Ho',
        address: 'Ho Chi Minh, Vietnam',
        review: '127',
        avatar: 'assets/user/khai.png'
    )
  ];
}

