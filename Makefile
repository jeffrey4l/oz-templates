OPTS=-d 3 -u -p
OZ_INSTALL=../oz-install
LOG=log

.PHONY: all multi


all: centos63 rhel63 ubuntu14.04
	@echo "All Images are built successfully."

pre:
	@mkdir -p log

multi:
	$(MAKE) -j4 all

centos63: pre
	@echo "Making CentOS63 Images" | tee -a ${LOG}/$@.log
	${OZ_INSTALL} -a centos63.ks centos63_x86-64.tdl -x centos63.xml ${OPTS} >> ${LOG}/$@.log 2>&1
	@echo "Create CentOS63 Image successfully" | tee -a ${LOG}/$@.log

rhel63: pre
	@echo "Making RHEL63 Images" | tee -a ${LOG}/$@.log
	${OZ_INSTALL} -a rhel63.ks rhel63_x86-64.tdl -x rhel63.xml ${OPTS} >> ${LOG}/$@.log 2>&1
	@echo "Create RHEL63 Image successfully" | tee -a ${LOG}/$@.log

ubuntu14.04: pre
	@echo "Start Make Ubuntu 14.04 Image" | tee -a ${LOG}/$@.log
	${OZ_INSTALL} -a ubuntu14.04.preseed ubuntu14.04_x86-64.tdl -x ubuntu1404.xml ${OPTS} >> ${LOG}/$@.log 2>&1
	@echo "Create Ubuntu 14.04 Image Successfully." | tee a ${LOG}/$@.log


