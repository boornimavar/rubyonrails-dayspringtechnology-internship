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

# Rails
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


## Day 2 – Models, Database & Rails Structure

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


## Day 3 – Rails Components, Architecture 

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

## Instance Methods
- Defined normally inside a class
- Called on objects created from the class

## Class Methods
- Defined using `self.method_name`
- Called directly on the class

## Data Types in Ruby
- Integer
- String
- Boolean
- Nil
- Symbol

## Common Inbuilt Methods
- `class` → returns the class of an object
- `object_id` → returns the unique identifier of an object

## Day 5 – Ruby Input/Output, Strings & Data Types

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

# to_i / to_f
Used for type conversion.

## method chaining
Calling multiple methods together is known as method chaining and helps in writing clean and concise code.

<!-- ## Day 6 – loops and its methods  -->
