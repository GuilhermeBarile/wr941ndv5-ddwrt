
default: build

build: firmware-tools/mktplinkfw
	@python make.py
	@firmware-tools/mktplinkfw -i factory-to-ddwrt.bin

factory-to-ddwrt.bin:
	wget https://download1.dd-wrt.com/dd-wrtv2/downloads/betas/2019/08-06-2019-r40559/tplink_tl-wr841ndv8/factory-to-ddwrt.bin

firmware-tools/mktplinkfw:
	@cd firmware-tools && make
