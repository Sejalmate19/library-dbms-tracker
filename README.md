# library-dbms-tracker
A MySQL-based system for tracking library book issues, returns, and automated fine calculations.
# 📚 Library Book Issue Tracker
A structured MySQL project demonstrating relational database design and transaction logic.

## 🛠️ Tech Stack
* **Database:** MySQL
* **Tools:** DB Fiddle (for testing), GitHub

## 🗝️ Core Logic
* **DATEDIFF():** Used for dynamic fine calculation based on a 7-day borrowing window.
* **Joins:** Linking `Books`, `Members`, and `IssueRecords` for comprehensive reporting.
* **Triggers/Updates:** Ensures book availability status toggles automatically upon issue/return.

## 📂 Project Structure
* `/database`: Contains `schema.sql` for table creation.
* `/scripts`: Contains sample `queries.sql` for CRUD operations.

## 🚀 How to use
1. Copy the code from `database/schema.sql` into any MySQL environment.
2. Run the queries in `scripts/queries.sql` to test the issue/return flow.
