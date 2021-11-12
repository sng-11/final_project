-- Creating tables for PH-EmployeeDB
CREATE TABLE final_demographics (
	user_id VARCHAR(40) NOT NULL,
	gender VARCHAR(40) NOT NULL,
	income_level VARCHAR(40) NOT NULL,
	age VARCHAR (40) NOT NULL,
PRIMARY KEY (user_id)
);

-- Creating tables for plays_sum
CREATE TABLE plays_sum (
	user_id VARCHAR(40) NOT NULL,
	minutes_viewed INT NOT NULL,
	ML_Output INT NULL,
PRIMARY KEY (user_id)
);

-- Joining final_demographics and plays_sum
SELECT final_demographics.user_id,
final_demographics.gender,
final_demographics.income_level,
final_demographics.age,
plays_sum.minutes_viewed,
plays_sum.ml_output
FROM final_demographics
INNER JOIN plays_sum
ON final_demographics.user_id = plays_sum.user_id;