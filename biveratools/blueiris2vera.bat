@echo off
wget -q "http://%1:3480/data_request?id=lr_blueiris_tripped&test=A&sensor_id=%2" -O NUL