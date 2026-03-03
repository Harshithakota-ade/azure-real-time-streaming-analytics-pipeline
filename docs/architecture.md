# Real-Time Streaming Architecture

## Overview

This project demonstrates a real-time streaming pipeline using Azure-native services.

Flow:

Event Producer
→ Azure Event Hub
→ Azure Stream Analytics
→ ADLS Gen2 (raw storage)
→ Azure SQL (aggregated metrics)

---

## Components

### 1. Event Hub
- Ingests streaming order events
- Partitioned for scalability
- Retention configurable

### 2. Azure Stream Analytics
- Consumes Event Hub data
- Applies window-based aggregations
- Handles late arrival tolerance
- Outputs to multiple sinks

### 3. ADLS Gen2
- Stores raw event data
- Enables reprocessing if needed

### 4. Azure SQL
- Stores aggregated metrics
- Supports reporting and Power BI dashboards

---

## Streaming Concepts Demonstrated

- Tumbling Windows
- Window Aggregation
- Late Arrival Handling
- Event Time vs Processing Time
- Partitioning Strategy
- Exactly-once processing guarantee
