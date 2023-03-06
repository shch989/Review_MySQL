# Ch2. 데이터베이스와 테이블 만들기

## DATABASE 생성

### 주의사항

- 데이터베이스에 지정한 이름은 대문자를 사용하지 않는다.
- snake_case 형식으로 작성

### database 생성 SQL코드

```
CREATE DATABASE <database_name>;
```

### database 생성 예시

```
CREATE DATABASE soap_store;
```

## Table 이란?

테이블은 관련 데이터의 컬렉션으로 데이터베이스 내부에 구조화된 형식으로 저정되어 있는 것을 말한다.

## Table에 Data Type 명시

| Type         | Item       |
| ------------ | ---------- |
| Numberic     | INT        |
| -            | SMALLINT   |
| -            | TINYINT    |
| -            | MEDIUMINT  |
| -            | BIGINT     |
| -            | DECIMAL    |
| -            | NUMERIC    |
| -            | FLOAT      |
| -            | DOUBLE     |
| -            | BIT        |
| String Types | CHAR       |
| -            | VARCHAR    |
| -            | BINARY     |
| -            | VARBINARY  |
| -            | BLOB       |
| -            | TINYBLOB   |
| -            | MEDIUMBLOB |
| -            | LONGBLOB   |
| -            | TEXT       |
| -            | TINYTEXT   |
| -            | MEDIUMTEXT |
| -            | LONGTEXT   |
| -            | ENUM       |
| Date Types   | DATE       |
| -            | DATETIME   |
| -            | TIMESTAMP  |
| -            | TIME       |
| -            | YEAR       |

### INT란?

최대 4294967295까지의 범위의 숫자를 의미한다

### VARCHAR 란?

1~255 사이의 글자수를 의미한다.

### 데이터 타입 지정 코드

```
CREATE TABLE <tablename> (
    <column_name> <data_type>,
    <column_name> <data_type>
);
```

### 예시

```
CREATE TABLE cats (
    name VARCHAR(50),
    age INT
);

CREATE TABLE dogs (
    name VARCHAR(50),
    breed VARCHAR(50),
    age INT
);
```

## 보여주기 기능

### 모든 테이블을 보여준다.

```
SHOW tables;
```

### MySQL에서 사용가능한 코드로 cats라는 이름의 테이블 정보를 보여준다

```
SHOW COLUMNS FROM cats;
```

### SQL 방식으로 위와 결과는 동일하나 열 정보와 함께 테이블의 인덱스나 제약조건에 대한 정보도 제공해준다.

```
DESC cats;
```

## 테이블 제거하기

### 테이블 삭제

```
DROP TABLE <table-name>;
```

### 테이블 삭제 예시: cats 테이블 삭제

```
DROP TABLE cats;
```
