#!/bin/sh

sleep 30

if [ "$TRADING_MODE" = "paper" ]; then
  printf "Forking :::4002 onto 0.0.0.0:4000\n"
  socat TCP-LISTEN:4000,fork TCP:127.0.0.1:4002
else
  printf "Forking :::4001 onto 0.0.0.0:4000\n"
  socat TCP-LISTEN:4000,fork TCP:127.0.0.1:4001
fi
