create database toolkit1;

use toolkit1;

-- All table creation

create table login (
				e_id int,
                user_name varchar(255) NOT NULL,
                user_pass varchar(255),
				email varchar(255),
                roles varchar(255),
                enable tinyint(1) not null default '1',
				created_by varchar(255),
                created_on varchar(255),
                last_updated_by varchar(255),
                last_updated_on varchar(255)
);

create table employee (
				e_id int not null,
                team varchar(255),
                location varchar(255),
                designation varchar(255),
                role varchar(255),
                employee_name varchar(255) NOT NULL,
                email varchar(255),
                department varchar(255),
                org_level varchar(255),
                certifications varchar(255),	#multivalued
                projects varchar (255),		#multivalued
                total_exp float,
                ad_tech_exp float, 	#relevant exp
                slack_time float,
                created_by varchar(255),
                created_on varchar(255),
				last_updated_by varchar(255),
                last_updated_on varchar(255),
                primary key (e_id)
				
);

ALTER TABLE employee MODIFY employee_name varchar(255);

create table ias_skills (
				skill_id int ,
                skill_name varchar(255),
				created_by varchar(255),
                created_on varchar(255),
                last_updated_by varchar(255),
                last_updated_on varchar(255),
                primary key(skill_id)
);

create table user_skills (
				e_id int,
                employee_name varchar(255) ,
                p_skills varchar(255),
                a_skills varchar(255),
                aspired_skills varchar(255),
                p_self_rating int,		
                 a_self_rating int,
                p_manager_rating int,		#should have range from 1-10
                p_proficiency_level varchar(255),
                a_proficiency_level varchar(255),
                p_rating_delta varchar(255),
                #delta should be a skill which has an absolute difference > threshold value (eg. 2)
				created_by varchar(255),
                created_on varchar(255),
                last_updated_by varchar(255),
                last_updated_on varchar(255)
);

create table team (
				team_id int primary key,
                team_name varchar(255),
                manager_name varchar(255),
                product_owner varchar(255),
                vertical_name varchar(255),
                chapter_name varchar(255),
				created_by varchar(255),
                created_on varchar(255),
                last_updated_by varchar(255),
                last_updated_on varchar(255)
);

create table user_role(
	user_name varchar(255) not null,
    user_pass varchar(255) not null
);

create table roles(
	id int not null,
    name varchar(255)
);

create table roadmap_skills(
	r_id INT primary key auto_increment,
	required_skill varchar(255),
    min_req_skill_rating int,
	complexity int
);

insert into roadmap_skills values("Python",8,2,1);
insert into roadmap_skills values("React",9,3,2);
insert into roadmap_skills values("AWS",7,2,3);
insert into roadmap_skills values("Java",6,3,4);

select required_skill,min_req_skill_rating,complexity from roadmap_skills where r_id=2;

select * from roadmap_skills;

-- insert into ias_skills values ('1','Java','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('2','Spring Boot','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('3','Kafka','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('4','Python','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('5','Scala','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('6','Bash Shell Scripting','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('7','Docker','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('8','Hadoop','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('9','HDFS','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('10','Yarn','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('11','MapReduce','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('12','PigLatin','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('13','Spark','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('14','HiveQL','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('15','SQL','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('16','Docker','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('17','Airflow','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('18','Crontab','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('19','S3','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('20','Kinesis','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('21','ECS - Fargate','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('22','AWS EMR','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('23','AWS Athena','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('24','AWS EC2','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('25','AWS Lambda','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('26','AWS DataPipe','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('27','AWS DynamoDB','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('28','VPC','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('29','AWS CDK','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('30','Cloudformation','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('31','Cloudwatch','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('32','AWS IAM','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('33','Lake Formation','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('34','AWS RDS','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('35','MySQL (AWS RDS)','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('36','Snowflake','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('37','Vertica ','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('38','Maven','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('39','Gradle','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('40','Groovy (Build and some functional tests)','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('41','Jenkins','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('42','Nexus','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');
-- insert into ias_skills values ('43','GitHub','Aditya','2021-09-27T05:52:58Z','Aditya','2021-09-27T05:52:58Z');

-- select employee_name,team, count(team) from employee group by team having count(team); 

-- insert into login values(1,"WangPark","wpemployee","wp@integralads.com","employee",1,"aditya","2021-09-27","titiksha","2021-09-27");
-- insert into login values(36,"KevinPeter","kpmanager","kp@integralads.com","manager",1,"aditya","2021-09-27","titiksha","2021-09-27");
-- insert into login values(28,"JamesBond","jbbusinesshead","jb@integralads.com","businessHead",1,"aditya","2021-09-27","titiksha","2021-09-27");

-- update login set user_pass="$2a$10$n7W8p3kw5ked.EqDsFTT7uTFUWLMw5ngtHtG9kmUunhu9T7JcSwoa" where e_id=28;
-- update login set user_pass="$2a$10$eAEVThRB32aiBlL3MC/XuOvZhbYodD20w789T9GvQXwopyHaOsvDm" where e_id=36;

-- update user_role set e_id="36" where user_name="KevinPeter";
-- update user_role set e_id="1" where user_name="WangPark";
-- update user_role set e_id="28" where user_name="JamesBond";

-- insert into user_role values("KevinPeter","ROLE_manager");
-- insert into user_role values("WangPark","ROLE_employee");
-- insert into user_role values("JamesBond","ROLE_businessHead");

-- DELETE FROM roles where id=1;
-- SET SQL_SAFE_UPDATES = 0;

-- insert into roles values(1,"ROLE_EMPLOYEE");
-- insert into roles values(2,"ROLE_MANAGER");
-- insert into roles values(3,"ROLE_BUSINESS_HEAD");
-- insert into roles values(4,"ROLE_SCRUM_MASTER");

select * from ias_skills;
select * from employee;
select * from login;
select * from team;
select * from user_skills;
select * from roles;
select * from user_role;
select * from roadmap_skills;

insert into user_skills(employee_name,p_skills,a_skills,aspired_skills,p_self_rating,a_self_rating,p_manager_rating) values("Aditya","React","AWS","Java",7,6,4);

select * from employee where team IN(select team from employee where (team="V-Money" AND email="wp@inntegralads.com"));

select * from employee where team IN(select distinct team from employee where email="tw@integralads.com");

select * from user_skills where e_id IN(select e_id from employee where email="wp@inntegralads.com");

select e.e_id,e.employee_name, e.slack_time,p_skills,a_skills,a_self_rating,p_manager_rating from employee as e,user_skills as u 
where e.e_id=u.e_id and (u.p_skills=first or u.a_skills=first);

select e.e_id,e.employee_name, e.slack_time,p_skills,a_skills,a_self_rating,p_manager_rating from employee as e,user_skills as u 
where e.e_id=u.e_id and (u.p_skills="Python" or u.a_skills="Python")
and (u.a_self_rating>=4 and u.p_manager_rating>=4)
and (e.slack_time>=4);

#QUERY FOR GETTING TEAM SKILLS:
select * from user_skills where e_id IN(select e_id from employee where team="V-Money");

delete from login where e_id=37;
delete from employee where e_id=117;

insert into user_skills(employee_name) values("KevinPeter2");



SET SQL_SAFE_UPDATES = 0;
SET FOREIGN_KEY_CHECKS=0;

delete from employee where e_id=8;

-- Adding constrints and foreign keys

ALTER TABLE user_role
ADD PRIMARY KEY (e_id);

ALTER TABLE roles
ADD PRIMARY KEY (id);

ALTER TABLE ias_skills
ADD PRIMARY KEY (skill_id);

ALTER TABLE login
ADD PRIMARY KEY (e_id);

ALTER TABLE login
ADD FOREIGN KEY (e_id) REFERENCES employee(e_id);

ALTER TABLE user_skills
ADD FOREIGN KEY (e_id) REFERENCES employee(e_id);

ALTER TABLE user_role
ADD e_id int not null;

ALTER TABLE user_role
ADD FOREIGN KEY (e_id) REFERENCES employee(e_id);

ALTER TABLE user_role CHANGE user_pass user_role varchar(255);

ALTER TABLE employee MODIFY COLUMN e_id INT auto_increment;

ALTER TABLE roadmap_skills add COLUMN r_id INT primary key auto_increment;

ALTER TABLE login MODIFY COLUMN e_id INT auto_increment default 200;

ALTER TABLE login AUTO_INCREMENT = 200;

ALTER TABLE user_skills MODIFY COLUMN e_id INT auto_increment;

ALTER TABLE toolkit1.user_skills
ADD comments varchar(255);

ALTER TABLE toolkit1.employee
ADD hire_date varchar(255);

select * from employee where team in (
    select team from employee
    group by team having team=employee.team
);
