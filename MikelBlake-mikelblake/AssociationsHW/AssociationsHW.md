***************REDDIT ASSOCIATIONS***********

users
has_many :articles
has_many :comments
has_many :upvotes
  id
  name
  email

articles
belongs_to :users
has_many :comments
	user_id
	title
	content
	comments
	share

comments
belongs_to :users
belongs_to :articles
	user_id
	artile
	content

upvotes
belongs_to :users
	user_id

******************AMAZON*******************

users
has_one :cart
has_many_and_belongs_to_many :products
has_many :reviews
	id
	name
	email
	address


products
has_and_belongs_to_many :users
has_and_belongs_to_many :carts
has_many :reviews
	title
	description

reviews
belongs_to :users
belongs_to :products
	user_id
	title
	content
	created_at

cart
belongs_to :users
has_and_belongs_to_many :products
	user_id
	payment







