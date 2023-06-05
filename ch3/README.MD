# Ch3. 데이터 삽입하기(그 외 몇가지)
## Cats 테이블에 데이터 삽입
### cats 테이블 생성(name: 최대50글자, age: 숫자형)
```
CREATE TABLE cats (
    name VARCHAR(50),
    age INT
);
```
### cat 데이터 삽입(name: Blue Steele, age: 5)
```
INSERT INTO cats (name, age) 
VALUES ('Blue Steele', 5);
```

### 다른 cat 데이터 삽입(name: Jenkins, age: 7)
```
INSERT INTO cats (name, age) 
VALUES ('Jenkins', 7);
```

## Cats 테이블의 모든 행 보기
```
SELECT * FROM cats;
```

## 다중 데이터 삽입
### 싱글 데이터 삽입
```
INSERT INTO cats (age, name) 
VALUES (2, 'Beth');
```

### 다중 데이터 삽입
```
INSERT INTO cats (name, age) 
VALUES 
  ('Meatball', 5), 
  ('Turkey', 1), 
  ('Potato Face', 15);
```

## 테이블 생성시 필수 입력 데이터 설정
### Null과 NOT_NULL
```
CREATE TABLE cats2 (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);
```

## 기본값 설정하기
### cats3 테이블에 입력되어있지 않은 값이 있는 경우 작성될 기본 값 설정
```
CREATE TABLE cats3  (    
  name VARCHAR(20) DEFAULT 'no name provided',    
  age INT DEFAULT 99  
);
```

### cats4 테이블에 NOT NULL과 DEFAULT 값 결합 사용
```
CREATE TABLE cats4  (
  name VARCHAR(20) NOT NULL DEFAULT 'unnamed',
  age INT NOT NULL DEFAULT 99
 );
```

## 기본키 입문
### 기본 키를 지정하는 방법
#### 첫 번쨰 방법
```
CREATE TABLE unique_cats (
  cat_id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  age INT NOT NULL
);
```
#### 두 번쨰 방법
```
CREATE TABLE unique_cats2 (
  cat_id INT NOT NULL,
  name VARCHAR(100) NOT NULL,
  age INT NOT NULL,
  PRIMARY KEY (cat_id)
);
```
### 자동증가 키를 지정하는 방법
```
create table unique_cats3 (
  cat_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  age INT NOT NULL,
  PRIMARY KEY (cat_id)
);
```
