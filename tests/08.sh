#! /bin/sh

. ./setup

NAME="dos2unix"

begin

nkey=${TDIR}/k
ssh-keygen -f ${nkey} -P '' -t rsa >/dev/null 2>>${STDERR}

OUT=$(echo "${MSG}" | ${JASS} -k ${nkey}.pub | sed -e 's/$/

if [ x"${OUT}" != x"${MSG}" ]; then
	fail
fi

end

exit 0