-- Create Database
CREATE DATABASE IF NOT EXISTS ProTrackDB;
USE ProTrackDB;

-- Clients Table
CREATE TABLE Clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    client_name VARCHAR(100) NOT NULL,
    contact_person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    company_name VARCHAR(100),
    address TEXT,
    industry_type ENUM('Technology', 'Finance', 'Healthcare', 'Other')
);

-- Projects Table
CREATE TABLE Projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    client_id INT,
    project_type ENUM('Development', 'Service') NOT NULL,
    start_date DATE,
    end_date DATE,
    status ENUM('Proposed', 'In Progress', 'Completed', 'On Hold') NOT NULL,
    priority ENUM('High', 'Medium', 'Low') NOT NULL,
    budget DECIMAL(10, 2),
    description TEXT,
    FOREIGN KEY (client_id) REFERENCES Clients(client_id) ON DELETE CASCADE
);

-- Developers Table
CREATE TABLE Developers (
    developer_id INT AUTO_INCREMENT PRIMARY KEY,
    developer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(15),
    specialization VARCHAR(50),
    experience_level ENUM('Junior', 'Mid-level', 'Senior'),
    availability_status ENUM('Available', 'Unavailable'),
    hourly_rate DECIMAL(10, 2)
);

-- Assignments Table
CREATE TABLE Assignments (
    assignment_id INT AUTO_INCREMENT PRIMARY KEY,
    project_id INT,
    developer_id INT,
    role VARCHAR(50),
    hours_allocated DECIMAL(5, 2),
    assigned_date DATE,
    completion_status ENUM('Assigned', 'In Progress', 'Completed'),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id) ON DELETE CASCADE,
    FOREIGN KEY (developer_id) REFERENCES Developers(developer_id) ON DELETE CASCADE
);

-- Costs Table
CREATE TABLE Costs (
    cost_id INT AUTO_INCREMENT PRIMARY KEY,
    project_id INT,
    description VARCHAR(255),
    amount DECIMAL(10, 2),
    due_date DATE,
    payment_status ENUM('Paid', 'Pending', 'Overdue'),
    invoice_number VARCHAR(50),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id) ON DELETE CASCADE
);

-- Tasks Table
CREATE TABLE Tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    project_id INT,
    developer_id INT,
    task_name VARCHAR(100),
    description TEXT,
    priority ENUM('High', 'Medium', 'Low'),
    status ENUM('To Do', 'In Progress', 'Review', 'Completed') NOT NULL,
    estimated_hours DECIMAL(5, 2),
    deadline DATE,
    actual_hours_spent DECIMAL(5, 2),
    dependencies VARCHAR(100), -- This could refer to other task_ids
    FOREIGN KEY (project_id) REFERENCES Projects(project_id) ON DELETE CASCADE,
    FOREIGN KEY (developer_id) REFERENCES Developers(developer_id) ON DELETE SET NULL
);

-- Milestones Table
CREATE TABLE Milestones (
    milestone_id INT AUTO_INCREMENT PRIMARY KEY,
    project_id INT,
    milestone_name VARCHAR(100),
    description TEXT,
    due_date DATE,
    status ENUM('Not Started', 'In Progress', 'Completed') NOT NULL,
    FOREIGN KEY (project_id) REFERENCES Projects(project_id) ON DELETE CASCADE
);

-- Payments Table
CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10, 2),
    payment_date DATE,
    payment_method ENUM('Bank Transfer', 'Credit Card', 'PayPal'),
    payment_status ENUM('Confirmed', 'Pending'),
    FOREIGN KEY (client_id) REFERENCES Clients(client_id) ON DELETE CASCADE
);

-- User Roles Table
CREATE TABLE UserRoles (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    role ENUM('Admin', 'Manager', 'Developer', 'Client') NOT NULL,
    permissions TEXT
);

-- Audit Logs Table
CREATE TABLE AuditLogs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    entity_name VARCHAR(50),
    entity_id INT,
    action VARCHAR(50),
    user_id INT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES UserRoles(user_id) ON DELETE SET NULL
);
