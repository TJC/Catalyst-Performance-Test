#!/bin/bash
# --time=60S
# -r100

# Run a 10 second warmup..
echo "Running 10 second warmup on 5.7.."
siege --concurrent=10 --benchmark \
      --file=urls_57.txt --time=10S > /dev/null 2>&1

      
# Run the real 5.7 test:
echo "Running main test on 5.7.."
siege --concurrent=10 --benchmark \
      --file=urls_57.txt --time=300S


# Run a 10 second warmup..
echo "Running 10 second warmup on 5.8.."
siege --concurrent=10 --benchmark \
      --file=urls_58.txt --time=10S > /dev/null 2>&1

      
# Run the real 5.8 test:
echo "Running main test on 5.8.."
siege --concurrent=10 --benchmark \
      --file=urls_58.txt --time=300S


