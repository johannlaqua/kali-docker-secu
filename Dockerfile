FROM kalilinux/kali-rolling
LABEL maintainer="Johann LAQUA"

RUN apt-get update && apt-get install -y \
    git \
    curl \
    kali-tools-top10 \
    kali-tools-web \
    kali-tools-passwords \
    kali-tools-database \
&& apt-get clean all

CMD ["/bin/bash"]