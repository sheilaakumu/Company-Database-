# Company-Database-
Overview
Welcome to the Company Database Project! This repository contains the SQL scripts for creating a sample company database and performing various queries to extract meaningful insights. The project is aimed at beginners in MySQL and SQL who want to understand the basics of database creation, data insertion, and data retrieval through practical examples.

# Project Structure
This project includes the following main components:

Database Creation: SQL script to create the company database.
Table Creation: SQL scripts to create the Worker, Bonus, and Title tables with appropriate schema.
Data Insertion: SQL scripts to insert sample data into the tables.
Queries: SQL scripts to perform various queries on the database, demonstrating different SQL functionalities.
# Database Schema
Worker Table
Contains details about the workers in the company.

Worker_id (varchar): Primary key
First_Name (varchar): First name of the worker
Last_Name (varchar): Last name of the worker
Salary (int): Salary of the worker
Joining_Date (date): Date the worker joined the company
Department (varchar): Department the worker belongs to
Bonus Table
Contains details about the bonuses awarded to workers.

Worker_Ref_id (int): Reference ID to the Worker table
Bonus_date (date): Date the bonus was awarded
Bonus_Amount (int): Amount of the bonus
Title Table
Contains details about the job titles of the workers.

Worker_Ref_Id (int): Reference ID to the Worker table
Worker_Title (varchar): Title of the worker
Affected_From (date): Date from which the title is effective
Sample Data
The repository includes SQL scripts to insert sample data into the Worker, Bonus, and Title tables to demonstrate various queries.
