#!/bin/bash

curl -X POST -H "Content-Type: application/json" \
    -d '{"OutsideHost":"bar.localhost:2002", "InsideHost":"google.com"}' \
    localhost:2002/register