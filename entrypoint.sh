#!/bin/bash
set -eux

cd img && echo *.img | xargs -n1 ../OpenixCard -d

