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