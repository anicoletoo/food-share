DROP TABLE IF EXISTS
    hasfood,
	users;
	
CREATE TABLE users(
	userid CHAR(25),
	password CHAR(20), 
	supplier BOOL,
	receiver BOOL,
	postalcode CHAR(7),
	PRIMARY KEY(userid)
);

CREATE TABLE hasfood(
	foodid INT,
	name CHAR(25),
	quantity INT,
	val INT,
	expiry INT,
	userid CHAR(25),
	PRIMARY KEY(foodid),
	FOREIGN KEY(userid) REFERENCES users(userid) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO users VALUES ('soup kitchen', 'abc', false, true, 'V6J 3Z3');
INSERT INTO users VALUES ('homeless shelter', 'def', false, true, 'V6J 1Z2');
INSERT INTO users VALUES ('food bank', 'ghi', false, true, 'V6K 3C2');
INSERT INTO users VALUES ('school cafeteria', 'jkl', false, true, 'V6H 3J8');
INSERT INTO users VALUES ('costco', 'mno', true, false, 'V6L 0B9');
INSERT INTO users VALUES ('walmart', 'pqr', true, false, 'V6J 0B7');
INSERT INTO users VALUES ('local restaurant', 'stu', true, false, 'V6K 1N9');
INSERT INTO users VALUES ('community garden', 'vwx', true, false, 'V6K 1P2');

INSERT INTO hasfood VALUES ('11111', 'tomato', '45', '135', '7', 'costco');
INSERT INTO hasfood VALUES ('11112', 'tomato', '9', '27', '7', 'walmart');
INSERT INTO hasfood VALUES ('11113', 'banana', '11', '33', '4', 'local restaurant');
INSERT INTO hasfood VALUES ('11114', 'bread', '3', '9', '6', 'community garden');
INSERT INTO hasfood VALUES ('11115', 'milk', '8', '24', '9', 'costco');
INSERT INTO hasfood VALUES ('11116', 'potato', '121', '363', '30', 'walmart');
INSERT INTO hasfood VALUES ('11117', 'vegetable oil', '77', '231', '30', 'local restaurant');
INSERT INTO hasfood VALUES ('11118', 'all purpose flour', '1', '3', '30', 'community garden');

