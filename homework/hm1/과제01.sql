select * from employees;

-- ����1.
-- ��� ���̺��� JOB_ID�� ��� ���� ���ϼ���.
-- ��� ���̺��� JOB_ID�� ������ ����� ���ϼ���. ������ ��� ������ �������� �����ϼ���
SELECT 
    COUNT(job_id)
FROM employees;

SELECT 
    job_id,
    AVG(salary)
FROM employees
GROUP BY job_id
ORDER BY job_id DESC;

-- ����1 ����� ���
SELECT 
    job_id,
    COUNT(*) AS �����
FROM employees
GROUP BY job_id;

SELECT
    job_id,
    AVG(salary) AS ��տ���
FROM employees
GROUP BY job_id
ORDER BY AVG(salary) DESC;

--���� 2.
--��� ���̺��� �Ի� �⵵ �� ��� ���� ���ϼ���.
SELECT
    COUNT(hire_date)
FROM employees;

-- ����2 ����� ���
SELECT
    TO_CHAR(hire_date, 'YY'),
    COUNT(*)
FROM employees
GROUP BY TO_CHAR(hire_date, 'YY');

--���� 3.
--�޿��� 1000 �̻��� ������� �μ��� ��� �޿��� ����ϼ���. �� �μ� ��� �޿��� 2000�̻��� �μ��� ���
SELECT 
    first_name AS ���,
    department_id AS �μ�,
    AVG(salary) AS ��ձ޿�
FROM employees
WHERE salary >= 2000
GROUP BY department_id, first_name
HAVING AVG(salary) >= 1000;

-- ����3 ����� ���
SELECT
    department_id,
    AVG(salary)
FROM employees
WHERE salary >= 8000
GROUP BY department_id
HAVING AVG(salary) >= 5000;

--���� 4.
--��� ���̺��� commission_pct(Ŀ�̼�) �÷��� null�� �ƴ� �������
--department_id(�μ���) salary(����)�� ���, �հ�, count�� ���մϴ�.
--���� 1) ������ ����� Ŀ�̼��� �����Ų �����Դϴ�.
--���� 2) ����� �Ҽ� 2° �ڸ����� ���� �ϼ���
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
    
-- ����4 ����� ���
SELECT
    department_id,
    TRUNC(AVG(salary + salary * commission_pct),2) AS ���,
    COUNT(*)
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY department_id;
    
    
    
    
    
    
    
    
    