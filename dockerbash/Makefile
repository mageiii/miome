VSERSION=1.0.0

SCRIPT=install.sh
EXPORT_DIR=release
PACKAGE_NAME=dockerbashinstall
RUN=dockerbash_${VSERSION}.install
all:
	mkdir -p ${EXPORT_DIR}
	tar zcvf ${PACKAGE_NAME}.tar.gz  etc/bash_completion.d/dockerbash.bash /usr/local/bin/dockerbash
	cat ${SCRIPT} ${PACKAGE_NAME}.tar.gz > ${EXPORT_DIR}/${RUN}
	rm -f ${PACKAGE_NAME}.tar.gz
	chmod +x ${EXPORT_DIR}/${RUN}
clean:
	rm ${EXPORT_DIR}/${RUN} ${PACKAGE_NAME}.tar.gz
