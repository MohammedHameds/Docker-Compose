CREATE DATABASE IF NOT EXISTS db;
USE db;

CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    position VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    address VARCHAR(255)
);

INSERT INTO employees (name, age, gender, position, department, salary, hire_date, email, phone, address) VALUES
('Luka Doncic', 26, 'Male', 'NBA Plyaer', 'NBA', 10.00, '2018-10-18', 'goat@gmail.com', '+11111111111', 'LA, USA'),
('Mona Salah', 28, 'Female', 'HR Specialist', 'Human Resources', 9000.00, '2019-11-01', 'mona.salah@gmail.com', '+201234567891', 'Giza, Egypt'),
('Mohamed Ali', 35, 'Male', 'Project Manager', 'Operations', 15000.00, '2018-08-10', 'mohamed.ali@gmail.com', '+201234567892', 'Alexandria, Egypt'),
('Fatma Mahmoud', 32, 'Female', 'Marketing Manager', 'Marketing', 13000.00, '2021-01-20', 'fatma.mahmoud@gmail.com', '+201234567893', 'Luxor, Egypt'),
('Youssef Nabil', 29, 'Male', 'Data Analyst', 'IT', 11000.00, '2022-03-12', 'youssef.nabil@gmail.com', '+201234567894', 'Aswan, Egypt'),
('Sara Gamal', 27, 'Female', 'Graphic Designer', 'Design', 8000.00, '2023-06-01', 'sara.gamal@gmail.com', '+201234567895', 'Tanta, Egypt'),
('Omar Khaled', 40, 'Male', 'Senior Accountant', 'Finance', 14000.00, '2017-09-05', 'omar.khaled@gmail.com', '+201234567896', 'Mansoura, Egypt'),
('Nour El-Din', 31, 'Male', 'Business Analyst', 'Business Development', 12500.00, '2019-04-18', 'nour.eldin@gmail.com', '+201234567897', 'Ismailia, Egypt'),
('Dina Fawzy', 26, 'Female', 'Customer Service Rep', 'Support', 7000.00, '2021-12-11', 'dina.fawzy@gmail.com', '+201234567898', 'Suez, Egypt'),
('Hassan Adel', 33, 'Male', 'Logistics Coordinator', 'Operations', 10500.00, '2020-08-22', 'hassan.adel@gmail.com', '+201234567899', 'Sharm El-Sheikh, Egypt'),
('Laila Samir', 29, 'Female', 'Content Writer', 'Marketing', 8500.00, '2023-02-15', 'laila.samir@gmail.com', '+201234567900', 'Hurghada, Egypt'),
('Khaled Omar', 38, 'Male', 'Network Administrator', 'IT', 11500.00, '2016-11-30', 'khaled.omar@gmail.com', '+201234567901', 'Cairo, Egypt'),
('Sara Youssef', 34, 'Female', 'Product Manager', 'Operations', 14000.00, '2018-05-20', 'sara.youssef@gmail.com', '+201234567902', 'Alexandria, Egypt'),
('Tamer Zaki', 42, 'Male', 'Financial Analyst', 'Finance', 14500.00, '2015-07-10', 'tamer.zaki@gmail.com', '+201234567903', 'Cairo, Egypt'),
('Mona Fathy', 25, 'Female', 'Junior Developer', 'IT', 7500.00, '2024-01-05', 'mona.fathy@gmail.com', '+201234567904', 'Giza, Egypt');
