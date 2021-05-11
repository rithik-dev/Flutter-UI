class AppData {
  static const introScreens = [
    {
      'title': 'Select Restaurant',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'image':
          'https://images.unsplash.com/photo-1552566626-52f8b828add9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
    },
    {
      'title': 'Select Food',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'image':
          'https://images.unsplash.com/photo-1502301103665-0b95cc738daf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80',
    },
    {
      'title': 'Get Your Order',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'image':
          'https://images.unsplash.com/photo-1588964895597-cfccd6e2dbf9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80',
    },
  ];

  static const _topCategories = [
    {
      'title': 'Fast Food',
      'image':
          'https://img.icons8.com/fluent/48/000000/fast-food-drive-thru.png',
    },
    {
      'title': 'Fresh Food',
      'image': 'https://img.icons8.com/color/48/000000/group-of-vegetables.png',
    },
    {
      'title': 'Fresh Fruit',
      'image': 'https://img.icons8.com/fluent/48/000000/group-of-fruits.png',
    },
    {
      'title': 'Ice Cream',
      'image': 'https://img.icons8.com/dusk/48/000000/ice-cream-bowl.png',
    },
  ];
  static const topCategories = [
    ..._topCategories,
    ..._topCategories,
    ..._topCategories,
  ];

  static const _products = [
    {
      'name': 'Chicken Pops',
      'image': 'https://freepngimg.com/thumb/food/2-2-food-png-hd.png',
      'price': '\$14.99',
    },
    {
      'name': 'Italian Pizza',
      'image': 'https://freepngimg.com/thumb/pizza/19-pizza-png-image.png',
      'price': '\$20.99',
    },
    {
      'name': 'Veggie Burger',
      'image':
          'https://freepngimg.com/thumb/burger/2-2-burger-free-download-png.png',
      'price': '\$18.99',
    },
    {
      'name': 'Chicken Burger',
      'image':
          'https://freepngimg.com/thumb/burger%20sandwich/5-hamburger-burger-png-image.png',
      'price': '\$29.99',
    },
  ];

  static const products = [
    ..._products,
    ..._products,
    ..._products,
    ..._products,
    ..._products,
  ];

  static const paymentMethods = [
    {
      'name': 'MY CARD',
      'number': '4242 4242 4242 4242',
      'icon':
          'https://img.icons8.com/plasticine/100/000000/bank-card-back-side.png',
      'selected': true,
    },
    {
      'name': 'MY DEBIT CARD',
      'number': '6789 9876 1234 4321',
      'icon': 'https://img.icons8.com/office/40/000000/bank-card-back-side.png',
    },
    {
      'name': 'MY CREDIT CARD',
      'number': '1234 4321 9876 6789',
      'icon': 'https://img.icons8.com/fluent/48/000000/bank-card-back-side.png',
    },
  ];

  static const restaurantDetailsBackgroundImage =
      'https://images.unsplash.com/photo-1552566626-52f8b828add9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80';
  static const profilePicture =
      'https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80';
  static const addNewCardImage =
      'https://fm.cnbc.com/applications/cnbc.com/resources/product_select/2021/04/19/Bank_of_America_Travel_Rewards_Credit_Card_for_Students.png';
  static const indiaFlag = 'https://img.icons8.com/color/96/000000/india.png';

  static const orderTrackingTimeLineStages = [
    {
      'title': '10 Jun  9:10 AM',
      'subtitle': 'Order Created',
    },
    {
      'title': '10 Jun  9:15 AM',
      'subtitle': 'Delivery Processing',
    },
    {
      'title': '10 Jun  9:30 AM',
      'subtitle': 'Confirm Delivery Man',
    },
  ];
}
