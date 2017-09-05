#!/bin/bash
ps | grep 'monkey' | awk '{print $2}' | xargs kill