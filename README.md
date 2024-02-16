# Crowdfunding_ETL Mini Project

## Objective
The objective of this project is to practice building an Extract, Transform, Load (ETL) pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the Crowdfunding data.

## Data
- contacts.xlsx
- crowdfunding.xlsx

## Dependencies
- Pandas
- NumPy
- datetime
- JSON
- Postgres
- [Quick Database Diagrams](http://www.quickdatabasediagrams.com/) (For ERD)

## Methodology

### Create the Category and Subcategory DataFrames
![Category DataFrame](https://github.com/AAlbers341/Crowdfunding_ETL/assets/149892097/c5238b91-66e5-4f8a-8167-360ac2c1c32e)
![Subcategory DataFrame](https://github.com/AAlbers341/Crowdfunding_ETL/assets/149892097/e080e36b-f7b9-421c-8066-e5ff868cc8d7)

### Create the Campaign DataFrame
![Campaign DataFrame](https://github.com/AAlbers341/Crowdfunding_ETL/assets/149892097/5539bc2e-fb8f-4feb-a477-c302e354a7d2)

### Create the Contacts DataFrame
![Contacts DataFrame](https://github.com/AAlbers341/Crowdfunding_ETL/assets/149892097/bbefb84f-83ac-4a5d-b83b-4871bb4d3680)

### Create the Crowdfunding Database
Leverage the provided Postgres file named `crowdfunding_db_schema.sql` to import the respective CSV files below:
- campaign.csv
- category.csv
- contacts.csv
- subcategory.csv

### Validate Data Import
Use the `crowdfunding_tables_select` script to validate the data import.
