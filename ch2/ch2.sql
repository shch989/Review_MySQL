/* cat_app라는 이름의 데이터베이스 생성 */
create database cat_app;

/* cat_app 데이터베이스 사용 */  
use cat_app;

/* cats 테이블 생성(최대 100의 문자길이를 가지는 name, 숫자형 age) */
create table cats(name varchar(100), age int);
    
/* 모든 테이블 보여준다 */    
show tables;

/* cats 테이블에 있는 값들을 보여준다 (MySQL 전용)*/
show columns from cats;

/* 위와 결과는 동일하나 열 정보와 함께 테이블의 인덱스나 제약조건에 대한 정보도 제공 */
desc cats;

/* cats 테이블 삭제 */
drop table cats;

/* 도전과제: 나만의 테이블 생성하기! */

/* pastries라는 이름의 테이블 생성(name:최대50글자, quantity: 숫자형) */
create table pastries(name VARCHAR(50), quantity INT);

/* 테이블 보기 */
show tables;

/* pastries 테이블 정보 보기 */
desc pastries;

/* pastries 테이블 삭제 */
drop table pastries;