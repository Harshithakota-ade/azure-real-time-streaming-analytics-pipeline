# Streaming Concepts Explained

## Tumbling Window
A fixed-size, non-overlapping time window.
Example: 1-minute order count.

## Late Arrival Tolerance
Handles delayed events by allowing configurable delay.
Example: 2 minutes tolerance.

## Event Time vs Processing Time
Event Time = When event actually happened.
Processing Time = When system processes it.

This project uses Event Time to ensure accurate aggregation.

## Checkpointing
Stream Analytics maintains checkpoints to resume from failure point.

## Partitioning
Event Hub partitions allow parallel processing.
Proper partition key (store_id or order_id) ensures scalability.
