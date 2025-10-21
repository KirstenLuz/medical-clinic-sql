CREATE TABLE IF NOT EXISTS patients (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    birth_date DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    phone VARCHAR(20),
    address VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS specializations (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);


CREATE TABLE IF NOT EXISTS doctors (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    specialization_id INT,
    FOREIGN KEY (specialization_id) REFERENCES specializations (id)
        ON DELETE SET NULL
);


CREATE TABLE IF NOT EXISTS appointments (
    id SERIAL PRIMARY KEY,
    appointment_date DATE NOT NULL,
    observations TEXT,
    service_type VARCHAR(50),
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES patients (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES doctors (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS treatments (
    id SERIAL PRIMARY KEY,
    medicines VARCHAR(255),
    description TEXT,
    appointment_id INT NOT NULL,
    FOREIGN KEY (appointment_id) REFERENCES appointments (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
