FROM thesabbir/openwrt-x86:chaos_calmer

RUN mkdir /var/lock \
	&& mkdir /var/run \
	&& opkg update \
	&& opkg install nano freecwmp

COPY freecwmp /etc/config/freecwmp
COPY run.sh /run.sh

CMD /run.sh