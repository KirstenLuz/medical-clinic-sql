# Medical Clinic SQL Project

This project was developed to practice **database modeling** and **SQL queries** using **PostgreSQL**.  
It simulates a medical clinic system with data on patients, doctors, specializations, appointments and treatments.

---

## Objective

Design a relational database to manage a clinic's core information, ensuring data consistency and enabling analysis through SQL queries.  
The goal is to demonstrate understanding of data modeling, table relationships, and the creation of efficient queries.

---

## Database Structure

**Main Entities:**
- **Patients** – personal information, contact, and address  
- **Doctors** – name, specialization, and contact details  
- **Specializations** – types of medical specialties  
- **Appointments** – date, reason, patient, doctor, and status
- **Treatments** – medicines and prescriptions

---

## Project Structure
medical-clinic-sql/
│

├── sql/ # SQL scripts: table creation, data inserts, queries

│ ├── 01_create_tables.sql

│ ├── 02_insert_data.sql

│ └── 03_insert_data_II.sql

│ └── 04_queries.sql

├── docs/ # Diagrams and documentation (e.g., ER diagram)

└── README.md


---

## Technologies Used

- **PostgreSQL** – database management  
- **SQL** – table creation, data insertion, queries, indexes  
- **DBeaver / pgAdmin** – for database visualization and testing  
- **Canva** – for ER diagram design  

---

## How to Run

1. Clone this repository:  
```bash
git clone https://github.com/SEU_USUARIO/medical-clinic-sql.git
cd medical-clinic-sql
```

2. Run the SQL scripts in order:
```bash
psql -U <username> -d <database> -f sql/01_create_tables.sql
psql -U <username> -d <database> -f sql/02_insert_data.sql
psql -U <username> -d <database> -f sql/03_queries.sql
```
