FROM    centos:7

LABEL   author="ximenpo <ximenpo@jiandan.ren>"

RUN     yum -y install https://osquery-packages.s3.amazonaws.com/centos7/noarch/osquery-s3-centos7-repo-1-0.0.noarch.rpm    \
        &&  yum install -y osquery      \
        &&  yum install -y epel-release \
        &&  yum install -y python-pip   \
        &&  yum clean all               \
        &&  rm -rf  /var/cache/yum

CMD     ["osqueryi"]
