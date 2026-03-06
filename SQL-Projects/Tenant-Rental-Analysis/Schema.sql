create database tenent;

Go

Use tenent;

-- Table 1 Profiles

Create Table Profiles(
	Profile_Id int identity(1,1) primary key,
	First_Name varchar(255),
	Last_Name varchar(255),
	Email varchar(255) not null,
	Phone varchar(255) not null,
	City varchar(255),
	Pan_Card varchar(255),
	Created_At date not null,
	Gender varchar(255) not null,
	referral_Code varchar(255),
	Maritial_Status varchar(255) );

set identity_insert profiles on

INSERT INTO Profiles (first_name,last_name,email,phone,city,created_at,gender,referral_code,maritial_status,profile_id) VALUES
('anusha','pariti','anusha.pariti@gmail.com',8105987404,'Bangalore','2015-04-16','F','7L5FZW','Y',1),
('Ashish','Singh','ashish.singh@gmail.com',9876890463,'Bangalore','2015-05-23','M','KF34MF','Y',2),
('Bhaskar','maheshwari','bhaskar.mah@gmail.com',9801834992,'Bangalore','2015-05-01','M','5TYSHGF','N',3),
('Garima','yadav','garima0191@gmail.com',81059237004,'Bangalore','2015-10-20','F','5G5FQW','N',4),
('Tanvi','mann','tanvi.mann1907@gmail.com',9178352769,'Bangalore','2015-02-16','F','JSH48B','N',5),
('Harish','sahai','harish294all@gmail.com',9876548763,'Bangalore','2015-11-11','M','MKGI2W','Y',6),
('Kamal','gera','kamal0094@gmail.com',8105987404,'Bangalore','2015-10-31','M','MK34ER','N',7),
('Tushar','kapoor','tushar.kapoor21@gmail.com',8926537154,'Pune','2015-12-12','M','KLF12E','N',8),
('Shivshankar','das','sankar.shiva730@gmail.com',9801834992,'Pune','2015-10-06','M','3RE5TY','Y',9),
('Aditi','jain','aditi.jain@sproxil.com',9873123456,'Pune','2015-06-11','F','5TPL4E','N',10),
('Deepa','sudhakar','sudhakar.deepa@gmail.com',7896785432,'Pune','2015-09-15','F','4RTYUIO','Y',11),
('Umang','parejiya','uparejiya@gmail.com',7896543674,'Pune','2015-07-18','M','6TY4WE','N',12),
('Mitali','gupta','mitali.gupta80@gmail.com',8796751238,'Pune','2015-03-24','F','5RTYU3','Y',13),
('Manisha','Yadav','maniyadav88@gmail.com',9867845182,'Delhi','2015-01-27','F','LKGHY6','N',14),
('Shivani','godha','shivani_go@nid.edu',9878673428,'Delhi','2015-02-19','F','8NM4R','Y',15),
('Rajan','pandey','raajanpandey@gmail.com',8987647811,'delhi','2015-09-04','M','5TYUIO','N',16),
('Roosena','manuel','roseenasimimanuel@gmail.com',9875623345,'Delhi','2015-04-13','F','6TYHU','Y',17),
('Prabhjot','gill','prabhjotgill09@gmail.com',9800786688,'Delhi','2015-12-30','M','GHJK34','N',18),
('Ankita','sharma','ankita.anku96@gmail.com',9988789656,'Delhi','2015-08-17','F','TH67TY','Y',19),
('Karan','Singh','karan.singh@gmail.com',8976665768,'Delhi','2015-09-15','M','LRF34F','N',20);

set identity_insert profiles off

select * from Profiles


-- Table 2 Houses

Create table Houses (
	House_Id int identity(1,1) primary key,
	House_Type varchar(255) ,
	Bhk_Details varchar(255),
	Bed_Count int not null,
	Furnishing_Type varchar(255),
	Beds_Vacant int not null );

set identity_insert Houses on

INSERT INTO Houses (house_type,Bhk_Details,bed_count,furnishing_type,beds_vacant,house_id) VALUES
('Apartment','3 BHK',5,'unfurnished',2,1),
('Apartment','3 BHK',3,'unfurnished',1,2),
('Apartment','3 BHK',6,'fully-furnished',4,3),
('Apartment','2 BHK',2,'fully-furnished',0,4),
('Independent','4 BHK',4,'fully-furnished',2,5),
('Apartment','3 BHK',3,'semifurnished',1,6),
('Apartment','3 BHK',3,'semifurnished',0,7),
('Apartment','2 BHK',4,'fully-furnished',1,8),
('Independent','1 BHK',2,'unfurnished',0,9),
('Independent','3 BHK',3,'fully-furnished',1,10),
('Apartment','1 BHK',1,'unfurnished',0,11),
('Independent','1 BHK',2,'unfurnished',1,12),
('Independent','2 BHK',4,'unfurnished',2,13),
('Apartment','3 BHK',3,'fully-furnished',0,14),
('Independent','1 BHK',2,'unfurnished',1,15),
('Apartment','3 BHK',3,'fully-furnished',0,16),
('Independent','3 BHK',3,'fully-furnished',1,17),
('Independent','2 BHK',2,'fully-furnished',1,18),
('Independent','3 BHK',3,'fully-furnished',1,19),
('Independent','1 BHK',2,'unfurnished',2,20);

set identity_insert Houses off

select * from Houses

-- Table 3 Addresses

Create table Addresses(
	Ad_Id int identity(1,1) Primary Key,
	Name varchar(255),
	Description text,
	Pincode int,
	City varchar(255),
	House_Id int not null,

	constraint FK_address_House
	foreign key (House_Id)
	references Houses(House_Id) );

set identity_insert Addresses on

INSERT INTO Addresses (name,description,city,pincode,house_id,Ad_Id) VALUES
('Zaanz appartment','Sterling BrookSide, Opp. Kundalahalli Colony, ITPL Main Rd','bangalore',560037,1,2),
('stag saptgiri','No.44,Ground floor,20th cross,Sector 2 HSR Layout,Bangalore.','bangalore',560102,2,3),
('sri sai enclave','No.44,First floor,20th cross,Sector 2 HSR Layout.','bangalore',560102,3,4),
('orchids building','D-208, Balaji Pristine Whitefield Main Road','bangalore',560066,4,5),
('Fella homes','#11,Annaiya Reddy Rd, Narayana Reddy Layout,Phase 2, Electronic City','bangalore',560100,5,6),
('Juniper appartments','# 595/1, 1st Floor,1st A main, Domlur Layout','bangalore',560038,6,7),
('UDB Building','Flat No: T1 Deccan Field Appartment Kunadanhalli main road','bangalore',560037,7,8),
('Apoorva society','Flat No-202, Apoorva Apartment No-296 Vyalikaval House Building Cooperative Society Ltd Nagavara','Delhi',561202,8,9),
('Stag saptgiri','Flat No-202, stag saptgiri No-26 phase2 Cooperative Society','Delhi',560045,9,10),
('VaK Residency','302,#473 VAK Residency, B-Block, AECS Layout Kundalahalli,','Delhi',456738,10,11),
('Sunshine hills','Flat no 3, water ville apartment R.galli','Delhi',100234,11,12),
('Sri Sai appartment','2nd House, No-80/289, Sri Hari Darshan Nilaya, Ground Floor, Bellandur','Delhi',560107,12,13),
('Barvika Residency','B105, 1st floor, B block, Barvika Residency','Delhi',5610023,13,14),
('Nestaway building','#157, 4th Cross, 1st Main Road, Lower Palace Orchard','Delhi',546783,14,15),
('Windsor Plaza','#301, Windsor Plaza,ITPL','Pune',560025,15,16),
('Indira society','No. 502, Indira Meadows, Arunodaya Colony','Pune',302017,16,17),
('Sri Krishna Society','Flat No-211 Sri Krishna sai enclave, Hoodi village, beside Vivekananda Ashram, Mahadevapura post','Pune',560048,17,18),
('uniworld','D1-1201, Uniworld Garden 2','Pune',543678,18,19),
('Vinayaka residency','49, House 1 lathangi 2nd main vinayaka housing layout, RMV 2nd stage bhoopasandra','Pune',560094,19,20),
('Sun city appartments','Majeera Diamond Towers,malad-west','Pune',5600263,20,21);

set identity_insert Addresses off

select *  from Addresses

-- Table 4 Tenecy Histories

Create Table Tenency_Histories(
	Id int identity(1,1) Primary key,
	Profile_Id int not null,
	House_Id int not null,
	Move_in_date date not null,
	Move_out_date date,
	Rent int not null,
	Bed_Type varchar(255) ,
	Move_out_reason varchar(255),

	constraint FK_Tenent_Profile
	foreign key (Profile_Id)
	references Profiles( Profile_Id),

	constraint FK_Tenent_House
	foreign key (House_Id)
	references Houses(House_Id)

	);

set identity_insert Tenency_Histories on

INSERT INTO Tenency_Histories (move_in_date,move_out_date,rent,bed_type,move_out_reason,house_id,profile_id,ID) VALUES
('2015-02-12','2016-04-30',7500,'bed','MOVE_OUT',5,1,1),
('2015-06-05',NULL,11000,'room',NULL,2,2,2),
('2015-10-28','2016-11-28',12000,'room','RENT_CHANGE',4,3,3),
('2015-04-26',NULL,8000,'bed',NULL,1,4,4),
('2015-05-15','2015-12-27',9000,'bed','MOVE_OUT',3,5,5),
('2015-12-25',NULL,10200,'room',NULL,8,6,6),
('2015-11-20',NULL,6500,'bed',NULL,6,7,7),
('2015-11-10','2016-12-31',7200,'bed','MOVE_OUT',7,8,8),
('2015-10-15',NULL,7500,'bed',NULL,9,9,9),
('2015-06-20',NULL,7500,'bed',NULL,10,10,10),
('2015-08-29','2016-06-14',8000,'bed','INTERNAL_TRANSFER',19,11,11),
('2015-02-24',NULL,11000,'room',NULL,15,12,12),
('2015-02-25',NULL,12000,'room',NULL,12,13,13),
('2016-01-07','2016-12-30',13500,'room','MOVE_OUT',18,14,14),
('2015-04-07',NULL,6500,'bed',NULL,13,15,15),
('2015-04-23',NULL,6500,'bed',NULL,17,16,16),
('2015-02-10',NULL,10500,'room',NULL,14,17,17),
('2015-10-16','2016-09-04',8000,'bed','MOVE_OUT',16,18,18),
('2015-09-26',NULL,7500,'bed',NULL,20,19,19),
('2015-09-30',NULL,9500,'bed',NULL,11,20,20);

set identity_insert Tenency_Histories off

select * from Tenency_Histories
-- Table 5 Referrals

Create table Referrals(
	ref_Id int identity(1,1) primary key,
	referrer_id int not null,
	referrer_bonus_amount float,
	referral_valid bit,
	valid_from date,
	valid_till date,

	constraint FK_Referral_Profile
	foreign key (referrer_id)
	references profiles(Profile_id)

	);

set identity_insert Referrals on

INSERT INTO Referrals(referrer_bonus_amount,referral_valid,valid_from,valid_till,referrer_id,ref_Id) VALUES
(2500,1,'2015-07-05','2015-09-05',2,1),
(2500,1,'2015-07-05','2015-09-05',3,2),
(1000,0,'2015-12-13','2016-02-13',5,3),
(2500,0,'2016-04-25','2016-06-24',6,4),
(1000,1,'2015-07-01','2015-09-01',10,5),
(2500,1,'2015-05-12','2015-07-12',12,6),
(2500,0,'2015-08-05','2015-10-05',13,7),
(1000,1,'2016-02-05','2016-04-05',20,8),
(2500,0,'2015-08-12','2015-09-12',2,9),
(1000,1,'2016-02-18','2016-04-18',5,10),
(1500,1,'2016-06-19','2016-08-19',20,12),
(2500,0,'2015-11-15','2016-01-15',9,13),
(1000,1,'2016-02-01','2016-04-01',13,14),
(1000,1,'2016-04-25','2016-06-24',5,15);

set identity_insert Referrals off



-- Table 6 Employment Details

Create table Employment_details(
	id int identity(1,1) primary key,
	Profile_id int not null,
	latest_employer varchar(255),
	official_mail_id varchar(255),
	yrs_experience int ,
	occupational_category varchar(255),

	constraint FK_Employment_Profile
	foreign key (profile_id)
	references Profiles(profile_id)

	);

set identity_insert employment_details on

INSERT INTO Employment_details (latest_employer,official_mail_id,yrs_experience,occupational_category,profile_id,ID) VALUES
('Sabre','mehdi.hasan@sabre.com',1,'Working',1,1),
('hindustan unilever','rags.ramgas@gmail.com',2,'Working',2,2),
('Technicolor','jigna.thacker@technicolor.com',1,'Working',3,3),
(NULL,NULL,NULL,'Student',4,4),
('GE Healthcare','ruchita.save@ge.com',3,'Working',5,5),
('Aditya birla','shubhi.bajpai@adityabirla.com',3,'Working',6,6),
(NULL,NULL,NULL,'Student',7,7),
(NULL,NULL,NULL,'Student',8,8),
(NULL,NULL,NULL,'Student',9,9),
('huawei Technologies','gunjan19wadhwa@gmail.com',4,'Working',10,10),
(NULL,NULL,NULL,'Student',11,11),
('Centurylink India','PreetInder.Sodhi@centurylink.com',2,'Working',12,12),
('SAP Labs India','udit.singh@sap.com',2,'Working',13,13),
('NestAway','deepak@nestaway.com',1,'Working',14,14),
(NULL,NULL,NULL,'Student',15,15),
(NULL,NULL,NULL,'Student',16,16),
('Microsoft','t-akmeh@microsoft.com',2,'Working',17,17),
('Cognizant','bhavranjan.pandey@cognizant.com',2,'Working',18,18),
(NULL,NULL,NULL,'Student',19,19),
('Tiny Mogul Games','sanchit@hike.in',3,'Working',20,20);

set identity_insert employment_details off


select * from Employment_details
select * from information_schema.tables;

exec sp_changedbowner 'sa';

alter authorization on database :: tenent to sa;
























