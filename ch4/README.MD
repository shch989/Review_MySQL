# Ch4. CRUD 명령

## SQL에서의 Create

### create

```
create table cats
	(
    cat_id int not null auto_increment,
    name varchar(100),
    breed varchar(100),
    age int,
    primary key(cat_id)
	);
```

## SQL에서의 Read

### select

#### 모든 데이터를 cats 테이블에서 가져옴

```
select * from cats;
```

#### 한개의 데이터(name)를 cats 테이블에서 가져옴

```
select name from cats;
```

#### 여러개의 데이터를 cats 테이블에서 가져옴

```
select name, breed from cats;
```

### where 소개

#### age가 4인 행의 모든 데이터를 가져옴

```
select * from cats where age=4;
```

#### name이 Egg인 행의 모든 데이터를 가져옴

```
select * from cats where name='Egg';
```

### alias 소개

#### cats 테이블에서 cat_id와 name의 데이터를 읽는데 cat_id를 id로 변경하여 읽기

```
select cat_id as id, name from cats;
```

## SQL에서의 Update

### update

#### cats 테이블에서 breed가 Tabby인 행의 breed를 Shorthair로 수정한다

```
update cats set breed='Shorthair' where breed='Tabby';
```

#### cats 테이블에서 name이 Misty인 행의 age를 14로 수정한다

```
update cats set age=14 where name='Misty';
```

## SQL에서의 Delete

### drop

```
drop table cats;
```

### delete

#### name이 Egg인 행을 모두 삭제

```
delete from cats where name='Egg';
```

#### 모든 cats 테이블의 행을 삭제

```
delete from cats;
```
