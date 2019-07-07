What is the database structure?

1. User (Devise gem will cover the User)
    email, password for sure

    has_many :grants
    has_many :comments


2. Grant 
    user_id integer
    name string

    belongs_to :user
    has_many :comments 

3. Comments
    grant_id integer
    user_id integer
    body: text

    belongs_to :grant
    belongs_to :user
  
On to URL's and how we interact with them 

  1. resources :grant will cover all of the grant url's and since we know that a comment can't exist without a grant post than we can nest these routes within the grant routes. 
  
