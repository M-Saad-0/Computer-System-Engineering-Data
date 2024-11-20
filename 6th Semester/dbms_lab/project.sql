-- Create Tailor table
CREATE TABLE Tailor (
  tailor_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  tailor_name VARCHAR(255) NOT NULL,
  shop_addr VARCHAR(255)
);

-- Create Customer table
CREATE TABLE Customer (
  customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(255) NOT NULL,
  contact_info VARCHAR(255) NOT NULL,
  tailor_id INT NOT NULL,
  FOREIGN KEY (tailor_id) REFERENCES Tailor(tailor_id)
);

-- Create Order table
CREATE TABLE Order (
  order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  tailor_id INT NOT NULL,
  customer_id INT NOT NULL,
  order_date DATE NOT NULL,
  FOREIGN KEY (tailor_id) REFERENCES Tailor(tailor_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- Measurements table (Choose one option based on your needs)

-- Option 1: Separate table for each clothing type (example for ShirtMeasurements)
CREATE TABLE ShirtMeasurements (
  measurement_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  order_id INT NOT NULL,
  length DECIMAL(5,2),  /* Adjust data type and precision as needed for other measurements */
  chest DECIMAL(5,2),
  sleeve DECIMAL(5,2),
  wrist DECIMAL(5,2),
  neck DECIMAL(5,2),
  shoulder DECIMAL(5,2),
  FOREIGN KEY (order_id) REFERENCES Order(order_id)
);

-- You would create similar tables for other clothing types, replacing "ShirtMeasurements" with the appropriate name and adjusting columns for specific measurements.

-- Option 2: Generic Measurements table with a "clothing_type" field
CREATE TABLE Measurements (
  measurement_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  order_id INT NOT NULL,
  clothing_type VARCHAR(255) NOT NULL,
  measurement_name VARCHAR(255) NOT NULL,  /* Descriptive name for the measurement (e.g., Chest Circumference) */
  measurement_value DECIMAL(5,2),
  FOREIGN KEY (order_id) REFERENCES Order(order_id)
);
