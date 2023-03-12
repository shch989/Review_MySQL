/* books 테이블의 모든 데이터를 불러옴 */
select * from books;

/* books 테이블의 데이터 열의 갯수를 출력 */
select count(*) from books;

/* author_fname 열의 모든 데이터를 불러옴 */
select author_fname from books;

/* author_fname 데이터 열의 갯수를 출력 */
select count(author_fname) from books;

/* author_lname 데이터 열의 갯수를 중복없이 출력 */
select count(distinct author_lname) from books;

/* author_lname을 기준으로 그룹화하여 author_lname과 열의 갯수를 출력 */
select author_lname, count(*) from books group by author_lname;

/* author_lname을 기준으로 그룹화하여 author_lname과 열의 갯수를  내림차순으로 출력 */
select author_lname, count(*) as books_written from books group by author_lname order by books_written desc;

/* released_year열에서 가장 작은 데이터를 출력 */
select min(released_year) from books;

/* pages 열에서 가장 큰 테이터를 출력 */
select max(pages) from books;

/* pages 열에서 pages가 가장 작은 행의 모든 데이터를 출력 */
select * from books where pages = (select min(pages) from books);

/* 위의 코드의 다른 예시 */
select * from books order by pages asc limit 1;

/* 저자의 풀네임을 그룹화하여 저자의 성씨, 이름, 최소 연도를 출력 */
select author_fname, author_lname, min(released_year) from books group by author_lname, author_fname; 

/* 저자의 이름을 그룹화하여 저자의 이름과 최고 연도, 최소 연도를 출력 */
select author_lname, max(released_year), min(released_year) from books group by author_lname;

/* 저자의 이름을 그룹화하여 저자의 이름 출판 책 갯수, 최고 연도, 최소 연도, 최고 페이지를 출력 */
select
	author_lname,
    count(*) as books_written,
    max(released_year) as latest_release,
    min(released_year) as earliest_release,
    max(pages) as longest_page_count
from books group by author_lname;

/* 저자의 풀네임을 그룹화하여 저자의 이름, 성씨, 출판 책 갯수, 최고 연도, 최소 연도, 최고 페이지를 출력 */
select
	author_lname,
    author_fname,
    count(*) as books_written,
    max(released_year) as latest_release,
    min(released_year) as earliest_release,
    max(pages) as longest_page_count
from books group by author_lname, author_fname;

/* page 열의 모든 숫자데이터의 합을 출력 */
select sum(pages) from books;

/* 저자의 이름을 그룹화하여 저자의 이름 출판한 책의 종류 갯수, 페이지의 합계를 출력 */
select author_lname, count(*), sum(pages) from books group by author_lname;

/* 평균 페이지를 출력 */
select avg(pages) from books;

/* 평균 연도를 출력 */
select avg(released_year) from books;

/* 연도를 그룹화하여 연도, 평균가격, 책 종류 갯수를 출력 */
select 
	released_year,
    avg(stock_quantity),
    count(*)
from books group by released_year;

/* 도전과제 */
/* 테이블에서 모든데이터 행의 갯수를 출력 */
select count(*) from books;

/* 연도를 그룹화하여 연도와 책 종류 갯수를 출력 */ 
select released_year, count(*) from books group by released_year;

/* 저자의 풀네임을 그룹화하여 평균 연도를 출력 */
select avg(released_year) from books group by author_lname, author_lname;

/* 연도를 그룹화하여 연도와 책 종류 갯수, 평균 페이지 수를 출력 */
select released_year as 'year', count(*) as '# books', avg(pages) as 'avg pages' from books group by released_year order by released_year;

/* pages 열에서 가장 페이지가 큰 데이터 행에서 저자의 풀네임(author)과 페이지를 출력 */
select concat(author_fname, ' ', author_fname) as 'author', pages from books where pages = (select max(pages) from books);

/* 다른 방법을 사용해서 위와 같은 결과를 출력 */
select concat(author_fname, ' ', author_fname) as 'author', pages from books order by pages desc limit 1;