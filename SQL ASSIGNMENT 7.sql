select* from noble_winn;
/*1.write a SQL query to find the Nobel Prize winner(s) for the year 1978. 
Return country, year, subject and winner*/
select COUNTRY,YEAR,SUBJECT,WINNER from noble_winn 
where YEAR=1978;
/*2.write a SQL query to find the Nobel Prize winner in ‘Literature’ for 1987. 
Return winner,country*/
select WINNER,COUNTRY from noble_winn where SUBJECT="Literature" and YEAR=1987;
/*3.write a SQL query to locate the Nobel Prize winner ‘Dennis Gabor'. 
Return all records*/
select* from noble_winn where WINNER="Dennis Gabor";
/*4.write a SQL query to find the Nobel Prize winners in ‘Chemistry’ between the years 1965 and 1975. Begin and end values are included.
 Return year, subject, winner, and country*/ 
 select YEAR,SUBJECT,WINNER,COUNTRY from noble_winn where SUBJECT='Chemistry' and YEAR between 1965 and 1975;
 /*5.Write a SQL query to display all details of */
/*5.Write a SQL query to display all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin*/
select* from noble_winn where CATEGORY="Prime minister" and YEAR >1972;
/*6.write a SQL query to retrieve the details of the winners whose first names match with the string ‘Simon’. Return year, subject, winner, country, and category*/
select YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY from noble_winn where WINNER like "Simon%";
/*7.write a SQL query that combines the winners in Literature, 1971 and in Economics, 1971.
 Return year, subject, winner, country, and category*/
 select* from noble_winn where SUBJECT IN("Literature","Economics") and YEAR=1971;
 /*8.write a SQL query to find the Nobel Prize winners in 1970 excluding the subjects of Physiology and Economics. Return year, subject, winner, country, and category*/
 select* from noble_winn where SUBJECT not in ("Physiology","Economics") and YEAR=1970;
 /*9.find Nobel Prize winners for the subject that does not begin with the letter 'L'. Return year, subject, winner, country, and category. Order the result by year, descending*/
/*10.write a SQL query to combine the winners in 'Physiology' before 1971 and winners in 'Peace' on or after 1974. Return year, subject, winner, country, and categorY*/
select* from noble_winn where SUBJECT="Physiology" and YEAR<1971
Union all
select* from noble_winn where SUBJECT="Peace" and YEAR>=1974;
