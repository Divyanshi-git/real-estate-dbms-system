# 🏠 Real Estate Database Management System

## 📌 Overview

This project implements a **comprehensive relational database system** for managing real estate operations such as property listings, clients, agents, and transactions.

The system is designed to simulate **real-world real estate workflows**, including property sales, rentals, and role-based participation of clients.

---

## 🎯 Objectives

* Design a normalized relational database
* Ensure data integrity using constraints
* Implement business logic using triggers
* Support real-world queries for property management

---

## 🧱 Database Schema

### 📂 Tables

* **Agent** → stores agent details
* **Client** → stores buyer/seller/tenant information
* **Property** → contains property listings
* **Locality** → stores location details
* **Transactions** → records sale and rent activities
* **Participates** → maps clients to transactions with roles
* **Property_Image** → stores property images

---

## 🔗 Relationships

* Each property is linked to an agent and locality
* Transactions are linked to properties and agents
* Clients participate in transactions as buyer/seller/tenant/owner

---

## 🛡️ Data Integrity & Constraints

* **Primary Keys** for unique identification
* **Foreign Keys** to maintain relationships
* **CHECK constraints** for validation:

  * Phone number length = 10
  * Valid email format
  * Positive values for price, size, etc.
* **ENUM types** for transaction types

---

## ⚡ Advanced Features

### 🔁 Triggers

* **Role Validation Trigger**

  * Ensures correct roles (buyer/seller for sale, tenant/owner for rent)

* **Transaction Guard Trigger**

  * Prevents:

    * Rent before sale
    * Overlapping rent periods
    * Sale during active rent

* **Agent Matching Trigger**

  * Ensures transaction agent matches property agent

---

### 🧠 SQL Functions

* `days_on_market(p_id)` → calculates time taken to sell a property
* `is_available_for_rent(p_id)` → checks rental availability
* `is_available_for_sale(p_id)` → checks if property can be sold
* `is_currently_rented(p_id)` → checks active rental status
* `latest_transaction_type(p_id)` → retrieves latest transaction

---

## 📊 Sample Queries

```sql
-- Check if property is available for rent
SELECT is_available_for_rent(401);

-- Get latest transaction type
SELECT latest_transaction_type(401);

-- Calculate days on market
SELECT days_on_market(401);

-- Find properties under a budget
SELECT * FROM property WHERE listing_price < 5000000;

-- Join query example
SELECT c.name, t.transaction_type
FROM client c
JOIN participates p ON c.client_id = p.client_id
JOIN transactions t ON p.transaction_id = t.transaction_id;
```

---

## ⚙️ Tech Stack

* MySQL
* SQL

---

## 🚀 How to Run

1. Open MySQL Workbench
2. Import the SQL file (`real_estate_full_db.sql`)
3. Execute all statements
4. Run sample queries

---

## 📸 Suggested Improvements (Future Work)

* Add frontend interface (web app)
* Integrate with APIs for property listings
* Add user authentication system
* Implement analytics dashboard

---

## 📚 Learnings

* Relational database design and normalization
* Writing complex SQL queries
* Implementing triggers and functions
* Handling real-world constraints in databases

---

## 👩‍💻 Author

Divyanshi Jaiswal
CSE @ IIIT Guwahati
