-- Q1
-- Write a query to get Profile ID, Full Name and Contact Number of the tenant who has stayed. 
-- with us for the longest time period in the past 

select p.profile_id, p.first_name + ' '+p.last_name as Full_Name, p.phone,
datediff(day,t.move_in_date, t.move_out_date) as Stay_Duration
from Tenency_Histories as t
join Profiles as p
on t.Profile_Id= p.Profile_Id
where t.move_out_date is not null
order by Stay_Duration desc;

-- Q2
-- Write a query to get the Full name, email id, phone of tenants who are married and paying. 
-- rent > 9000 using subqueries 

select p.first_name+' '+p.last_name as Full_Name, p.email, p.phone
from profiles as p 
where p.maritial_status = 'Y' and profile_id in (
	select profile_id from tenency_histories
	where rent > 9000
	);

select * from tenency_histories

select * from profiles




-- Q3
--Write a query to display profile id, full name, phone, email id, city, house id, move_in_date , 
--move_out date, rent, total number of referrals made, latest employer and the occupational 
--category of all the tenants living in Bangalore or Pune in the time period of jan 2015 to jan 
--2016 sorted by their rent in descending order 
 
 
 select top 1 p.profile_id,p.first_name+' '+p.last_name as Full_Name, p.phone,
		p.email, p.city, t.house_id, t.move_in_date, t.move_out_date, t.rent,
		count(r.referrer_id) as total_referral , e.latest_employer, e.occupational_category
	from profiles as p
	join tenency_histories as t
	on p.profile_id = t.profile_id

	left join referrals as r
	on p.profile_id = r.referrer_id

	left join employment_details as e
	on p.profile_id = e.profile_id 

	where p.city in ('Banglore', 'Pune') and
	t.move_in_date between '2015-01-01' and '2016-01-31'

	group by p.profile_id, p.first_name, p.last_name,p.phone, p.email, p.city,t.house_id,
			t.move_in_date, t.move_out_date, t.rent, e.latest_employer, e.occupational_category

	order by t.rent desc;





--Q4 
--Write a sql snippet to find the full_name, email_id, phone number and referral code of all 
--the tenants who have referred more than once. 
--Also find the total bonus amount they should receive given that the bonus gets calculated 
--only for valid referrals. 
 
 select 
	p.first_name+' '+p.last_name as Full_Name,
	p.email,
	p.phone,
	p.referral_code,
	sum(
		case
		when r.referral_valid = 1 then r.referrer_bonus_amount 
		else 0
	end ) as Total_Referral_Bonus
from profiles as p

join referrals as r
on r.referrer_id = p.profile_id

group by p.first_name, P.last_name, p.email, p.phone, p.referral_code
having count(r.referrer_id) > 1;




select top 4 * from profiles

select top 4 * from referrals

--Q5 
--Write a query to find the rent generated from each city and also the total of all cities. 
 

select a.city, sum(t.rent) as Total_rent
from tenency_histories as t
join addresses a
on t.house_id = a.house_id
group by rollup(a.city)



select * from information_schema.tables

select top 4 * from tenency_histories

select top 4 * from Houses

select top 4 * from Addresses
 
 
--Q6 
--Create a view 'vw_tenant' find 
--profile_id,rent,move_in_date,house_type,beds_vacant,description and city of tenants who 
--shifted on/after 30th april 2015 and are living in houses having vacant beds and its address. 


create view vw_tenent as
select t.profile_id, t.rent, t.move_In_date, h.house_type, h.beds_vacant, a.description, a.city
from tenency_histories as t
join houses as h
on t.house_id = h.house_id
join addresses as a
on h.house_id = a.house_id

where t.move_in_date >= '2015-04-30'
and h.beds_vacant > 0

select top 2 * from vw_tenent
order by move_in_date

 
--Q7 
--Write a code to extend the valid_till date for a month of tenants who have referred more 
--than one time 

select top 2 * from referrals

update referrals
set valid_till = dateadd(month, 1, valid_till)
where referrer_id in  (
select referrer_id
from referrals
group by referrer_id
having count(referrer_id) > 1
)

 
--Q8  
--Write a query to get Profile ID, Full Name, Contact Number of the tenants along with a new 
--column 'Customer Segment' wherein if the tenant pays rent greater than 10000, tenant falls 
--in Grade A segment, if rent is between 7500 to 10000, tenant falls in Grade B else in Grade C 

select top 5 p.profile_id, p.first_name+' '+p.last_name as Full_Name,p.phone,
case
	when t.rent > 10000 then 'Grade A'
	when t.rent between 7500 and 10000 then 'Grade B'
	else 'Grade C'
end as Customer_Segment
from Profiles as p
join Tenency_Histories as t
on p.Profile_Id = t.Profile_Id

 
--Q9 
--Write a query to get Fullname, Contact, City and House Details of the tenants who have not 
--referred atleast 5

select p.first_name+' '+p.last_name as Full_Name, p.phone, p.city,h.house_type, h.bhk_details, h.furnishing_type
from Profiles as p
join Tenency_Histories as t
on p.Profile_Id = t.profile_id
join houses as h
on t.house_id = h.House_Id
left join referrals as r
on p.profile_id = r.referrer_id
where r.referrer_id < 5


select  * from tenency_histories

select * from Houses

select  top 1* from Referrals

select top 1 * from Profiles

select top 1 * from Addresses

-- Q10 Write a query to get the house details of the house having highest occupancy 

select house_id, house_type, Bhk_Details, (bed_count - beds_vacant) as Occupied_beds
from Houses
where (Bed_Count - Beds_Vacant) = ( select Max(bed_count - beds_vacant) from Houses)
