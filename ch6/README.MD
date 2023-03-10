# Ch6. 문자열 함수의 세계
## concat, concat_ws
### 두개의 값을 병합(결과: pickle)
```
SELECT CONCAT('pi', 'ckle');
```
### 다수의 열 데이터를 특정 이름으로 병합해서 출력
```
SELECT CONCAT(author_fname,' ', author_lname) AS author_name FROM books;
```
### 다수의 열 데이터를 병합할때 특정 기호나 특수문자를 넣어서 출력
```
SELECT CONCAT_WS('-',title, author_fname, author_lname) FROM books;
```

## substring, substr
### 문자데이터의 1첫째 글자부터 4개의 글자를 출력
```
SELECT SUBSTRING('Hello World', 1, 4);
```
### 문자데이터의 7번째 글자부터 끝 글자까지 출력
```
SELECT SUBSTRING('Hello World', 7);
```
### 음수를 사용하여 문자데이터의 뒤에서 3번째 부터 끝 글자까지 출력
```
SELECT SUBSTRING('Hello World', -3);
```
### 특정 열 데이터의 1첫째 글자부터 10개의 글자를 출력(열 이름: short title)
```
SELECT SUBSTRING(title, 1, 10) AS 'short title' FROM books;
```
### substring과 동일한 방법 substr 사용
```
SELECT SUBSTR(title, 1, 10) AS 'short title' FROM books;
```

## replace
### 문자 데이터에서 특정 문자를 다른 문자로 변경
```
SELECT REPLACE('Hello World', 'Hell', '%$#@');
```
```
SELECT REPLACE('Hello World', 'l', '7');
```
```
SELECT REPLACE('Hello World', 'o', '0');
```
```
SELECT REPLACE('HellO World', 'o', '*');
```
```
SELECT REPLACE('cheese bread coffee milk', ' ', ' and ');
```
### 테이블의 특정 열의 데이터에서 특정 문자를 다른 문자로 변경
```
SELECT REPLACE(title, 'e ', '3') FROM books;
```
```
SELECT REPLACE(title, ' ', '-') FROM books;
```

## reverse
### 특정 문자데이터를 뒤집기
```
SELECT REVERSE('Hello World');
```
```
SELECT REVERSE('meow meow');
```
### 테이블의 특정 열의 문자데이터를 뒤집기
```
SELECT REVERSE(author_fname) FROM books;
```
### concat과 함께 사용
```
SELECT CONCAT('woof', REVERSE('woof'));
```
```
SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;
```

## char_length
### 특정 문자데이터의 길이를 출력
```
SELECT CHAR_LENGTH('Hello World');
```
### 테이블의 문자데이터의 길이를 출력
```
SELECT CHAR_LENGTH(title) as length, title FROM books;
```
```
SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;
```
### concat과 char_length 함께 사용
```
SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;
```

## upper, lower
### 특정 문자데이터의 영문을 모두 대문자로 변경
```
SELECT UPPER('Hello World');
```
### 특정 문자데이터의 영문을 모두 소문자로 변경
```
SELECT LOWER('Hello World');
```
### 테이블의 문자데이터의 영문을 모두 대문자로 변경
```
SELECT UPPER(title) FROM books;
```
### 테이블의 문자데이터의 영문을 모두 소문자로 변경
```
SELECT LOWER(title) FROM books;
```
### concat과 upper 함께 사용
```
SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;
```
### concat과 lower 함께 사용
```
SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;
```