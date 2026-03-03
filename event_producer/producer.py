import json
import time
from random import randint

def generate_event():
    return {
        "product_id": randint(1, 10),
        "amount": randint(100, 500),
        "event_time": time.time()
    }

while True:
    print(json.dumps(generate_event()))
    time.sleep(1)
