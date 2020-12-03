CREATE TABLE titles (
    title_id VARCHAR(50) NOT NULL,
    title VARCHAR(50),
    PRIMARY KEY (title_id)
);
CREATE TABLE employees (
    emp_no VARCHAR(50) UNIQUE  NOT NULL,
	emp_title_id VARCHAR(50) NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(225)   NOT NULL,
    last_name VARCHAR(225)   NOT NULL,
    sex VARCHAR(50) NOT NULL,
    hire_date DATE   NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
    PRIMARY KEY (emp_no)
);
CREATE TABLE departments (
    dept_no VARCHAR(50)   NOT NULL,
    dept_name VARCHAR(225)   NOT NULL,
    PRIMARY KEY (dept_no)
);
CREATE TABLE dept_manager (
    dept_no VARCHAR(50)   NOT NULL,
    emp_no VARCHAR(50) UNIQUE   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (dept_no, emp_no)
);
CREATE TABLE dept_emp (
    emp_no VARCHAR(50)  NOT NULL,
    dept_no VARCHAR(50)   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);
CREATE TABLE salaries (
    emp_no VARCHAR (50)  UNIQUE NOT NULL,
    salary INT   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no)
);
