CREATE TABLE mst_companies (
    id int NOT NULL AUTO_INCREMENT,
    company_name varchar(100) NOT NULL,
    post_code varchar(8) NOT NULL,
    address varchar(100) NOT NULL,
    facility_name varchar(100) NOT NULL,
    tell varchar(20) NOT NULL,
    ceo varchar(50) NOT NULL,
    capital varchar(15) NOT NULL,
    pay_cutoff_date varchar(2) NOT NULL,
    pay_date varchar(2) NOT NULL,
    empl_insur_apply_office_num varchar(13),
    empl_insur_estab_date date,
    labor_insur_num varchar(15),
    labor_insur_estab_date date,
    social_insur_num varchar(6),
    social_insur_estab_date date,
    welfare_pension_insur_office_num varchar(4),
    corporate_num varchar(13),
    start date,
    paidvacanmt_cutoff_date varchar(5),
    end date,
    create_at date,
    create_acc int,
    update_at date,
    update_acc int,
    PRIMARY KEY (id)
);

CREATE TABLE mst_employees (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    name_kana varchar(100) NOT NULL,
    birthday date NOT NULL,
    in_company date NOT NULL,
    exit_company date,
    sex tinyint NOT NULL,
    salary_type tinyint NOT NULL,
    base int NOT NULL,
    weekly_work_time decimal NOT NULL,
    work_type tinyint,
    std_monthly_compensation int NOT NULL,
    empl_insur_insured_num varchar(13),
    pension_num varchar(10),
    mynumber varchar(12),
    former_job varchar(100),
    dependent tinyint NOT NULL,
    health_insur_num int,
    nationality varchar(40),
    empl_insur_insur_qual_acq_date date,
    empl_insur_insur_qual_lost_date date,
    soc_insur_insur_qual_acq_date date,
    soc_insur_insur_qual_lost_date date,
    start date,
    end date,
    create_at date NOT NULL,
    create_acc int NOT NULL,
    update_at date,
    update_acc int,
    memo varchar(100),
    PRIMARY KEY (id)
);

CREATE TABLE mst_payments (
    id int NOT NULL AUTO_INCREMENT,
    payment_date date NOT NULL,
    income int NOT NULL,
    base int,
    overtime_pay int,
    nighttime_pay int,
    holiday_pay int,
    commuting_pay int,
    health_insur int,
    pension_insur int,
    employee_insur int,
    care_insur int,
    income_tax int,
    inhabitant_tax int,
    withholding_tax int,
    adj_pay int,
    others int,
    create_at date NOT NULL,
    create_acc int NOT NULL,
    update_at date,
    update_acc int,
    PRIMARY KEY (id)
);

CREATE TABLE mst_calendar (
    id int NOT NULL AUTO_INCREMENT,
    year int NOT NULL,
    month int NOT NULL,
    day int NOT NULL,
    day_of_week char(1) NOT NULL,
    visible_st tinyint NOT NULL,
    working_st tinyint NOT NULL,
    memo varchar(99),
    create_at date NOT NULL,
    create_acc int NOT NULL,
    update_at date,
    update_acc int,
    PRIMARY KEY (id)
);

CREATE TABLE mst_jobshift (
    id int NOT NULL AUTO_INCREMENT,
    shift_name varchar(20) NOT NULL,
    visible_flg tinyint NOT NULL,
    leaving_time tinyint NOT NULL,
    work_in_time time NOT NULL,
    leave_time time NOT NULL,
    rest time NOT NULL,
    memo varchar(99),
    create_at date NOT NULL,
    create_acc int NOT NULL,
    update_at date,
    update_acc int,
    PRIMARY KEY (id)
);

CREATE TABLE mst_admin (
    id int NOT NULL AUTO_INCREMENT,
    employees_id int NOT NULL,
    admin_id varchar(30) NOT NULL,
    password varchar(200) NOT NULL,
    fail_count int,
    start date,
    end date,
    create_at date NOT NULL,
    create_acc int NOT NULL,
    update_at date,
    update_acc int,
    PRIMARY KEY (id)
);

CREATE TABLE trn_attends (
    id int NOT NULL AUTO_INCREMENT,
    job_date date NOT NULL,
    working_st tinyint NOT NULL,
    round_work_in_time time NOT NULL,
    work_in time NOT NULL,
    round_leaving_time time NOT NULL,
    leavig time NOT NULL,
    work_time time NOT NULL,
    rest time NOT NULL,
    orvertime time,
    nighttime time,
    holiday_time time,
    down_time time,
    create_at date,
    create_acc int,
    create_mac varchar(20),
    update_at date,
    update_acc int,
    update_mac varchar(20),
    PRIMARY KEY (id)
);

CREATE TABLE trn_paidvacasubm (
    id int NOT NULL AUTO_INCREMENT,
    employee_id int NOT NULL,
    subm_date date NOT NULL,
    target_date date NOT NULL,
    subm_st tinyint NOT NULL,
    create_at date NOT NULL,
    create_acc int NOT NULL,
    update_at date,
    update_acc int,
    PRIMARY KEY (id)
);