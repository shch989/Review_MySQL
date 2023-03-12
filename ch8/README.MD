# Ch8. 집계 함수라는 마법
## count
### 특정 데이터 열의 갯수를 출력
```
select count(*) from books;
```
### 특정 데이터의 열 갯수를 중복 없이 출력
```
select count(distinct author_lname) from books;
```
## group by
### 특정 열을 기준으로 그룹화하여 출력
```
SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;
```
### 다른 쿼리문과 함께 사용
```
SELECT author_lname, COUNT(*) AS books_written FROM books GROUP BY author_lname ORDER BY books_written DESC;
```

## min, max
### 특정 데이터 열에서 가장 큰 데이터 출력
```
SELECT MAX(pages) FROM books;
```
### 특정 데이터 열에서 가장 작은 데이터 출력
```
SELECT MIN(author_lname) FROM books;
```
### 특정 데이터 열에서 그 특정 데이터가 가장 작은 행의 모든 데이터를 출력
```
select * from books where pages = (select min(pages) from books);
```
### 또 다른 예시 limit와 asc(오름차순)을 사용
```
select * from books order by pages asc limit 1;
```

## sum
### 특정 숫자데이터 열의 합을 출력
```
SELECT SUM(pages) FROM books;
```

## avg
### 특정 숫자데이터 열의 평균을 출력
```
SELECT AVG(pages) FROM books;
```