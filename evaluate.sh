#!/usr/bin/env bash

BASE=/mnt/bhd/hongmin/tfv_bert_output_table2sents
FACT=$1
SCAN=$2

#for i in `seq 15000 500 15000`
for TEST in test simple_test complex_test small_test
do
    echo "Running python examples/run_classifier.py --do_eval --eval_batch_size 64 --scan $SCAN --fact $FACT --test_set $TEST"
    python examples/run_classifier.py --do_eval --eval_batch_size 64 --scan $SCAN --fact $FACT --test_set $TEST 2>&1 | tee -a $SCAN-$FACT.log;
done