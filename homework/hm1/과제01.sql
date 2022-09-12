select * from employees;

-- 문제1.
-- 사원 테이블에서 JOB_ID별 사원 수를 구하세요.
-- 사원 테이블에서 JOB_ID별 월급의 평균을 구하세요. 월급의 평균 순으로 내림차순 정렬하세요
SELECT 
    COUNT(job_id)
FROM employees;

SELECT 
    job_id,
    AVG(salary)
FROM employees
GROUP BY job_id
ORDER BY job_id DESC;

-- 문제1 강사님 방식
SELECT 
    job_id,
    COUNT(*) AS 사원수
FROM employees
GROUP BY job_id;

SELECT
    job_id,
    AVG(salary) AS 평균월급
FROM employees
GROUP BY job_id
ORDER BY AVG(salary) DESC;

--문제 2.
--사원 테이블에서 입사 년도 별 사원 수를 구하세요.
SELECT
    COUNT(hire_date)
FROM employees;

-- 문제2 강사님 방식
SELECT
    TO_CHAR(hire_date, 'YY'),
    COUNT(*)
FROM employees
GROUP BY TO_CHAR(hire_date, 'YY');

--문제 3.
--급여가 1000 이상인 사원들의 부서별 평균 급여를 출력하세요. 단 부서 평균 급여가 2000이상인 부서만 출력
SELECT 
    first_name AS 사원,
    department_id AS 부서,
    AVG(salary) AS 평균급여
FROM employees
WHERE salary >= 2000
GROUP BY department_id, first_name
HAVING AVG(salary) >= 1000;

-- 문제3 강사님 방식
SELECT
    department_id,
    AVG(salary)
FROM employees
WHERE salary >= 8000
GROUP BY department_id
HAVING AVG(salary) >= 5000;

--문제 4.
--사원 테이블에서 commission_pct(커미션) 컬럼이 null이 아닌 사람들의
--department_id(부서별) salary(월급)의 평균, 합계, count를 구합니다.
--조건 1) 월급의 평균은 커미션을 적용시킨 월급입니다.
--조건 2) 평균은 소수 2째 자리에서 절삭 하세요
SELECT
    first_name,
    department_id,
    commission_pct, 
    salary,
    COUNT(*),
    NVL2(commission_pct, commission_pct + (AVG(salary)), 0),
    TRUNC (salary, 2) 
FROM employees
GROUP BY first_name, department_id, commission_pct, salary;
    
-- 문제4 강사님 방식
SELECT
    department_id,
    TRUNC(AVG(salary + salary * commission_pct),2) AS 평균,
    COUNT(*)
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY department_id;
    
    
    
    
    
    
    
    
    