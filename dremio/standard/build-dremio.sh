#!/bin/bash
chmod -R a+rwx ./backup/*
docker build --tag dremio_ontop .
