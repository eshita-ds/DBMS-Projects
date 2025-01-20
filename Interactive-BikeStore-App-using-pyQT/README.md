<p align=center><img width="380" alt="image" src="https://github.com/user-attachments/assets/2d3a12b3-7449-44e2-8828-381d4bdbab81" /></p>

<h1 align=center>Interactive BikeStore Management App using pyQT and MySQL</h1>

## Introduction
The Bike Store Management System is a comprehensive solution for managing daily operations and analyzing sales trends in a dynamic cycling retail environment. It integrates two key components:

#### Operational Database

- Tracks daily transactions, inventory updates, and customer interactions.
- Streamlines order management, stock control, and overall store operations with real-time data.
  
#### Analytical Database

- Analyzes historical sales data to uncover trends across locations and timeframes.
- Empowers managers to evaluate employee performance, identify top-selling products, and make informed business decisions.

This dual-functional system combines operational efficiency with strategic insights to enhance store management and drive growth in the competitive bike retail market.

## Data Sources
**Mockaroo:** https://www.mockaroo.com

**US Cities Name:** https://simplemaps.com/data/us-cities

**Kaggle:** https://www.kaggle.com/datasets/dillonmyrick/bike-store-sampledatabase

## Application Design
The tools used during development includes **Python, MySQL Workbench, PyQt Designer, ERD Plus and
VSCode.** It requires additional packages to be installed:

- Pandas
- Numpy
- Matplotlib
- PyQt5 and PyQt5-Tools
- Seaborn
- MySQL Connector for Python
- SMTPLIB
  
The application consists of two main modules: Operation Module and Analytical Module.

### Operation Module
The Bike Store Operational Database streamlines customer, employee, and managerial interactions to enhance efficiency and satisfaction. Customers can easily register, log in, place orders, submit feedback, and file complaints with detailed issue tracking via unique order IDs. Employees utilize the system to manage orders, support registrations, analyze feedback, resolve complaints, and initiate inventory restocking to meet customer demands. Managers leverage the database to oversee operations, monitor employee onboarding and performance, and make data-driven decisions for continuous improvement. This centralized platform unites all users, optimizing processes from transactions to strategic management.

### Analytical Module
The Bike Store Analytical Database module harnesses data from the operational database and external sources to provide a comprehensive dashboard for managerial users. This dashboard offers detailed insights into sales, employee performance, and regional product dynamics. Managers can explore sales trends by top-selling products, regions, or specific timeframes such as years, quarters, or months.

Order metrics include status counts, bike category trends, and regional order patterns, enabling targeted strategies. Additionally, the employee performance dashboard highlights top-performing regions, key sales contributors, and the top 10 employees by sales. This powerful tool empowers managers to make data-driven decisions, optimize operations, and drive growth.

### Database Design
ER Diagrams for Reference: **Relational Schema & Star Schema**

<img src="https://github.com/user-attachments/assets/e0a4b5cf-daca-4a2b-b672-29c6307ed937" height="350">
<img src="https://github.com/user-attachments/assets/dec0a486-4189-4eac-b573-d8f40317a2f3" height="350">

## File Reference
<img width="705" alt="image" src="https://github.com/user-attachments/assets/e9b60096-9e77-49c1-adbe-a45df15e7d32" />

## Application Preview
| Login Page | Employee Portal | Customer Portal
| --- | --- | --- |
|<img src="https://github.com/user-attachments/assets/d30a4329-257c-4bfb-a7b1-9e5dad2d3a61" height="250">|<img src="https://github.com/user-attachments/assets/7c667122-40e6-4ab2-8aac-831107003358" height="250">|<img src="https://github.com/user-attachments/assets/1e822005-f4b3-4a7d-ace7-0e4f95180fde" height="250">|

| Sales Dashboard | Employee Dashboard |
| --- | --- |
|<img src="https://github.com/user-attachments/assets/8d38db15-d9de-4789-80fe-c25d4eeccbd4" height="250">|<img src="https://github.com/user-attachments/assets/7bd0e31b-92cd-440c-87d8-e908686b65d4" height="250">|

## How to Run the app ? 
#### Pre-requisites
- Python 3.9 or higher
- Libraries (PyQt5, Seaborn, Matplotlib, PyQt5-Tools, Numpy, Pandas)
- MySQL 8 and MySQL Connector for Python
- Setup Databases using SQL Dumps (`terrabikes.sql`, `terrabikes_bi.sql`)

#### Jupyter Notebook
`TerraBikes.ipynb`

#### Command Line 
`python3 TerraBikes.py` or `python TerraBikes.py`


## License
MIT License

Copyright (c) 2023 Eshita Gupta

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
