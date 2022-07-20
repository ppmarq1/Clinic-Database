CREATE TABLE patients (
    id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(200),
    date_of_birth date
);

CREATE TABLE medical_histories (
    id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    admitted_at TIMESTAMP,
    patient_id int,
    status VARCHAR(200),
    CONSTRAINT fk_patients FOREIGN KEY(patient_id) REFERENCES patients(id)
);

CREATE TABLE treatments (id INT PRIMARY KEY, type VARCHAR, name VARCHAR);

CREATE TABLE invoices (
    id INT PRIMARY KEY,
    total_amount DECIMAL,
    generated_at TIMESTAMP,
    payed_at TIMESTAMP,
    medical_history_id INT
);

CREATE TABLE invoice_items (
    id INT PRIMARY KEY,
    unit_price DECIMAL,
    quantity INT,
    total_price DECIMAL,
    invoice_id INT,
    treatment_id INT
);

ALTER TABLE
    medical_histories
ADD
    CONSTRAINT fk_treatmentID FOREIGN KEY(id) REFERENCES treatments(id);

ALTER TABLE
    invoice_items
ADD
    CONSTRAINT fk_invoice FOREIGN KEY(treatment_id) REFERENCES treatments(id);

ALTER TABLE
    invoice_items
ADD
    CONSTRAINT fk_invoiceItems FOREIGN KEY(invoice_id) REFERENCES invoices(id);

ALTER TABLE
    invoices
ADD
    CONSTRAINT fk_medical_history_table FOREIGN KEY(medical_history_id) REFERENCES medical_histories(id);