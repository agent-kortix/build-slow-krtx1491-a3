# syntax=docker/dockerfile:1.7
FROM ubuntu:24.04

WORKDIR /workspace

# The build's 'pending' phase (no provider create attempted yet) must outlast
# the stale-provisioning clock (10 min) while staying under the session's
# 12-min peer-build wait. KRTX-1491 verification build.
RUN sleep 340 && echo "slow build leg A3 finished"
