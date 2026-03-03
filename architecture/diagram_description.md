# Architecture Diagram Description

Draw this in draw.io:

[Event Producer]
        ↓
[Azure Event Hub]
        ↓
[Azure Stream Analytics Job]
        ↓             ↓
[ADLS Gen2 Raw]    [Azure SQL Aggregates]
