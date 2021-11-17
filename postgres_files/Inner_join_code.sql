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
INTO ml_model1
FROM final_demographics
INNER JOIN plays_sum
ON final_demographics.user_id = plays_sum.user_id;

-- joining ml_model1 with users

SELECT ml_model1.user_id,
ml_model1.gender,
ml_model1.income_level,
ml_model1.age,
ml_model1.minutes_viewed,
users.country_code,
ml_model1.ml_output
FROM ml_model1
INNER JOIN users
ON ml_model1.user_id = users.user_id;
