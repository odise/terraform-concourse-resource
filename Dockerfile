# Terraform 0.12.22
FROM ljfranklin/terraform-resource:0.12.23

RUN apk -Uuv add groff less python py-pip jq
RUN pip install awscli
RUN apk --purge -v del py-pip
RUN rm /var/cache/apk/*