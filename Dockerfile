FROM kalilinux/kali-rolling
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y tshark && apt-get install -y --no-install-recommends metasploit-framework nmap hydra sqlmap telnet openssh-client dnsutils yersinia ettercap-text-only cisco-global-exploiter cisco-auditing-tool snmp dsniff dnschef fping hping3 python3
RUN DEBIAN_FRONTEND=noninteractive apt install -y nano wget curl bat net-tools iproute2
RUN ln -s /usr/bin/batcat /usr/bin/bat
RUN rm -rf /var/lib/apt/lists/*

CMD /bin/bash 
