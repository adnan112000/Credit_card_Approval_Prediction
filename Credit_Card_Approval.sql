#1.Group the customers based on their income type and 
#find the average of their annual income.

	select type_income,round(avg(annual_income),2) from credit_card
	group by type_income;

-- 2.Find the female owners of cars and property.  
	select * from credit_card where car_owner='Y'
	and propert_owner='Y' and  gender='F';
 
 -- 3.Group the customers based on their income type and 
-- find the average of their annual income.

	select * from credit_card where  housing_type='With parents';

-- 4.Please list the top five people having the highest income.
	select * from credit_card order by annual_income  desc limit 5;

-- 5.How many married people are having bad credit?

	select marital_status,count(*) no_of_married from credit_card 
	where status=0 group by marital_status having marital_status='Married' ;

-- 6. What is the highest education level and what is the total count?
	select education,count(education) as count from credit_card 
	group by education having education='Higher education'  
	order by count desc;

-- 7.Between married males and females, who is having more bad credit?  

	select marital_status,status,gender,count(status) as bad_credit 
	from credit_card 
	group by marital_status,status,gender 
	having marital_status = 'Married' and status=0
	order by  bad_credit desc limit 1

