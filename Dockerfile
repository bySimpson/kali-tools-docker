FROM kalilinux/kali-rolling
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends tshark metasploit-framework nmap hydra sqlmap telnet openssh-client dnsutils yersinia ettercap-text-only cisco-global-exploiter cisco-auditing-tool snmp dsniff dnschef fping hping3 python3 iputils-ping
RUN apt install -y nano wget curl bat net-tools iproute2
RUN ln -s /usr/bin/batcat /usr/bin/bat
RUN apt-get clean autoclean && \
    apt-get autoremove --yes
RUN rm -rf /var/lib/apt/lists/*

CMD /bin/bash 
