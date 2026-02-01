
# Day 16 → Creating Order Table from Scratch (MVC Wiring)

Task: Create an `Order` table in the same Rails application and manually connect Model, Controller, Routes, and Views without using scaffold.

This task helped in understanding how Rails MVC pieces are connected when we build everything ourselves.

---

## Step 1 — Generate Model with Columns

Generate the Order model with required fields:

    rails generate model Order details:string count:integer

What this does:

- Creates `app/models/order.rb`
- Creates a migration file
- Prepares table structure

---

## Step 2 — Run Migration

    rails db:migrate

This creates the `orders` table in the database.

---

## Step 3 — Generate Controller

    rails generate controller Orders

This creates:

- `app/controllers/orders_controller.rb`
- `app/views/orders/` folder

All files are empty. We now add logic.

---

## Step 4 — Add Route

Open `config/routes.rb` and add:

    resources :orders

This connects URLs to the controller.

---

## Step 5 — Write the Model (optional validations)

File: `app/models/order.rb`

    class Order < ApplicationRecord
      validates :details, presence: true
      validates :count, presence: true
    end

---

## Step 6 — Write the Controller

File: `app/controllers/orders_controller.rb`

    class OrdersController < ApplicationController

      def index
        @orders = Order.all
      end

      def show
        @order = Order.find(params[:id])
      end

      def new
        @order = Order.new
      end

      def create
        @order = Order.new(order_params)

        if @order.save
          redirect_to @order
        else
          render :new
        end
      end

      private

      def order_params
        params.require(:order).permit(:details, :count)
      end
    end

---

## Step 7 — Create Views

### `app/views/orders/index.html.erb`

    <h1>All Orders</h1>

    <%= link_to "New Order", new_order_path %>

    <% @orders.each do |order| %>
      <p>
        <%= link_to order.details, order %>
      </p>
    <% end %>

---

### `app/views/orders/new.html.erb`

    <h1>New Order</h1>

    <%= form_with model: @order do |f| %>
      <div>
        <%= f.label :details %>
        <%= f.text_field :details %>
      </div>

      <div>
        <%= f.label :count %>
        <%= f.number_field :count %>
      </div>

      <%= f.submit %>
    <% end %>

---

### `app/views/orders/show.html.erb`

    <h1>Order Details</h1>

    <p>
      Details: <%= @order.details %>
    </p>

    <p>
      Count: <%= @order.count %>
    </p>

    <%= link_to "Back", orders_path %>

---

## What This Task Taught

- Model creates the table structure
- Migration builds it in DB
- Controller handles logic
- Routes connect URL ↔ controller
- Views display data
- Strong params are required to save data

Rails gives the structure, but we must fill in the logic.
