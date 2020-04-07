FROM ljfranklin/terraform-resource:0.12.24

RUN apk -Uuv add groff less python py-pip jq
RUN pip install awscli
RUN apk --purge -v del py-pip
RUN rm /var/cache/apk/*
