ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
  
RUN apk add --no-cache python3 py3-pip
RUN pip install --break-system-packages paho-mqtt
RUN pip install --break-system-packages pyserial

# WORKDIR /data

# Copy data for add-on
COPY run.sh crc.py inverterParam.py param.py inv2mqtt.py /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
