-- Create the table for the person
CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name VARCHAR (255) NOT NULL,
  birthday DATE,
  address VARCHAR (255) NOT NULL,
  city VARCHAR (255) NOT NULL,
  state VARCHAR (255) NOT NULL,
  zip_code VARCHAR (255) NOT NULL
);

-- Create the table for the phone number
CREATE TABLE phone (
  id SERIAL PRIMARY KEY,
  person_id INTEGER NOT NULL,
  phone_number VARCHAR (255) NOT NULL,
  type VARCHAR (255) NOT NULL,
  contact_name VARCHAR (255) NOT NULL,
  FOREIGN KEY (person_id) REFERENCES person(id)
);

-- Insert sample data for person
INSERT INTO person (name, birthday, address, city, state, zip_code)
VALUES ('John Smith', '1980-01-01', '123 Main Street', 'Anytown', 'NY', '10001'),
     ('Jane Doe', '1985-02-02', '456 Maple Avenue', 'Metropolis', 'CA', '90210');

-- Insert sample data for phone
INSERT INTO phone (person_id, phone_number, type, contact_name)
VALUES (1, '123-456-7890', 'home', 'John Smith'),
     (1, '098-765-4321', 'mobile', 'John Smith'),
     (2, '111-222-3333', 'work', 'Jane Doe');

-- Create the table for the related name
CREATE TABLE related_name (
  id SERIAL PRIMARY KEY,
  person_id INTEGER NOT NULL,
  related_name VARCHAR (255) NOT NULL,
  FOREIGN KEY (person_id) REFERENCES person(id)
);

-- Insert sample data for related names
INSERT INTO related_name (person_id, related_name)
VALUES (1, 'John Doe'),
     (2, 'Joe Smith');