# Ch7. 정교화하기
## distinct
### 특정 열의 데이터를 중복없이 출력
```
SELECT DISTINCT author_lname FROM books;
```
### concat을 사용하여 병합한 데이터를 중복 없이 출력
```
SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books;
```
### 2개 이상의 열이 모두 중복인 데이터를 중복 없이 출력
```
SELECT DISTINCT author_fname, author_lname FROM books;
```
## order by
### 데이터를 오름차순으로 정렬
```
SELECT * FROM books ORDER BY author_lname;
```
### 데이터를 내림차순으로 정렬
```
SELECT * FROM books ORDER BY author_lname DESC;
```
## limit
### 특정 열의 데이터를 위에서 3개까지만 출력
```
SELECT * FROM books LIMIT 3;
```
### 특정 열의 데이터를 특정 열의 내림차순으로 위에서 3개까지만 출력
```
SELECT * FROM books ORDER BY released_year DESC LIMIT 3;
```
### 특정 열의 데이터를 특정 열의 내림차순으로 0번째부터 3개까지만 출력
```
SELECT * FROM books ORDER BY released_year DESC LIMIT 0,3;
```
### 출력하고자 하는 갯수가 데이터 갯수보다 많아도 출력됨
```
SELECT * FROM books LIMIT 5, 123219476457;
```
## like
### 특정 열에서 특정 단어가 포함된 행의 모든 데이터를 출력
```
SELECT * FROM books WHERE author_fname LIKE '%da%';
```
### 특정 열에서 특정 단어가 4글자인 행의 모든 데이터를 출력
```
SELECT * FROM books WHERE author_fname LIKE '____';
```
### 특정 열에서 특정 단어가 4글자이고 2번째가 a인 행의 모든 데이터를 출력
```
SELECT * FROM books WHERE author_fname LIKE '_a__';
```
