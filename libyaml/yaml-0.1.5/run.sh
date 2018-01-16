#!/bin/bash

time klee \
    -max-time=3600 \
    -max-memory=4096 \
    -exit-on-error-type=Assert \
    -libc=uclibc \
    -simplify-sym-indices \
    -search=nurs:covnew \
    -recovery-search=dfs \
    -skip-functions=yaml_parser_update_buffer:864,yaml_parser_fetch_stream_start:870 \
    final.bc 40

time klee \
    -max-time=3600 \
    -libc=uclibc \
    -simplify-sym-indices \
    -search=nurs:covnew \
    final.bc 40