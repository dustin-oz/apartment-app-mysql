### ⚙️ Steps taken to create this project

```bash
$ rails new apartment-app -d mysql -T
$ cd apartment-app
$ brew services start mysql
$ rails db:create
$ bundle add webpacker
$ bundle add react-rails
$ rails webpacker:install
$ rails webpacker:install:react
$ yarn add @babel/preset-react
$ yarn add @rails/activestorage
$ yarn add @rails/ujs
$ rails generate react:install
$ rails generate react:component App
$ bundle add devise
$ rails generate devise:install
$ rails generate devise User
$ rails db:migrate
$ rails generate controller Home
```

## 🛠 Configurations

### Devise Config
**config/environments/development.rb**
```ruby
This line added:
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```

**config/initializers/devise.rb**
```ruby
# This line replaced:
config.sign_out_via = :delete
# With this line:
config.sign_out_via = :get
```

File added in app/views/home called index.html.erb
**app/views/home/index.html.erb**
```javascript
<%= react_component 'App', {
  logged_in: user_signed_in?,
  current_user: current_user,
  new_user_route: new_user_registration_path,
  sign_in_route: new_user_session_path,
  sign_out_route: destroy_user_session_path
} %>
```

### React in Rails Config

**app/views/layouts/application.html.erb**
```ruby
# This line replaced:
<%= javascript_importmap_tags %>
# With this line:
<%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %>
```

**config/routes.rb**
```ruby
# These lines added:
get '*path', to: 'home#index', constraints: ->(request){ request.format.html? }
root 'home#index'
```

### React Routing Config
```bash
$ yarn add react-router-dom@5.3.0
```

**app/javascript/components/App.js**
```javascript
import {
  BrowserRouter as  Router,
  Route,
  Switch
} from 'react-router-dom'
```

### Reactstrap Config
```bash
$ bundle add bootstrap
$ mv app/assets/stylesheets/application.css app/assets/stylesheets/application.scss
$ yarn add reactstrap
```

**app/assets/stylesheets/application.scss**
```css
@import 'bootstrap';
```


## 🏡 Apartment Resource
The Devise User model is going to have an association with the Apartment model. In this situation, the User will have many apartments and the Apartments will belong to a User.

```bash
$ rails generate resource Apartment street:string city:string state:string manager:string email:string price:string bedrooms:integer bathrooms:integer pets:string image:text user_id:integer
$ rails db:migrate
```

### User and Apartment Associations
The Apartments will belong to a User and a User will have many apartments.

**app/models/apartment.rb**
```ruby
class Apartment < ApplicationRecord
  belongs_to :user
end
```

**app/models/user.rb**
```ruby
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :apartments
end
```

### Generate views for Devise .erb files (log-in, sign-up etc)
```
$ rails generate devise:views
```
### Output:
```bash
dustin@Macbook-Pro apartment-app % rails generate devise:views User
      invoke  Devise::Generators::SharedViewsGenerator
      create    app/views/users/shared
      create    app/views/users/shared/_error_messages.html.erb
      create    app/views/users/shared/_links.html.erb
      invoke  form_for
      create    app/views/users/confirmations
      create    app/views/users/confirmations/new.html.erb
      create    app/views/users/passwords
      create    app/views/users/passwords/edit.html.erb
      create    app/views/users/passwords/new.html.erb
      create    app/views/users/registrations
      create    app/views/users/registrations/edit.html.erb
      create    app/views/users/registrations/new.html.erb
      create    app/views/users/sessions
      create    app/views/users/sessions/new.html.erb
      create    app/views/users/unlocks
      create    app/views/users/unlocks/new.html.erb
      invoke  erb
      create    app/views/users/mailer
      create    app/views/users/mailer/confirmation_instructions.html.erb
      create    app/views/users/mailer/email_changed.html.erb
      create    app/views/users/mailer/password_change.html.erb
      create    app/views/users/mailer/reset_password_instructions.html.erb
      create    app/views/users/mailer/unlock_instructions.html.erb
```