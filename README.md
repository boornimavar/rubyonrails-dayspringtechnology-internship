# Day 1 of rubyonrails-dayspringtechnology-internship

This repository contains my daily tasks, documentation, and submissions for my 3-month internship.

The first day of my Ruby on Rails internship started with learning about Ruby and its framework, Rails. I got to know that Rails applications are built using Ruby, but Ruby itself is a standalone programming language. I also started learning about Ruby version managers like RVM.

I installed Ruby, Rails, and RubyGems, and along the way I created and ran my first `.rb` file, which prints "first day of learning ruby!".

## Some commands I learned on Day 1
To view the installed versions of Ruby, Rails, and RubyGems on Windows:
- `ruby -v`
- `rails -v`
- `gem -v`

## How to save and run a `.rb` file
1. Create a Ruby file (example: `day1.rb`)
2. Write Ruby code inside the file
3. Save the file
4. Run the file using the command:
   ruby day1.rb

## Rails
Rails is a web framwwork of ruby, whic follows MVC archietecture.
M -> Models
V -> Views
C -> Controller
i will talk about these in detail later!

## Creating a rails Aplliaction
1. rails new my_app -d postgresql 
   (witout specifying database name, rails use sqlite by default)
2. cd appication_name
3. rails db:create
4. rails server 
now the rails appication my_app is live now!


# Day 2 – Models, Database & Rails Structure

The second day focused on generating models using scaffolding in a Rails application, creating database tables with columns and rows, and a full-fledged session on the file structure of a Ruby on Rails project. We especially explored the `config`, `bin`, and `db` folders, along with the `Rakefile`, schema file, and database migrations.

## Rails Scaffolding

Scaffolding is a shortcut in Rails that generates multiple components at once, including:
- Model
- Controller
- Views
- Routes
- migration
It helps in quickly setting up CRUD functionality.
Generating only a controller does not create models, migrations, or views automatically.

## RESTful Actions in Rails
Rails through resources, provides 7 standard RESTful actions for any model:

- `index`
- `show`
- `new`
- `create`
- `edit`
- `update`
- `destroy`
If we remove the plural form `resources` → `resource`, the `index` action is not generated.

## Important Rails Folders & Files
- bin → Contains executable files used by Rails 
- config → Contains configuration files such as `routes.rb`
- db → Contains migrations, `schema.rb`
- db/migrate/ → Contains migration files that define database changes
- Rakefile → Defines rake tasks used for database and application management
- schema.rb → Represents the current structure of the database

## Skip Commands
Rails provides `--skip` commands while creating a new application to avoid installing unnecessary components.  


# Day 3 – Rails Components, Architecture 

The third day of the Ruby on Rails internship focused on understanding the internal components of Rails, application architecture, file storage mechanisms in Rails applications.

## Core Rails Components
Rails is composed of several built-in components that work together to handle web application responsibilities:

### Action Controller
- Handles incoming HTTP requests
- Manages redirects, rendering, and sessions
### Action View
- Responsible for rendering views (`.html.erb` files)
### Active Record
- Acts as the ORM (Object Relational Mapping) layer
- Maps Ruby models to database tables
### Active Model
- Provides model-like behavior without database persistence
- Used for validations, form objects, and service objects
### Active Job
- Manages background jobs
- Used for tasks like email delivery and file processing
### Action Mailer
- Handles sending emails
- Uses views for email templates
### Action Text
- Allows formatted content such as bold text, links, and embedded media

## File Storage in Rails
### Active Storage
- Built-in Rails solution for file uploads
- Supports local and cloud storage (AWS S3, GCP, etc.)
- Introduced in Rails 5.2 and significantly improved in later versions

### CarrierWave
- Third-party gem for file uploads
- Still usable, but Active Storage is the preferred approach in modern Rails applications

## Testing in Rails
- Default testing framework: **MiniTest**
- Popular alternative: **RSpec**
- Testing is commonly done for:
  - Models
  - Controllers
  - Jobs
  - Mailers

## Rails Folders & Files

## `db/`
- Contains database-related files
- `migrate/` → database migrations
- `schema.rb` → current database structure
- `seeds.rb` → seed data

## `storage/`
- Used by Active Storage for uploaded files

## `tmp/`
- Stores temporary files such as cache and server pids
- Safe to delete; regenerated automatically

## `log/`
- Contains application logs
- Useful for debugging and tracking errors

## `Rakefile`
- Defines rake tasks for database and application management

## Bundler Commands
- `bundle install` → installs required gems
- `bundle update` → updates gems to newer versions

## Best Practices
- **DRY (Don’t Repeat Yourself)** principle
- **Fat models, thin controllers**


## Day 4 – Ruby Variables, Methods & Core Concepts

The fourth day of the Ruby on Rails internship focused on understanding Ruby fundamentals, including different types of variables, methods, data types.

## Types of Variables in Ruby

### Local Variables
- Defined using normal naming conventions
- Scoped to the method or block where they are declared    and cannot be accessed outside that scope

### Instance Variables
- Prefixed with `@`
- Belong to an object
- Accessible across all instance methods of the same object

### Class Variables
- Prefixed with `@@`
- Shared across a class and all its instances

### Global Variables
- Prefixed with `$`
- Accessible throughout the entire application

### Constants
- Written in uppercase
- Used for values that should not change

## Methods in Ruby

### Instance Methods
- Defined normally inside a class
- Called on objects created from the class

### Class Methods
- Defined using `self.method_name`
- Called directly on the class

### Data Types in Ruby
- Integer
- String
- Boolean
- Nil
- Symbol

## Common Inbuilt Methods
- `class` → returns the class of an object
- `object_id` → returns the unique identifier of an object

# Day 5 – Ruby Input/Output, Strings & Data Types

The fifth day of the Ruby on Rails internship focused on understanding Ruby input and output methods, string behavior,core data types, and handling user input using method chaining.

## Output Methods in Ruby
Ruby provides different ways to print output to the console.

## puts
Prints the output and automatically adds a new line.

## print
Prints the output without adding a new line unless explicitly specified.

## String Interpolation
String interpolation allows inserting variables inside strings using #{}.
It works only with double-quoted strings and is commonly used to generate dynamic output.

## Comments in Ruby
Single-line comments are written using #.
Multi-line comments are written using =begin and =end, and everything inside them is ignored during execution.

## String vs Symbol
Strings are mutable, meaning they can be changed or reinitialized, which may result in a new object being created in memory.
Symbols are immutable and retain the same object identity.

## Ruby Data Types
Ruby is completely object-oriented and every value belongs to a class.

- Integer
  Represents whole numbers.
- Float
  Represents decimal values.
- String
  Represents text data.
- Symbol
  Immutable identifier commonly used as hash keys.
- Array
  Stores ordered collections of elements.
- Hash
  Stores key-value pairs.
- Boolean
  true or false values used for conditional logic.
- Nil
  Represents the absence of a value and nil itself is an object in Ruby.

## User Input in Ruby
User input is handled using the gets method.

## gets
Takes input from the user.

## chomp
Removes the trailing newline character from input.

## to_i / to_f
Used for type conversion.

## method chaining
Calling multiple methods together is known as method chaining and helps in writing clean and concise code.

## Day 6 – Loops and Array Methods in Ruby

The sixth day focused on understanding different types of loops in Ruby, common loop control keywords, and frequently used array methods.

## Loops in Ruby

Ruby provides multiple ways to perform iteration depending on the use case.

### for loop
The `for` loop is commonly used with ranges and arrays.

- `..` includes the last value in the range
- Iteration happens automatically

### while loop
The `while` loop runs as long as the condition remains true.

- Variables must be initialized before the loop
- Condition is checked before every iteration

### loop do
The `loop do` construct runs infinitely unless explicitly stopped.

- Requires a `break` condition
- Useful when exit conditions are defined inside the loop

### until loop
The `until` loop runs until the condition becomes true.

- Opposite behavior of `while`
- Executes while the condition is false

## Loop Control Keywords

### `break`
Used to exit a loop immediately when a condition is met.

### `next`
Skips the current iteration and moves to the next one.

## Array Methods

Ruby provides powerful iterator methods to work with arrays.

### `select`
Returns elements that satisfy the given condition.

### `reject`
Removes elements that satisfy the given condition.

### `map` / `collect`
Returns a new array by transforming each element.

### `each`
Iterates over elements but returns the original array.

### `redo` Keyword
The `redo` keyword repeats the current iteration without re-evaluating the loop condition.

Initially, this can be confusing because using `redo` incorrectly can cause an infinite loop.
`redo` is not meant to be used casually. It is useful only when the same step needs to be retried until valid input or a specific condition is met.

A common real-world use case is input validation, where the user is asked to retry until correct input is provided.


# Day 7 – Inheritance in Ruby

The seventh day focused on understanding inheritance in Ruby, method lookup, and how child classes interact with parent classes using the `super` keyword.

## Naming Conventions
Ruby follows specific naming conventions to maintain readability and consistency.

- Methods and variables use `snake_case`
- Classes use `CamelCase`
- Constants and global values are written in `UPPER_CASE`

## Inheritance
Inheritance allows a class (child) to reuse methods and behavior from another class (parent).  
The child class can also override parent methods if needed.

## Method Overriding
A child class can redefine a method that already exists in the parent class.  
When overridden, the child’s method is executed instead of the parent’s.

## Method Lookup Path
When a method is called, Ruby searches for it in a specific order called the method lookup path.

The lookup generally follows this order:
- Child class
- Parent class
- Object
- Kernel
- BasicObject

This explains how Ruby decides which method to execute.

## `super` Keyword
The `super` keyword is used inside a child class to call the parent class’s method with the same name.  
It helps extend existing behavior instead of completely replacing it.

## `super` with `initialize`
`super` can also be used inside constructors to reuse initialization logic from the parent class.  
This avoids duplicate code and keeps initialization centralized.

## `respond_to?` Method
The `respond_to?` method is used to check whether an object can respond to a specific method.  
It returns `true` or `false`.

## Dynamic Typing in Ruby
Ruby supports dynamic typing, which means the same method can work with different data types.  
Type checking is handled at runtime, not at compile time.

## Method Overriding and Kernel Methods

In Ruby, many commonly used methods such as `puts` come from the `Kernel` module.  
The `Kernel` module is automatically included in the `Object` class, which means all Ruby objects can access these methods.

Because of this, methods like `puts` are available everywhere without explicitly calling `Kernel.puts`.

## Overriding Built-in Methods

A class can define a method with the same name as a built-in method.  
When this happens, Ruby uses the class’s method instead of the one from `Kernel`.

In the example, the `puts` method is redefined inside a class.  
When `puts` is called on an object of that class, Ruby executes the custom method instead of the default `Kernel#puts`.

This behavior follows Ruby’s method lookup path:
- Ruby first checks the object’s class
- Then its parent classes
- Then `Object`, `Kernel`, and finally `BasicObject`

# Day 8 – Conditionals and Access Modifiers

The eighth day focused on understanding conditional statements in Ruby and how method visibility is controlled using access modifiers.

## Conditionals in Ruby

Ruby provides keywords that make conditions readable and expressive.

- `if` executes when the condition is true
- `unless` executes when the condition is false (means if not)
- `until` runs a loop until the condition becomes true

```ruby
age = 18

if age >= 18
  puts "Adult"
end

unless age < 18
  puts "Eligible"
end

count = 1
until count > 3
  puts count
  count += 1
end
```

These keywords make Ruby code read close to plain English.

## One-line Conditionals

Ruby allows writing conditions in a single line.

```ruby
puts "Adult" if age >= 18
puts "Minor" unless age >= 18
```

- Reduces code length
- Common Ruby style used in real programs

## `case` Statement

The `case` statement is used when checking multiple conditions.

```ruby
day = "Sunday"

case day
when "Sunday"
  puts "Holiday"
when "Monday"
  puts "Work day"
else
  puts "Normal day"
end
```

- Cleaner than multiple if-elsif
- Improves readability and structure

## Access Modifiers in Ruby

Access modifiers control who can access methods inside a class.

## `public`

- Accessible from anywhere
- Default method visibility

## `private`

- Accessible only inside the class

```ruby
class User
  def display
    greet
  end

  private

  def greet
    "Hello"
  end
end
```

## `protected`

- Accessible within the class and by objects of the same class

```ruby
class User
  attr_reader :age

  def older_than?(other_user)
    age > other_user.age
  end

  protected

  attr_reader :age
end
```

# Day 9 - Validation

 Before saving the data to the database, it is always useful and precautionary to check whether the data is appicable and if it meets the required measures.

## Types of vaidation
1. standard vaidation (validates: inbuilt_method)
2. custom validation  (validate: custom_function)

## standard validation 
  ## its when the deafult or pre built vaidations comes into play.
  ## for example using `required:true` in form validations of any fields.

## custom validation
  ## it is when we manually specify, how the error should look like and when the error should arise. we can specify this by using `conditional statements`

# Day 10     

# Day 12 - Understanding MVC and Routes of Rails and Action Components of Ruby

- This session was all about understanding models, views, controller and routes better.
- One of the ways to get a hold of this topic was getting to know about Action Components of Rails.

## Rails Flow

- Knowing about what is happening in the background is important as it is important as doing stuff manually, like how the localhost perfectly takes to the specified route when we only make changes to the files of the application physically.

- Route → Controller action (def) → View (.html.erb) → Response

- To understand this better, we made some changes to Rails application files and understood why the error arises.

## 1. Remove def index from products_controller.rb

- `NoMethodError in Cafes#index`
- `undefined method 'each' for nil`

```ruby
def index
  @cafes = Cafe.all
end
```

 It throws an error and it is caused by removing `index route from products_controller.rb`, once the server runs it sends the `request to products#index`. It sets `@cafe = nil` and we cant iterate it and so the error.

 Route reached controller, but controller had no action to execute


## 2. Run products route from routes.rb and run Rails server

- `Routing Error`
- `No route matches [GET] "/products"`

 This error is caused by removing `resources :products do` from the routes.rb. Routes of the specific tables has to be set before we run a server.

 Without route, controller is useless.

## 3. Remove the view file (.html.erb) of products from view folder

- `No view template for interactive request`
- `ProductsController#index is missing a template for request formats: text/html`

 Rails usually expects a controller action to render a view template with the same name. For example, a ProductsController#index action defined in app/controllers/Products_controller.rb should have a corresponding view template in a file named app/views/Products/index.html.erb.

## Route -> Controller Action -> View -> Response

- Route decides the path, controller action decides the logic, view decides the presentation or UI, and together they form the response.

## Action Components

So far we saw about 10 action components. I have created a [Notion Page](https://flash-oboe-0f1.notion.site/2f51a566a462809eb814e80c363d24cb?v=2f51a566a46280be912c000c8dcd9ef8). Click to see it! As we explore the components in detail I will make changes to the page.

## Generatig Migration

- While generating migration....when making changes to table, gen migration -> a file will be created. -> rails db:migrate  
To safely migrate and if it is associated to another table, it might throw error in that case use up(exception case)/down(finally) or rollback.

## Generating Controller

- While generating controller `rails generate controller controller_name`, view is also generated along with that. Controller and View are action pack, they come in pair.

## To do
Generating a  controller and see the created files  
create a new welco me.rb in mailers folder of layouts  

# Day 13 -> Exploring and Understanding te Action Text Component
### Action Text
Action content comes into play when we want to have a rich text content. It allows us to format texts the way we need (bold, italics, colors and hyperlinks etc..)
  
until the Rails version 6, there was no Action Content Component, in order to style textarea and field developers were using js plugins like tinyMCE in gem file.

## To use Action Text aka Rich Text Editor
1. rails action_text:install
2. rails db:migrate
  This creates four new tables  in the schema.rb and the database `action_text_rich_texts`, `active_storage_attachments`, `active_storage_blobs`, `active_storage_variant_records` and two files action_tet and action_storage files in migrate folder.
3. git diff internship_app/app/javascr
    ipt/application.js 
    `+import "trix"`
    `+import "@rails/actiontext"`  
  Text Editor called `trix` is created.

## Active Storage
1. It is used for uploading files and storing images.
2. While installing action_text it also installs action_storage along with it.
3. Until rails version 6, developers were using paperclip, carrier wave for uploading files and storing images.

## Rails commands
1. rails routes - list all routes
2. rails routes | grep product_path

## Generating Migration 
Everything we do in the table using sql can be done through migrate/schema.rb.
1. `rails generate migration AddColumnPhoneToCustomer phone_number:integer`
    1. Adding a new column to the customer table product, `AddColumnPhoneToCustomer` is the migration name and `phone_number:integer` are its column name and datatype respectively. 
2.  Every changes we do the db through console has to be saved through the command `rails db:migrate`. It will through error if we run the server before this command.

## Strong Parameters and Using inspect in each controller methods
 1. Rails application dont trust forms. To make the form data secured strong parameters are used.
   It allows us to retain data that we specify.
  `params.require(:customer).permit(:name, :email, :profile)`
   In the specified table name customers, only retrieving data that we permitted(name, email, profile).
 2. To view this visually, paste this `raise inspect:customer_params` in update or create method of customer_controller.rb.
    
## comparing schema, before and after installing action_text.
1. rails action_text:install
   rails db:migrate

2. After installing action_text to the rails application, there are four new tables being created to the schema.rb and db.

  1. action_text_rich_texts - Stores the rich text.
  2. active_storage_blobs - Stores metadata about uploaded files.
  3. active_storage_attachments - Connects uploaded files to models.
  4. active_storage_variant_records - Stores processed versions of files.

## & Intersection operator in array 
1. Intersection Operator removes the duplicates and keeps the order from the first array.
<!-- ```ruby arr1 = [1, 2, 3, 4, 5]
arr2 = [4, 5, 6, 7, 8]
result = arr1 & arr2 => [1, 2]
puts result``` -->


# Day 14 → Active Storage

When we install Active Storage in a Rails app using, `rails active_storage:install`. Rails creates migration files for us. After running `rails db:migrate`,three tables get created automatically:

- active_storage_blobs
- active_storage_attachments
- active_storage_variant_records

These tables do  not store the actual files.  
They only store file info and references.  
The real files are stored somewhere else (disk or cloud).

## storage.yml
This file defines **where files can be stored**.
Example (default local storage):
local:
  service: Disk
  root: <%= Rails.root.join("storage") %>
This means files are saved inside the `storage/` folder of the project.
We can also configure cloud storage here like AWS S3, Google Cloud etc...

## environments/development.rb
Here we tell Rails **which storage from storage.yml to use**.
`config.active_storage.service = :local` or `config.active_storage.service = :amazon`
So Rails reads storage.yml, finds `local`, and stores files there.

## Order in Models
A clean way to arrange things inside a model:

- scope
- validations
- associations
- custom methods

This makes the model easy to read and understand.

## Form Helpers
Rails form helpers are dynamic and reusable.
We don’t manually write repetitive HTML for forms.
Using helpers like `form_with`, `f.text_field`, `f.select`, etc.
makes the form cleaner and connected directly to the model.

## Variants (Image Processing)
When using images with Active Storage, we can resize them using variants.
This requires the `image_processing` gem.

Example:
<%= image_tag product.image.variant(resize_to_limit: [300, 300]) %>
Rails processes the image before displaying it.

---

## Validation in Active Storage

We can apply validations directly to attached files.
For example, restricting file type and size:

<!-- ```ruby
validates :profile_photo,
  attached: true,
  content_type: ['image/png', 'image/jpeg'],
  size: { less_than: 2.megabytes, message: 'is too large' } -->

# Day 15 -> Action Mailer 

# Flow
Mailer class -> view file(visualize)

Rails uses REST api by default, it can all forms of req res body.

# how emails are handled in rails application.
SMTP
POP
IMAP

any component introduced after ver 1 of rails are new, you have to manually install it.
in older versions gem configuration is used.

# Generating Mailer
`rails generate mailer CustomerMailer`

# gen migration to add new col email to product
# gen a mailer class for product
# define method 
# relevant html.erb
# product_controller
