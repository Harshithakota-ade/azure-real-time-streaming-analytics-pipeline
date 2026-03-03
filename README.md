Azure Real-Time Streaming Analytics Pipeline

This project demonstrates a real-time data streaming architecture using Azure-native services. The pipeline processes streaming order events from Event Hub, performs real-time aggregations using Azure Stream Analytics, and stores results in ADLS and Azure SQL for analytics.

Architecture Overview

Event Producer → Azure Event Hub → Azure Stream Analytics →
ADLS Gen2 (Raw Storage)
Azure SQL (Aggregated Metrics)

Tech Stack

Azure Event Hub

Azure Stream Analytics

ADLS Gen2

Azure SQL Database

Streaming window functions

Late event handling

Real-time aggregation

Use Case

Simulated real-time e-commerce order events:

OrderCreated

PaymentCompleted

OrderCancelled

ShipmentDispatched

The system computes:

Orders per minute

Revenue per 5-minute window

Failed payments per minute

Store-level revenue

Streaming Concepts Demonstrated

Tumbling Windows

Sliding Windows

Late Arrival Tolerance

Watermark Handling

Checkpointing

Exactly-once semantics (Event Hub + ASA)

Partitioning strategy

Project Structure
event_producer/        → Sample event generator (JSON)
stream_analytics/      → ASA query definitions
sql/                   → SQL tables for storing aggregates
docs/                  → Architecture & streaming concepts
architecture/          → Diagram placeholder
