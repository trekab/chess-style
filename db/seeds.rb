User.create!([
  {name: "Arya", admin: false},
  {name: "Snow", admin: false},
  {name: "Sansa", admin: false},
  {name: "Robert", admin: false},
  {name: "Ned", admin: false}
])
Category.create!([
  {name: "Opening", priority: 1},
  {name: "Middle-game", priority: 2},
  {name: "End-game", priority: 3},
  {name: "Tactics", priority: 4},
  {name: "Strategy", priority: 5}
])
Article.create!([
  {title: "sem et tortor consequat id", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quam id leo in vitae turpis massa. Arcu dictum varius duis at consectetur lorem donec. In ornare quam viverra orci sagittis. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. Fusce ut placerat orci nulla pellentesque dignissim enim. Ut eu sem integer vitae. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Ut porttitor leo a diam sollicitudin. Sagittis eu volutpat odio facilisis. Id ornare arcu odio ut sem nulla pharetra. Risus at ultrices mi tempus imperdiet nulla. Varius vel pharetra vel turpis nunc. Quis viverra nibh cras pulvinar mattis nunc sed blandit libero. Consequat id porta nibh venenatis cras. Tortor posuere ac ut consequat semper viverra nam. Sagittis aliquam malesuada bibendum arcu vitae elementum. Amet nisl purus in mollis nunc sed.", image: nil, user_id: 1},
  {title: "sem et tortor consequat id", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quam id leo in vitae turpis massa. Arcu dictum varius duis at consectetur lorem donec. In ornare quam viverra orci sagittis. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. Fusce ut placerat orci nulla pellentesque dignissim enim. Ut eu sem integer vitae. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Ut porttitor leo a diam sollicitudin. Sagittis eu volutpat odio facilisis. Id ornare arcu odio ut sem nulla pharetra. Risus at ultrices mi tempus imperdiet nulla. Varius vel pharetra vel turpis nunc. Quis viverra nibh cras pulvinar mattis nunc sed blandit libero. Consequat id porta nibh venenatis cras. Tortor posuere ac ut consequat semper viverra nam. Sagittis aliquam malesuada bibendum arcu vitae elementum. Amet nisl purus in mollis nunc sed.", image: nil, user_id: 2},
  {title: "sem et tortor consequat id", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quam id leo in vitae turpis massa. Arcu dictum varius duis at consectetur lorem donec. In ornare quam viverra orci sagittis. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. Fusce ut placerat orci nulla pellentesque dignissim enim. Ut eu sem integer vitae. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Ut porttitor leo a diam sollicitudin. Sagittis eu volutpat odio facilisis. Id ornare arcu odio ut sem nulla pharetra. Risus at ultrices mi tempus imperdiet nulla. Varius vel pharetra vel turpis nunc. Quis viverra nibh cras pulvinar mattis nunc sed blandit libero. Consequat id porta nibh venenatis cras. Tortor posuere ac ut consequat semper viverra nam. Sagittis aliquam malesuada bibendum arcu vitae elementum. Amet nisl purus in mollis nunc sed.", image: nil, user_id: 3},
  {title: "sem et tortor consequat id", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quam id leo in vitae turpis massa. Arcu dictum varius duis at consectetur lorem donec. In ornare quam viverra orci sagittis. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. Fusce ut placerat orci nulla pellentesque dignissim enim. Ut eu sem integer vitae. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Ut porttitor leo a diam sollicitudin. Sagittis eu volutpat odio facilisis. Id ornare arcu odio ut sem nulla pharetra. Risus at ultrices mi tempus imperdiet nulla. Varius vel pharetra vel turpis nunc. Quis viverra nibh cras pulvinar mattis nunc sed blandit libero. Consequat id porta nibh venenatis cras. Tortor posuere ac ut consequat semper viverra nam. Sagittis aliquam malesuada bibendum arcu vitae elementum. Amet nisl purus in mollis nunc sed.", image: nil, user_id: 4},
  {title: "sem et tortor consequat id", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quam id leo in vitae turpis massa. Arcu dictum varius duis at consectetur lorem donec. In ornare quam viverra orci sagittis. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. Fusce ut placerat orci nulla pellentesque dignissim enim. Ut eu sem integer vitae. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Ut porttitor leo a diam sollicitudin. Sagittis eu volutpat odio facilisis. Id ornare arcu odio ut sem nulla pharetra. Risus at ultrices mi tempus imperdiet nulla. Varius vel pharetra vel turpis nunc. Quis viverra nibh cras pulvinar mattis nunc sed blandit libero. Consequat id porta nibh venenatis cras. Tortor posuere ac ut consequat semper viverra nam. Sagittis aliquam malesuada bibendum arcu vitae elementum. Amet nisl purus in mollis nunc sed.", image: nil, user_id: 5}
])
ArticleCategory.create!([
  {category_id: 1, article_id: 1},
  {category_id: 2, article_id: 1},
  {category_id: 3, article_id: 1},
  {category_id: 4, article_id: 1},
  {category_id: 5, article_id: 1},
  {category_id: 1, article_id: 2},
  {category_id: 2, article_id: 2},
  {category_id: 3, article_id: 2},
  {category_id: 4, article_id: 2},
  {category_id: 1, article_id: 3},
  {category_id: 2, article_id: 3},
  {category_id: 3, article_id: 3},
  {category_id: 1, article_id: 4},
  {category_id: 2, article_id: 4},
  {category_id: 1, article_id: 5}
])

Vote.create!([
  {user_id: 1, article_id: 1}
])
