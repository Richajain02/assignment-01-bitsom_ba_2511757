## ETL Decisions

### Decision 1 — Standardizing Date Format

Problem: The raw dataset contained multiple date formats such as 29/08/2023, 12-12-2023, and 2023-02-05.  
Resolution: All dates were converted to the ISO standard format YYYY-MM-DD before loading into the data warehouse. This ensures consistent sorting and querying.

### Decision 2 — Fixing Category Casing

Problem: The category column had inconsistent casing such as "electronics", "Electronics", and "Grocery".  
Resolution: Categories were standardized to consistent values like Electronics, Clothing, and Groceries to prevent duplicate groupings during analysis.  

### Decision 3 — Creating Derived Revenue Field

Problem: The raw dataset only had units_sold and unit_price, which required calculation of total sales revenue.  
Resolution: A new column total_revenue was created in the fact table calculated as units_sold × unit_price to enable faster analytical queries.
