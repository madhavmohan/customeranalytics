
#
#split the output of the above queries into the coresponding ranges
#


#by age

#18-30

select count(*) as 'Age group 18 -30'  from userdata where userdata.status like 'subscribed' and userdata.userid not in (select distinct contentplaydata.userid from contentplaydata) and userdata.age between 18 and 30;

#30-40

select count(*) as 'Age group 30 -40' from userdata where userdata.status like 'subscribed' and userdata.userid not in (select distinct contentplaydata.userid from contentplaydata)  and userdata.age between 30 and 40;


#40-50


select count(*) as 'Age group 40 -50'  from userdata where userdata.status like 'subscribed' and userdata.userid not in (select distinct contentplaydata.userid from contentplaydata) and userdata.age between 40 and 50;


#50-60

select count(*) as 'Age group 50 -60'  from userdata where userdata.status like 'subscribed' and userdata.userid not in (select distinct contentplaydata.userid from contentplaydata)  and userdata.age between 50 and 60;



#by gender

select userdata.gender,count(*) as 'By gender'  from userdata where userdata.status like 'subscribed' and userdata.userid not in (select distinct contentplaydata.userid from contentplaydata)  group by userdata.gender ;



#by user status

#anonymous
select userdata.status,count(*) as 'By user status'  from userdata where userdata.status like 'subscribed' and userdata.userid not in (select distinct contentplaydata.userid from contentplaydata)  group by userdata.status;



#%split per country


select userdata.place,count(*) * 100.0/sum(count(*)) over() as 'By countrypercent'  from userdata where userdata.status like 'subscribed' and userdata.userid not in (select distinct contentplaydata.userid from contentplaydata)   group by userdata.place;



