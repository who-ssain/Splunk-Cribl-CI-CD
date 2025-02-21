#!/bin/bash

CRIBL_URL="https://cribl.example.com/input"
TEST_LOG='{"message": "Test log message", "source": "test-script"}'

curl -X POST "$CRIBL_URL" -H "Content-Type: application/json" -d "$TEST_LOG"