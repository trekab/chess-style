User.create!(name: 'Arya')
User.create!(name: 'Snow')
User.create!(name: 'Sansa')
User.create!(name: 'Brandon')
User.create!(name: 'Ned')

Article.create!(title: "Arya's first article", 
				text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam purus lectus, venenatis at risus sit amet, aliquet imperdiet tortor. Vestibulum et semper erat. Praesent quis velit a urna egestas efficitur. Proin ullamcorper sollicitudin sem, ac aliquam sem vulputate vitae. Aenean a nunc lorem. Etiam quis aliquet velit. Ut molestie, massa a vestibulum rutrum, diam velit feugiat neque, sit amet sagittis nulla nunc non ex. Nam feugiat risus sapien, sit amet dignissim leo aliquam non. Fusce suscipit fermentum tortor eu faucibus. Praesent maximus maximus cursus. Quisque augue urna, mollis vel accumsan eget, dapibus ac sapien. Integer eget massa nec nunc faucibus consectetur eget eleifend turpis.", 
				image: "http://placehold.it/350x200",
				user_id: "1")
Article.create!(title: "Snow's first article", 
				text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam purus lectus, venenatis at risus sit amet, aliquet imperdiet tortor. Vestibulum et semper erat. Praesent quis velit a urna egestas efficitur. Proin ullamcorper sollicitudin sem, ac aliquam sem vulputate vitae. Aenean a nunc lorem. Etiam quis aliquet velit. Ut molestie, massa a vestibulum rutrum, diam velit feugiat neque, sit amet sagittis nulla nunc non ex. Nam feugiat risus sapien, sit amet dignissim leo aliquam non. Fusce suscipit fermentum tortor eu faucibus. Praesent maximus maximus cursus. Quisque augue urna, mollis vel accumsan eget, dapibus ac sapien. Integer eget massa nec nunc faucibus consectetur eget eleifend turpis.", 
				image: "http://placehold.it/350x200",
				user_id: "2")
Article.create!(title: "Sansa's first article", 
				text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam purus lectus, venenatis at risus sit amet, aliquet imperdiet tortor. Vestibulum et semper erat. Praesent quis velit a urna egestas efficitur. Proin ullamcorper sollicitudin sem, ac aliquam sem vulputate vitae. Aenean a nunc lorem. Etiam quis aliquet velit. Ut molestie, massa a vestibulum rutrum, diam velit feugiat neque, sit amet sagittis nulla nunc non ex. Nam feugiat risus sapien, sit amet dignissim leo aliquam non. Fusce suscipit fermentum tortor eu faucibus. Praesent maximus maximus cursus. Quisque augue urna, mollis vel accumsan eget, dapibus ac sapien. Integer eget massa nec nunc faucibus consectetur eget eleifend turpis.", 
				image: "http://placehold.it/350x200",
				user_id: "3")
Article.create!(title: "Brandon's first article", 
				text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam purus lectus, venenatis at risus sit amet, aliquet imperdiet tortor. Vestibulum et semper erat. Praesent quis velit a urna egestas efficitur. Proin ullamcorper sollicitudin sem, ac aliquam sem vulputate vitae. Aenean a nunc lorem. Etiam quis aliquet velit. Ut molestie, massa a vestibulum rutrum, diam velit feugiat neque, sit amet sagittis nulla nunc non ex. Nam feugiat risus sapien, sit amet dignissim leo aliquam non. Fusce suscipit fermentum tortor eu faucibus. Praesent maximus maximus cursus. Quisque augue urna, mollis vel accumsan eget, dapibus ac sapien. Integer eget massa nec nunc faucibus consectetur eget eleifend turpis.", 
				image: "http://placehold.it/350x200",
				user_id: "4")
Article.create!(title: "Brandon's first article", 
				text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam purus lectus, venenatis at risus sit amet, aliquet imperdiet tortor. Vestibulum et semper erat. Praesent quis velit a urna egestas efficitur. Proin ullamcorper sollicitudin sem, ac aliquam sem vulputate vitae. Aenean a nunc lorem. Etiam quis aliquet velit. Ut molestie, massa a vestibulum rutrum, diam velit feugiat neque, sit amet sagittis nulla nunc non ex. Nam feugiat risus sapien, sit amet dignissim leo aliquam non. Fusce suscipit fermentum tortor eu faucibus. Praesent maximus maximus cursus. Quisque augue urna, mollis vel accumsan eget, dapibus ac sapien. Integer eget massa nec nunc faucibus consectetur eget eleifend turpis.", 
				image: "http://placehold.it/350x200",
				user_id: "5")

Vote.create!(user_id: 2, article_id: 1)
Vote.create!(user_id: 3, article_id: 1)
Vote.create!(user_id: 4, article_id: 1)
Vote.create!(user_id: 5, article_id: 1)
Vote.create!(user_id: 1, article_id: 2)
Vote.create!(user_id: 3, article_id: 2)
Vote.create!(user_id: 1, article_id: 3)

Category.create!(name: 'Opening', priority: 1)
Category.create!(name: 'Middle-game', priority: 2)
Category.create!(name: 'End-game', priority: 3)
Category.create!(name: 'Tactics', priority: 4)
Category.create!(name: 'Strategy', priority: 5)

ArticleCategory.create!(category_id: 3, article_id: 1)
ArticleCategory.create!(category_id: 1, article_id: 1)
ArticleCategory.create!(category_id: 4, article_id: 1)
ArticleCategory.create!(category_id: 5, article_id: 2)
ArticleCategory.create!(category_id: 2, article_id: 5)
ArticleCategory.create!(category_id: 3, article_id: 3)