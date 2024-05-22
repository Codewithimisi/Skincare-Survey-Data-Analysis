-- Demographic Analysis
-- 1) What is the gender distribution of the survey respondents?
select gender, count(gender) as gender_distribution
from skincare_survey
group by gender;

-- 2) What is the age distribution of the survey respondents?
select age, count(age) as age_distribution
from skincare_survey
group by age;

-- 3) What is the race distribution of the survey respondents?
select race, count(race) as age_distribution
from skincare_survey
group by race;

-- 4) What is the occupation distribution of the survey respondents?
select Occupation, count(occupation) as age_distribution
from skincare_survey
group by Occupation;

-- 5) How do they value skincare
select SkincareImportanceAgreementLevel, count(*)
from skincare_survey
group by SkincareImportanceAgreementLevel;

-- Skincare Product Usage
-- 1) How many respondents have previously used skincare products?
select count(*) 
from skincare_survey
where SkincareUsageHistory='yes';

-- 2) How many respondents use samples before purchasing skincare products?
select count(*) 
from skincare_survey
where PrePurchaseSkincareSampling= 'yes';

-- 3) What is the most common factor influencing how respondents choose skincare products
select ProductSelectionApproach, count(*) as mostcommonfactor
from productselectionapproach
group by ProductSelectionApproach
order by mostcommonfactor desc
limit 1;

-- Challenges in Skincare
-- 1) What are the 5 most frequently reported skin problems?
select SkinConcernStatements, count(*) as commonskinproblems
from skinconcernstatements
group by SkinConcernStatements
order by commonskinproblems desc
limit 5;

-- 2) Analyze how respondents struggle with finding the right skincare routine or products.
select DifficultyFindingProducts, count(*)
from skincare_survey
group by DifficultyFindingProducts;

-- 3) Measure the level of skepticism respondents have towards influencer recommendations.
select InfluencerRecommendationUncertainty, count(*)
from skincare_survey
group by InfluencerRecommendationUncertainty;

-- 4) Evaluate how respondents find it difficult to understand product ingredient lists.
select DifficultyUnderstandingIngredients, count(*)
from skincare_survey
group by DifficultyUnderstandingIngredients;

-- 5) Examine the frequency of allergic reactions to new skincare products.
select SkinAllergiesAfterProductUse, count(*)
from skincare_survey
group by SkinAllergiesAfterProductUse;

-- Respondents Preferences and Purchase Behavior
-- 1) Query the top 5 ingredients that make respondents more likely to purchase a skincare product.
select IngredientPreference, count(*) as mostcommoningredients
from ingredientpreferences
group by IngredientPreference
order by mostcommoningredients desc
limit 5;

-- 2) Evaluate respondents' willingness to try different skincare products.
select ProductTrialWillingness, count(*)
from skincare_survey
group by ProductTrialWillingness;

-- 3) Evaluate the frequency with which respondents purchase skincare products.
select ProductsPurchaseFrequency, count(*)
from skincare_survey
group by ProductsPurchaseFrequency;

-- 4) Where do respondents mostly purchase their skincare products?
select PurchaseLocation, count(*) as mostcommonlocation
from purchaselocation
group by PurchaseLocation
order by mostcommonlocation desc
limit 1;

-- 5) Assess the monthly expenditure of respondents on skincare products and categorize them.
select MonthlySpending, count(*) 
from skincare_survey
group by MonthlySpending;

-- Skincare Goals 
-- 1) Assess the demand for affordable expert skincare solutions.
select DesireforAffordableExpertSolutions, count(*)
from skincare_survey
group by DesireforAffordableExpertSolutions;

-- 2) Evaluate the desire for personalized skincare routines and solutions.
select DesireForPersonalizedRoutine, count(*)
from skincare_survey
group by DesireForPersonalizedRoutine;

-- 3) How many respondents lack interest in adopting a healthy lifestyle for improved skin.
select count(HealthyLifestyleForSkinGoal) 
from skincare_survey
where HealthyLifestyleForSkinGoal='No';

-- Interest in Technology 
-- 1) Gauge the belief of the respondents in technology's ability to improve skincare routines.
select TechforBetterSkincare, count(*)
from skincare_survey
group by TechforBetterSkincare;

-- 2) How many people are interested in using an AI Skin Scanning App
select count(InterestInAISkinScanningApp)
from skincare_survey
where InterestInAISkinScanningApp='yes';

-- 3) Determine the excitement level of the people interested in the app
select ExcitementLevel, count(*)
from skincare_survey
where InterestInAISkinScanningApp='yes'
group by ExcitementLevel;