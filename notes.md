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

    resources :grants do 
      resources :comments, module: :grants
    end 
  In the controller we will have a grants folder which will hold the comments_controller.rb
  We will also have a grants_controller.rb however this will live outside of the grants folder. 

  2. Add form for new grant posts 
      grants/new is the url for the new grant form 
  
  3. Persists to the DB and redirects to the root_path

  
