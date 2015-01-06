#!/bin/bash

output=$(git rev-list HEAD --count)
echo $output