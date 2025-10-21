-- Pacientes
INSERT INTO patients (full_name, birth_date, gender, phone, address) VALUES
('Diego Carvalho', '1978-11-02', 'Masculino', '(47) 99991-2020', 'Rua das Acácias, 100'),
('Elisa Ferreira', '1995-07-19', 'Feminino', '(47) 98888-3030', 'Av. Atlântica, 200'),
('Felipe Nogueira', '1988-03-25', 'Masculino', '(47) 97777-4040', 'Rua João Paulo II, 55'),
('Gabriela Pires', '2002-12-10', 'Feminino', '(47) 96666-5050', 'Rua das Oliveiras, 999'),
('Henrique Duarte', '1970-06-01', 'Masculino', '(47) 95555-6060', 'Av. Central, 77');


-- Especializações
INSERT INTO specializations (title) VALUES
('Dermatologia'),
('Neurologia'),
('Gastroenterologia');


-- Médicos
INSERT INTO doctors (full_name, phone, specialization_id) VALUES
('Dr. Ricardo Alves', '(47) 94444-1111', 4),  -- Dermatologia
('Dra. Fernanda Torres', '(47) 93333-2222', 5), -- Neurologia
('Dr. Lucas Brito', '(47) 92222-3333', 6); -- Gastroenterologia


-- Consultas
INSERT INTO appointments (appointment_date, observations, service_type, patient_id, doctor_id) VALUES
('2025-10-10', 'Consulta para exame de pele.', 'Particular', 4, 4),
('2025-10-11', 'Crises de enxaqueca frequentes.', 'Plano de Saúde', 5, 5),
('2025-10-12', 'Dores abdominais e náusea.', 'Plano de Saúde', 6, 6),
('2025-10-13', 'Exame dermatológico de rotina.', 'Particular', 2, 4),
('2025-10-14', 'Retorno de tratamento neurológico.', 'Plano de Saúde', 3, 5),
('2025-10-15', 'Consulta para acompanhamento digestivo.', 'Particular', 1, 6),
('2025-10-16', 'Avaliação de manchas na pele.', 'Plano de Saúde', 7, 4),
('2025-10-17', 'Tontura e dores de cabeça.', 'Plano de Saúde', 8, 5),
('2025-10-18', 'Exames de rotina geral.', 'Particular', 8, 6);


-- Tratamentos
INSERT INTO treatments (medicines, description, appointment_id) VALUES
('Pomada dermatológica', 'Aplicar 2x ao dia por 10 dias.', 5),
('Analgésico e acompanhamento neurológico', 'Uso por 15 dias, com retorno agendado.', 6),
('Omeprazol 20mg', 'Uso diário em jejum por 30 dias.', 7),
('Protetor solar FPS 60', 'Uso diário para prevenção.', 8),
('Suplemento vitamínico B12', 'Tomar 1 cápsula por dia.', 9),
('Dieta leve e hidratação constante', 'Evitar alimentos gordurosos e manter acompanhamento.', 10),
('Creme hidratante hipoalergênico', 'Aplicar nas áreas afetadas 3x ao dia.', 11),
('Exames de imagem', 'Solicitados para investigação neurológica.', 12),
('Antibiótico leve', 'Uso por 7 dias após sintomas digestivos.', 13);
