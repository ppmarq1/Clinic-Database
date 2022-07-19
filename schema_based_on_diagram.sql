

CREATE TABLE patients (
id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
name VARCHAR(200),
date_of_birth date,
);

CREATE TABLE medical_histories (
    id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    admitted_at TIMESTAMP,
    patient_id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    status VARCHAR(200),
);

CREATE TABLE treatments (id INT PRIMARY KEY,type VARCHAR,name VARCHAR);
CREATE TABLE invoices (id INT PRIMARY KEY,total_amount DECIMAL,generated_at TIMESTAMP,payed_at TIMESTAMP,medical_history_id INT);

CREATE TABLE invoice_items (id INT PRIMARY KEY,unit_price DECIMAL,quantity INT,total_price DECIMAL,invoice_id INT,treatment_id INT);
