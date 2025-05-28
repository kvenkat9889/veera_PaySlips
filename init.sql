CREATE TABLE IF NOT EXISTS payslips (
                id SERIAL PRIMARY KEY,
                employee_name VARCHAR(50) NOT NULL,
                employee_id VARCHAR(7) NOT NULL,
                department VARCHAR(30) NOT NULL,
                earnings JSONB NOT NULL,
                deductions JSONB NOT NULL,
                totals JSONB NOT NULL,
                timestamp TIMESTAMPTZ NOT NULL,
                CONSTRAINT unique_employee_month UNIQUE (employee_id, timestamp)
            );