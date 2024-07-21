FROM ubuntu:20.04

# Update the sources and install necessary packages
RUN apt-get update && \
    apt-get install -y openvpn tinyproxy iptables

# Make tinyproxy accept requests from all hosts
RUN sed -i "s/^Allow/#Allow/g" /etc/tinyproxy/tinyproxy.conf

# Make tinyproxy accept CONNECT from all ports
RUN sed -i "s/^ConnectPort/#ConnectPort/g" /etc/tinyproxy/tinyproxy.conf

RUN sed -i "s/#DisableViaHeader Yes/DisableViaHeader Yes/g" /etc/tinyproxy/tinyproxy.conf

# Copy entry.sh
COPY entry.sh /entry.sh

RUN chmod +x /entry.sh

ENTRYPOINT [ "/entry.sh" ]