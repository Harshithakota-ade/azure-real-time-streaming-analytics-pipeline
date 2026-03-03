CREATE TABLE StreamingAggregatedSales (
    window_start DATETIME,
    window_end DATETIME,
    product_id INT,
    total_sales DECIMAL(18,2),
    event_count INT
);
