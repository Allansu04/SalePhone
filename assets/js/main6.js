var app = new Vue({
  el: '#app',
  data: {
    itemList: [{
        id: '1',
        itemName: 'Apple Iphone11 6.1吋 128GB 黑',
        imgUrl: '../assets/img/apple13.jpg',
        price: '12000',
        count: '0'
      },
      {
        id: '2',
        itemName: 'Sony Xperia XZ 5.2吋 64GB 藍',
        imgUrl: '../assets/img/sony23.jpg',
        price: '3000',
        count: '0'
      },
      {
        id: '3',
        itemName: 'Sony Xperia C3 5.5吋 8GB 黑',
        imgUrl: '../assets/img/sony33.jpg',
        price: '800',
        count: '0'
      },
      {
        id: '4',
        itemName: 'Samsung Note 5 5.7吋 32GB 金',
        imgUrl: '../assets/img/sam13.jpg',
        price: '2000',
        count: '0'
      },
      {
        id: '5',
        itemName: 'Sony Xperia Z1 5.0吋 16GB 白',
        imgUrl: '../assets/img/sony13.jpg',
        price: '500',
        count: '0'
      },
      {
        id: '6',
        itemName: 'SAMSUNG Galaxy A70 6.7吋 128GB 黑',
        imgUrl: '../assets/img/sam23.png',
        price: '5000',
        count: '1'
      },
      {
        id: '7',
        itemName: 'SAMSUNG Galaxy Note10lite 6.7吋 128GB 黑',
        imgUrl: '../assets/img/sam43.jpeg',
        price: '9000',
        count: '0'
      },
      {
        id: '8',
        itemName: 'SAMSUNG Galaxy Note 10+ 6.8吋 256GB 黑',
        imgUrl: '../assets/img/sam33.jpg',
        price: '15000',
        count: '0'
      },
    ]
  },
  methods: {
    handlePlus: function (item) {
      if (item.count < 1) {
        item.count++;
      }

    },
    handleSub: function (item) {
      if (item.count > 0) {
        item.count--;
      }
    },
    handledelete: function (index) {
      console.log(this);
      this.itemList.splice(index, 1);
    }

  },
  computed: {

  }
})