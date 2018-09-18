FROM alpine:3.8

ADD kube-validate /kube-validate
ADD templates /templates
ADD static /static
ADD scripts /scripts
RUN mkdir -p /internal/kubernetes/data
ADD internal/kubernetes/data/ /internal/kubernetes/data/
CMD [ "/kube-validate" ]