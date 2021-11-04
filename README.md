# insert creative final_project title
(": An Investigation of Trends in Streaming Service Users)

## Abstract
With the global boom in popularity of streaming services such as Netflix and Disney+, rich consumer data can now be mined from these digital platforms to inform companies of what entertainment trends are on the rise. For the smaller company, Iflix, we are interested in dissecting its data to investigate what kind of user prefers what form of entertainment, to allow for a more tailored user experience. As such, we will take the gathered consumer data and use machine learning methods to build a model that can accurately predict preferences based on factors such as income, gender, and country code, just to name a few.

## Team Description
Sharon Ng (__Square__: Repository Maintenance; Progress Coordination) <br />
Sereymony Srey (__Triangle__: Machine Learning Model)<br />
Melissa Logan (__Circle__: Database)<br />
Victoria Drozdowsky (__X__: Technologies Manager)

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
2. __demographics.csv__: describes demographic data related to platform of consumption (Android or iOS), income, and gender. Note that only 69% of users give income data and another 18% give gender data (with no overlap between the two).
3. __plays.csv__: describes the total number of minutes viewed for a particular content title.
4. __psychographics.csv__: describes whether user identifies as "Movie Lover" or "TV Lover", and further into subgroups such as "English Movies Fans" and "Korean TV Fans".
5. __users.csv__: describes what country code the user is from.
