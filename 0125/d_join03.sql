### 기타 종이 ###

# 1. 상호 조인(across join)
# : 한쪽 테이블의 모든 결과
# : 다른쪽 테이블의 모든 행을 조인시키는 기능
# : >> 결고가의 전체 행의 수 = 두 테이블의 각 행의 수를 곱한 개수

select * from buy cross join member;

# on 구문 사용 X (연결된 주제가 X)
# 결과의 내용 자체가 의미 X
# 주 용도는 데이터를 위한 대용량 데이터를 생성하느 ㄴ경우

#  대량 샘플 데이터 생산alter
select count(*) "데이터 개수" from sakila.inventory cross join worlad.city; -- 200건

create table cross_table select * from sakilla.actor -- 240건
cross join wdrld.county;
 
 drop table cross_table;
 
 # 자체 조인(self join)
 # : 자신이 자신과 조인, 1개의 테이블을 사용
 
 #! 기본 형태
 # select 열 목록
 # from 열 목록
 # 		inner join 테이블 별칭 B
 # on 검색될 조건
 # [where 조건]
 
 
 
 