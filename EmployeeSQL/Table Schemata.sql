--Table Schemata

-- Titles Table
CREATE TABLE Titles (
  TitleID VARCHAR(25) PRIMARY KEY,
  Title VARCHAR(255)
);

-- Departments Table
CREATE TABLE Departments (
  DeptNum VARCHAR(255) PRIMARY KEY,
  DeptName VARCHAR(255)
);

-- Employees Table
CREATE TABLE Employees (
  EmpNo INT PRIMARY KEY,
  EmpTitleID VARCHAR(5),
  BirthDate DATE,
  FirstName VARCHAR(255),
  LastName VARCHAR(255),
  Sex CHAR(1),
  HireDate DATE,
  FOREIGN KEY (EmpTitleID) REFERENCES Titles (TitleID)
);

-- DepartmentEmployees Table
CREATE TABLE DepartmentEmployees (
  EmpNo INT,
  DeptNo VARCHAR(255),
  FOREIGN KEY (EmpNo) REFERENCES Employees (EmpNo),
  FOREIGN KEY (DeptNo) REFERENCES Departments (DeptNum),
  PRIMARY KEY (EmpNo, DeptNo)
);

-- DepartmentManagers Table
CREATE TABLE DepartmentManagers (
  DeptNo VARCHAR(255),
  EmpNo INT,
  FOREIGN KEY (EmpNo) REFERENCES Employees (EmpNo),
  FOREIGN KEY (DeptNo) REFERENCES Departments (DeptNum),
  PRIMARY KEY (DeptNo, EmpNo)
);

-- Salaries Table
CREATE TABLE Salaries (
  EmpNo INT PRIMARY KEY,
  Salary INT,
  FOREIGN KEY (EmpNo) REFERENCES Employees (EmpNo)
);
