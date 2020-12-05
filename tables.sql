-- state table
-- DROP TABLE IF EXISTS states;
CREATE TABLE states (
	id INT NOT NULL,
	state VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
);

-- ev registrations
DROP TABLE IF EXISTS ev_registrations;
CREATE TABLE ev_registrations (
	id INT NOT NULL,
	state VARCHAR(50) NOT NULL,
	registrations INT NOT NULL,
	FOREIGN KEY (id)
		REFERENCES states(id)
);

-- fuel prices
DROP TABLE IF EXISTS fuel_prices;
CREATE TABLE fuel_prices (
	id INT NOT NULL,
	state VARCHAR(50) NOT NULL,
	regular REAL NOT NULL,
	mid_grade REAL NOT NULL,
	premium REAL NOT NULL,
	diesel REAL NOT NULL,
	FOREIGN KEY (id)
		REFERENCES states(id)
);

-- population
DROP TABLE IF EXISTS population;
CREATE TABLE population (
	id INT NOT NULL,
	state VARCHAR(50) NOT NULL,
	population INT NOT NULL,
	FOREIGN KEY (id)
		REFERENCES states(id)
);

-- income
DROP TABLE IF EXISTS income;
CREATE TABLE income (
	id INT NOT NULL,
	state VARCHAR(50) NOT NULL,
	income INT NOT NULL,
	FOREIGN KEY (id)
		REFERENCES states(id)
);