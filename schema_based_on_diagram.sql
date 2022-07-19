CREATE TABLE treatments (id INT PRIMARY KEY,type VARCHAR,name VARCHAR);
CREATE TABLE invoices (id INT PRIMARY KEY,total_amount DECIMAL,generated_at TIMESTAMP,payed_at TIMESTAMP,medical_history_id INT);

CREATE TABLE invoice_items (id INT PRIMARY KEY,unit_price DECIMAL,quantity INT,total_price DECIMAL,invoice_id INT,treatment_id INT);