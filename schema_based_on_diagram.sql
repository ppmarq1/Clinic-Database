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