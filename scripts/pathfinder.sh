#!/bin/bash

relation=concept_athletehomestadium
python sl_policy.py $relation
python policy_agent.py $relation retrain
python policy_agent.py $relation test


