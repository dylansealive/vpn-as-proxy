FROM ubuntu/squid:latest

# config squid
RUN sed -i '1i dns_v4_first on' /etc/squid/squid.conf && \
    sed -i 's/# forwarded_for on/forwarded_for off/' /etc/squid/squid.conf && \
    sed -i 's/# via on/via off/' /etc/squid/squid.conf

# Update the sources and install necessary packages
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y openvpn curl


# Copy entry.sh
COPY entry.sh /entry.sh

RUN chmod +x /entry.sh

ENTRYPOINT [ "/entry.sh" ]