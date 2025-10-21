-- Queries de auxílio
SELECT * FROM appointments;
SELECT * FROM patients;
SELECT * FROM doctors;
SELECT * FROM treatments;
SELECT * FROM specializations;


-- Devolve todas as três tabelas juntas
SELECT * FROM appointments
JOIN patients ON appointments.patient_id = patients.id
JOIN doctors ON appointments.doctor_id = doctors.id;


-- Obter todos os pacientes juntamente com suas consultas e os médicos que os atenderam.
SELECT
    patients.full_name AS patient_name,
    appointments.appointment_date,
    doctors.full_name AS doctor_name
FROM patients
JOIN appointments ON appointments.patient_id = patients.id
JOIN doctors ON appointments.doctor_id = doctors.id;


-- Obter todas as consultas de um determinado médico, incluindo informações dos pacientes e observações.
SELECT
    doctors.full_name AS doctor_name,
    appointments.appointment_date,
    patients.full_name AS patient_name,
    patients.birth_date AS patient_birth,
    appointments.observations
FROM appointments
JOIN patients ON appointments.patient_id = patients.id
JOIN doctors ON appointments.doctor_id = doctors.id
WHERE doctor_id = 2;


-- Obter uma lista de todos os tratamentos prescritos em consultas, incluindo informações dos médicos e pacientes.
SELECT
    patients.full_name AS patient_name,
    appointments.appointment_date,
    treatments.medicines,
    treatments.description,
    doctors.full_name AS attend_doctor
FROM treatments
JOIN appointments ON treatments.appointment_id = appointments.id
JOIN patients ON appointments.patient_id = patients.id
JOIN doctors ON appointments.doctor_id = doctors.id;


-- Obter todos os médicos com suas respectivas especializações.
SELECT
    doctors.full_name AS doctor_name,
    specializations.title
FROM doctors
JOIN specializations ON doctors.specialization_id = specializations.id;


-- Obter todas as consultas realizadas em uma data específica, incluindo informações de pacientes e médicos.
SELECT
    patients.full_name AS patient_name,
    appointments.observations,
    doctors.full_name AS attend_doctor
FROM appointments
JOIN patients ON appointments.patient_id = patients.id
JOIN doctors ON appointments.doctor_id = doctors.id
WHERE appointment_date = '2025-10-01';


-- Obter uma lista de todos os pacientes que foram atendidos por médicos de uma determinada especialização.
SELECT DISTINCT
    specializations.title,
    doctors.full_name AS doctor_name,
    patients.full_name AS patient_name
FROM doctors
JOIN appointments ON appointments.doctor_id = doctors.id
JOIN patients ON appointments.patient_id = patients.id
JOIN specializations ON doctors.specialization_id = specializations.id
WHERE specializations.title = 'Ortopedia';


-- Obter todos os tratamentos em andamento de um determinado paciente.
SELECT
    patients.full_name,
    appointments.appointment_date,
    treatments.medicines,
    treatments.description
FROM patients
JOIN appointments ON appointments.patient_id = patients.id
JOIN treatments ON treatments.appointment_id = appointments.id
WHERE patients.full_name = 'Ana Souza';
