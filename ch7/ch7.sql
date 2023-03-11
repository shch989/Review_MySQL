/* 새 책 몇권 추가하기 */
insert into books
	(
		title, author_fname, author_lname, 
        released_year, stock_quantity, pages
	) values
    ('10% Happier', 'Dan', 'Harris', 2014, 29, 256),
    ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
	('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

/* author_lname 열의 데이터만 출력 */
select author_lname from books;

/* author_lname 열의 데이터를 중복 없이 출력 */
select distinct author_lname from books;

/* released_year 열의 데이터를 중복 없이 출력 */
select distinct released_year from books;

/* concat과 함께 사용 */
select distinct concat(author_fname,' ', author_lname) from books;

/* author_fname, author_lname 두개 다 중복인 것만 중복 없이 출력 */
select distinct author_fname, author_lname from books;

/* 모든 데이터를 author_lname 기준으로 정렬하여 출력(오름차순) */
select * from books order by author_lname;

/* 모든 데이터를 author_lname 기준으로 정렬하여 출력(내림차순) */
select * from books order by author_lname desc;

/* 모든 데이터를 released_year 기준으로 정렬하여 출력(내림차순) */
select * from books order by released_year desc;

/* title열을 위에서 3개까지만 출력 */
select title from books limit 3;

/* title열을 위에서 1개까지만 출력 */
select title from books limit 1;

/* title열을 위에서 10개까지만 출력 */
select title from books limit 10;

/* 모든 데이터를 위에서 1개까지만 출력 */
select * from books limit 1;

/* title, released_year를 released_year열의 내림차순을 기준으로 위에서 5개까지만 출력 */
select title, released_year from books 
order by released_year desc limit 5;

/* title, released_year를 released_year열의 내림차순을 기준으로 위에서 1개까지만 출력 */
select title, released_year from books 
order by released_year desc limit 1;

/* title, released_year를 released_year열의 내림차순을 기준으로 위에서 14개까지만 출력 */
select title, released_year from books 
order by released_year desc limit 14;

/* title, released_year를 released_year열의 내림차순을 기준으로 위에서 0번째부터 5개까지 출력 */
select title, released_year from books 
order by released_year desc limit 0, 5;

/* title, released_year를 released_year열의 내림차순을 기준으로 위에서 0번째부터 3개까지 출력 */
select title, released_year from books 
order by released_year desc limit 0, 3;

/* title, released_year를 released_year열의 내림차순을 기준으로 위에서 1번째부터 3개까지 출력 */
select title, released_year from books 
order by released_year desc limit 1, 3;

/* title, released_year를 released_year열의 내림차순을 기준으로 위에서 10번째부터 1개까지 출력 */
select title, released_year from books 
order by released_year desc limit 10, 1;

/* title열을 위에서 5개까지만 출력 */
select title from books limit 5;

/* title를 위에서 5번째부터 123219476457개까지 출력 */
select title from books limit 5, 123219476457;

/* title를 위에서 5번째부터 50개까지 출력 */
select title from books limit 5, 50;

/* author_fname에서 da가 포함된 행의 title, author_fname, author_lname, pages 데이터를 출력 */
select title, author_fname, author_lname, pages from books where author_fname like '%da%';

/* title에서 :가 포함된 행의 title, author_fname, author_lname, pages 데이터를 출력 */
select title, author_fname, author_lname, pages from books where title like '%:%';

/* author_fname에서 4글자인 행의 모든 데이터를 출력 */
select * from books where author_fname like '____';

/* author_fname에서 4글자이고 2번째가 a인 행의 모든 데이터를 출력 */
select * from books where author_fname like '_a__';

/* 도전과제 */
/* stories가 포함된 title 행을 출력 */
select title from books where title like '%stories%';

/* 가장 페이지수가 큰 행에서 title, pages를 출력 */
select title, pages from books order by pages desc limit 1;

/* title - released_year을 summary라는 열 이름으로 내림차순으로 3개까지 출력 */
select concat(title, ' - ', released_year) as 'summary' from books order by released_year desc limit 3;

/* 저자의 성에 띄어쓰기가 들어간 책을 모두 찾아라 */
select title, author_lname from books where author_lname like '% %';

/* 재고가 가장 적은 책의 행에서 title, released_year, stock_quantity을 3개까지 출력 */
select title, released_year, stock_quantity from books order by stock_quantity limit 3;

/* 저자의 성(오름차순)을 기준으로 title과 author_lname을 출력하라 */
select title, author_lname from books order by author_lname;

select upper(concat('My favorite author is ', author_fname, ' ', author_lname, '!')) as 'yell' from books order by author_lname;