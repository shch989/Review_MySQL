/* books 테이블 생성 */
create table books 
	(
		book_id int not null auto_increment,
		title varchar(100),
		author_fname varchar(100),
		author_lname varchar(100),
		released_year int,
		stock_quantity int,
		pages int,
		primary key(book_id)
	);
    
/* 테이블 생성 확인 */
desc books;

/* 테이블에 다중 데이터 삽입 */
insert into books (title, author_fname, author_lname, released_year, stock_quantity, pages)
values
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

/* 데이터 삽입 확인 */
select * from books;

/* 모든 행의 author_fname, author_lname 데이터 불러오기 */
select author_fname, author_lname from books;

/* author_fname, author_lname 병합해서 full name으로 보여주기 */
select concat(author_fname, ' ', author_lname) as 'full name' from books;

/* fist, last, full 로 보여주기 */
select author_fname as first, author_lname as last, concat(author_fname, " ", author_lname) as full from books;

/* author_fname, author_lname 데이터 사이에  - 를 삽입하여 병합 출력 */
select concat_ws(' - ', title, author_fname, author_lname) from books;

/* Hello World에서 첫번째 글자에서부터 4개의 글자를 출력 */
select substring('Hello World', 1, 4);

/* Hello World에서 3번째 글자에서 부터 끝까지 출력 */
select substring('Hello World', -3);

/* title열의 데이터를 첫번째 부터 10개의 글자만으로 하여 short title이라는 이름으로 보여주기 */
select substring(title, 1, 10) as 'short title' from books;

/* 위의 작업과 동일한 결과를 불러옴 */
select substr(title, 1, 10) as 'short title' from books;

/* substring과 concat을 함께 사용 */
select concat(substring(title, 1, 10), '...') as 'short title' from books;

/* Hello World에서 Hello를 다른 문자로 변경 */
select replace('Hello World', 'Hello', '$#@%');

/* Hello World에서 l를 7로 변경 */
select replace('Hello World', 'l', '7');

/* Hello World에서 o를 0로 변경 */
select replace('Hello World', 'o', '0');

/* Hell0 World에서 o를 *로 변경 */
select replace('Hell0 World', 'o', '*');

/* 특정 문장에서 빈 문자를 and로 변경 */
select replace('cheese bread coffee milk', ' ', ' and ');

/* title 열 데이터에서 e를 3으로 변경 */
select replace(title, 'e', '3') from books;

/* title 열 데이터에서 빈 문자를 -으로 변경 */
select replace(title, ' ', '-') from books;

/* Hello World의 문자데이터를 뒤집기 */
select reverse('Hello World');

/* meow meow의 문자데이터를 뒤집기 */
select reverse('meow meow');

/* author_fname 열의 문자데이터를 뒤집기 */
select reverse(author_fname) from books;

/* woof와 woof를 뒤집은 문자데이터를 병합 출력 */
select concat('woof', reverse('woof'));

/* author_fname열 데이터와 author_fname열 데이터를 뒤집은 데이터를 병합 출력 */
select concat(author_fname, reverse(author_fname)) from books;

/* Hello World 문자데이터의 길이를 출력 */
select char_length('Hello World');

/* 테이블에서 title 열의 데이터와 문자데이터의 길이를 함께 출력  */
select char_length(title) as length, title from books;

/* 테이블에서 author_lname 열의 데이터와 문자데이터의 길이(length)를 함께 출력  */
select author_lname, char_length(author_lname) as 'length' from books;

/* concat, char_length를 함께 사용 */
select concat(author_lname, ' is ', char_length(author_lname), ' characters long') from books;

/* Hello World의 영문을 모두 대문자로 변경 */
select upper('Hello World');

/* Hello World의 영문을 모두 소문자로 변경 */
select lower('Hello World');

/* title 열의 문자데이터의 영문을 모두 대문자로 변경 */
select upper(title) from books;

/* title 열의 문자데이터의 영문을 모두 소문자로 변경 */
select lower(title) from books;

/* concat과 upper 함께 사용 */
select concat('MY FAVORITE BOOK IS ', upper(title)) from books;

/* concat과 lower 함께 사용 */
select concat('MY FAVORITE BOOK IS ', lower(title)) from books;

/* 도전과제 */
/* 문장을 뒤집고 대문자로 바꾸어라 */
select reverse(upper('Why does my cat look at me with such hatred?'));
select upper(reverse('Why does my cat look at me with such hatred?'));

/* 아래의 실행문의 결과를 말하여라 답: I-like-cats */
select replace(concat('I', ' ', 'like', ' ', 'cats'), ' ', '-');

/* books 테이블에 있는 title의 데이터의 공백을 모두 -> 로 변경하여라 또한 열 이름을 title로 하여라 */
select replace(title, ' ', '->') as title from books;

/* forwards backwards라는 열 이름으로 하여 author_lname과 author_lname을 뒤집은 데이터를 출력 */
select author_lname as forwards, reverse(author_lname) as backwards from books;

/* full name in caps라는 열 이름으로 저자의 풀네임을 모두 대문자로 출력 */
select upper(concat(author_fname, ' ', author_lname)) as 'full name in caps' from books;

/* blurb라는 이름으로 책 제목과 출간 연도를 합쳐서 출력 */
select concat(title, ' was released in ', released_year) as 'blurb' from books;

/* title과 title의 글자수(character count)를 각각 출력 */
select title, char_length(title) as 'character count' from books;

/* 마지막 문제: 같은 결과가 나오도록 출력하라 */
select concat(substring(title, 1, 10), '...') as 'short title', 
	concat(author_lname, ',', author_fname) as 'author',
    concat(stock_quantity, ' in stock') as 'quantity'
    from books;