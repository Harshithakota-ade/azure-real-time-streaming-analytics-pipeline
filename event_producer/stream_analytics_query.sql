-- Input: EventHubInput
-- Output 1: SqlAggregatedOutput
-- Output 2: AdlsRawOutput

-- 1️⃣ Orders per Minute
SELECT
    store_id,
    COUNT(*) AS total_orders,
    System.Timestamp AS window_end_time
INTO SqlAggregatedOutput
FROM EventHubInput
WHERE event_type = 'OrderCreated'
GROUP BY
    store_id,
    TumblingWindow(minute, 1)

-- 2️⃣ Revenue per 5-minute window
SELECT
    store_id,
    SUM(order_amount) AS total_revenue,
    System.Timestamp AS window_end_time
INTO SqlRevenueOutput
FROM EventHubInput
WHERE event_type = 'PaymentCompleted'
GROUP BY
    store_id,
    TumblingWindow(minute, 5)

-- 3️⃣ Store raw stream to ADLS
SELECT *
INTO AdlsRawOutput
FROM EventHubInput
