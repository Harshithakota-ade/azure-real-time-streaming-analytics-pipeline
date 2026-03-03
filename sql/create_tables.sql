-- Table for Orders Per Minute
CREATE TABLE dbo.rt_orders_per_minute (
    store_id VARCHAR(20),
    total_orders INT,
    window_end_time DATETIME2
);

-- Table for Revenue Per 5 Minutes
CREATE TABLE dbo.rt_revenue_5min (
    store_id VARCHAR(20),
    total_revenue DECIMAL(18,2),
    window_end_time DATETIME2
);
