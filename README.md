# Iflix Data Analysis Project
Selected Topic: An Investigation of Trends in Streaming Service (Iflix) Users

## Why are we interested in this topic? Why is this relevant?
With the global boom in popularity of streaming services such as Netflix and Disney+, rich consumer data can now be mined from these digital platforms to inform companies of what entertainment trends are on the rise. For the smaller company, Iflix, we are interested in dissecting its data to investigate what kind of user prefers what form of entertainment, to allow for a more tailored user experience. As such, we will take the gathered consumer data and use machine learning methods to build a model that can accurately predict preferences based on factors such as income, gender, and country code, just to name a few. Ultimately, results of this project can allow us to advise Iflix how to do targeted marketing to a specific audience.

## Team Description
Sharon Ng (__Square__: Repository Maintenance; Pandas Data Cleaning) <br />
Sereymony Srey (__Triangle__: Machine Learning Model)<br />
Melissa Logan (__Circle__: Database)<br />
Victoria Drozdowsky (__X__: Technologies Manager; Data Visualization/Tableau)

### Team Communication Protocol
- Primary mode of conversation will happen on a __Slack__ chat.
- Storage of code and general progress of project will happen on __Github__, specifically this repository.
- Planning and write-up will happen on a shared __Google__ drive among the team. 
- Virtual meeting times will occur during class (T & Th 7-9pm) and after class, with length of time as needed.

## Data Source
__"Movie streaming datasets iflix" - Found on Kaggle, posted by user Aung Pyae.__<br />
_The datasets were created for the iflix datathon challenge in 2019._<br />
https://www.kaggle.com/aungpyaeap/movie-streaming-datasets-iflix

The dataset contains the following sheets:
1. __assets.csv__: describes runtime of content, type of content, and genre.
2. __demographics.csv__: describes demographic data related to platform of consumption (Android or iOS), income, and gender.
3. __plays.csv__: describes the total number of minutes viewed for a particular content title.
4. __psychographics.csv__: describes whether user identifies as "Movie Lover" or "TV Lover", and further into subgroups such as "English Movies Fans" and "Korean TV Fans".
5. __users.csv__: describes what country code the user is from.

Samples Excel sheets (csv) of the data are present in the respository. 


## Data Cleaning (Sharon)
We intend on using Pandas and Jupyter Notebook to clean our dataset prior to use. Notably, we plan to:
- Eliminate duplicate demographic data within each user_id.
- Have demographic data for the same user_id to be in the same row.

## Database (Melissa)
Tables and database will be created in Postgres SQL.
Our ERD shows the flow of information from one table to another, as captured in the image below. Psychographics table will join Users, Plays and Demographics on user_id. Plays will connect to Assets on asset_id. 

![Database_Schema](Database_Schema.png)

## Machine Learning Model (Sereymony)
Proposed Method: Supervised learning, multiple-variable linear regression model (will be using random forest as well to see which model predicts better) <br />
Our Accuracy Confidence Range Goal: 80-90% <br />
Platform Used: Google Colab (which will be linked to Postgres). 

Dependencies: The dependencies used within code will be: pandas, numpy, matplotlib.pyplot, sklearn (linear_model), sklearn.preprocessing (LabelEncoder), sqlalchemy 

Explanation for dependencies: 

- pandas: used to create & view dataframes within code
- numpy: used to calculate numerical values of outputs
- matplotlib: used for heatmaps & plotting
- sklearn: used for preprocessing the data as well as for linear regression code
- sqlachemy: used for database stored in PostgresSQL 

X variables: gender, income level, age, country code, platform
Y variable: minutes_viewed 

_Hypothesis_: Our hypothesis is that high-income earners will have less leisure time to spend on watching tv/movies. Therefore, their total running times will be lower than those of medium-income and low-income earners. 

_Research Question_: How long will a user spend watching Iflix given their income demographic (low, middle, or high)? 
_Secondary Question_: How can we use the answer to the above question to tailor our marketing to Iflix users based on their income level? And other demographics?
