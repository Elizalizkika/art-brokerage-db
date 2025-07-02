# Art Brokerage Database

A MySQL-based relational database for managing artists, artworks, customers, and orders in an art brokerage environment. Designed to allow users to browse, compare, and order artworks or request custom pieces.

## Project Description

This database allows customers to:
- Browse and compare artwork based on price, style, medium, and mood
- Place unique or custom orders
- View available artists and their works

The schema supports efficient tracking of orders, both for existing and commission-based artwork.


## 🧱 Entities and Attributes

### `Artist`
- `ID` (Primary Key)
- `name`
- `starting_rate`
- `availability`
- `medium`
- `style`
- `mood`

### `Artwork`
- `a_id` (Primary Key)
- `artist` (Foreign Key)
- `a_name`
- `price`
- `sold`
- `medium`
- `style`
- `mood`

### `Customer`
- `c_id` (Primary Key)
- `name`
- `number`
- `medium`
- `style`
- `mood`

### `unique_orders`
- `order_id` (Primary Key)
- `artwork_id` (Foreign Key)
- `customer_id` (Foreign Key)
- `status`
- `date`

### `custom_orders`
- `order_id` (Primary Key)
- `artist_id` (Foreign Key)
- `customer_id` (Foreign Key)
- `status`
- `date`

---

## 🔗 ER Diagram

![E-R_Diagram](https://github.com/user-attachments/assets/50b5a25d-4a00-40e7-9f3c-203644df11f4)

