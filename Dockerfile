FROM ljfranklin/terraform-resource:0.12.24

ENV CONFTEST_VERSION=0.18.2
ENV OPA_VERSION=0.19.2

RUN apk -Uuv add groff less python py-pip jq
RUN pip install awscli
RUN wget -O /usr/local/bin/opa https://github.com/open-policy-agent/opa/releases/download/v${OPA_VERSION}/opa_linux_amd64 && chmod a+x /usr/local/bin/opa
RUN wget https://github.com/instrumenta/conftest/releases/download/v${CONFTEST_VERSION}/conftest_${CONFTEST_VERSION}_Linux_x86_64.tar.gz \
    && tar xzf conftest_${CONFTEST_VERSION}_Linux_x86_64.tar.gz \
    && mv conftest /usr/local/bin
RUN apk --purge -v del py-pip
RUN rm /var/cache/apk/*
