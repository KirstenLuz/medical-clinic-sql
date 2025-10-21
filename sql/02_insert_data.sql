-- Pacientes
INSERT INTO patients (full_name, birth_date, gender, phone, address) VALUES
('Ana Souza', '1990-05-12', 'Feminino', '(47) 98877-1234', 'Rua das Flores, 123'),
('Bruno Lima', '1985-09-23', 'Masculino', '(47) 97766-4321', 'Av. Brasil, 456'),
('Carla Mendes', '2000-01-10', 'Feminino', '(47) 96555-8765', 'Rua das Palmeiras, 789');


-- Especializações
INSERT INTO specializations (title) VALUES
('Cardiologia'),
('Ortopedia'),
('Pediatria');


-- Médicos
INSERT INTO doctors (full_name, phone, specialization_id) VALUES
('Dr. João Martins', '(47) 98888-1111', 1),
('Dra. Marina Costa', '(47) 97777-2222', 2),
('Dra. Paula Silva', '(47) 96666-3333', 3);


-- Consultas
INSERT INTO appointments (appointment_date, observations, service_type, patient_id, doctor_id) VALUES
('2025-10-01', 'Paciente relatou dores no peito.', 'Plano de Saúde', 1, 1),
('2025-10-03', 'Dor no joelho direito após corrida.', 'Particular', 2, 2),
('2025-10-05', 'Consulta de rotina infantil.', 'Plano de Saúde', 3, 3),
('2025-10-06', 'Retorno para acompanhamento cardíaco.', 'Plano de Saúde', 1, 1);


-- Tratamentos
INSERT INTO treatments (medicines, description, appointment_id) VALUES
('Atenolol 50mg', 'Uso diário por 30 dias para controle da pressão arterial.', 1),
('Fisioterapia 2x por semana', 'Reabilitação do joelho com acompanhamento.', 2),
('Suplemento vitamínico infantil', 'Uso diário por 3 meses.', 3),
('Ecocardiograma', 'Exame de controle após tratamento inicial.', 4);
