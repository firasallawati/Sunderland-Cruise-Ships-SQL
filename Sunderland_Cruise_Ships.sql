CREATE DATABASE sunderland_cruise_ships;

USE sunderland_cruise_ships;

CREATE TABLE passenger_details (
    passenger_id VARCHAR(10) NOT NULL PRIMARY KEY,
    passenger_name VARCHAR(50) NOT NULL,
    cabin VARCHAR(25) NOT NULL
);

CREATE TABLE cruise_details (
    cruise_no INT NOT NULL PRIMARY KEY,
    cruise_name VARCHAR(50) NOT NULL
);

CREATE TABLE port_details (
    port_id INT NOT NULL PRIMARY KEY,
    port VARCHAR(50) NOT NULL
);

CREATE TABLE excursion_leader_details (
    excursion_leader_id VARCHAR(10) NOT NULL PRIMARY KEY,
    excursion_leader VARCHAR(50) NOT NULL
);

CREATE TABLE excursion_details (
    excursion_no VARCHAR(10) NOT NULL PRIMARY KEY,
    excursion_leader_id VARCHAR(10) NOT NULL,
    port_id INT NOT NULL,
    excursion VARCHAR(50) NOT NULL,
    price_per_excursion DECIMAL(8,2) NOT NULL,
    FOREIGN KEY (excursion_leader_id) REFERENCES excursion_leader_details(excursion_leader_id),
    FOREIGN KEY (port_id) REFERENCES port_details(port_id)
);

CREATE TABLE order_details (
    order_id VARCHAR(10) NOT NULL PRIMARY KEY,
    passenger_id VARCHAR(10) NOT NULL,
    cruise_no INT NOT NULL,
    FOREIGN KEY (passenger_id) REFERENCES passenger_details(passenger_id),
    FOREIGN KEY (cruise_no) REFERENCES cruise_details(cruise_no)
);

CREATE TABLE order_amount_details (
    order_id VARCHAR(10) NOT NULL PRIMARY KEY,
    excursion_no VARCHAR(10) NOT NULL PRIMARY KEY,
    qty INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES order_details(order_id),
    FOREIGN KEY (excursion_no) REFERENCES excursion_details(excursion_no)
);