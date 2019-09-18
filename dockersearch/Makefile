VSERSION=1.0.0

SCRIPT=install.sh
EXPORT_DIR=release
PACKAGE_NAME=dockersearchinstall
RUN=dockersearch_${VSERSION}.install
all:
	mkdir -p ${EXPORT_DIR}
	tar zcvf ${PACKAGE_NAME}.tar.gz  etc/bash_completion.d/dockersearch.bash /usr/local/bin/dockersearch
	cat ${SCRIPT} ${PACKAGE_NAME}.tar.gz > ${EXPORT_DIR}/${RUN}
	rm -f ${PACKAGE_NAME}.tar.gz
	chmod +x ${EXPORT_DIR}/${RUN}
clean:
	rm ${EXPORT_DIR}/${RUN} ${PACKAGE_NAME}.tar.gz
