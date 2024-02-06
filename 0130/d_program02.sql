# case문 활용

# 총 구매액
# 1500 이상 > 최우수고객
# 1000 ~ 1499 > 우수고객
# 1 ~ 999 > 일반고객
# 0 이하(구매한적X) > 유령고객 

select M.mem_id, M.mem_name, sum(price*amount) "총 구매액",
 case 
	when(sum(price*amount) >= 1500) then '최우수고객'
	when(sum(price*amount) >= 1000) then '우수고객'
	when(sum(price*amount) >= 1) then '일반고객'
	else '유령고객'
end "회원등급 " -- case문을 회원등급의 열로 생성
from buy B 
right outer join member M on B.mem_id = M.mem_id 
group by M.mem_id
order by sum(price*amount) desc;

# while 문
# : 반복문(조건식이 참인 동안에 SQL 문장들을 계속 반복)

# 기본 구조
# while 조건식 do
   # sql문장들
# end while;

# 1에서 100까지 더하는 while문
drop procedure if exists whileProc;
delimiter $$
create procedure whileProc()
begin declare i int; -- 1에서 100까지 증가할 변수 
	declare hap int; -- 더한 값을 누적할 변수 
    set i = 1;
    set hap = 0;

while (i <= 100) do 
set hap = hap + i; -- hap의 원래 값에 더해 다시 hap에 할당
set i = i + 1; -- i의 원래 값에 1을 더해 다시 i에 할당
end while;
select '1부터 100까지의 합 >>>', hap;
end $$
delimiter ;

call whileProc();






