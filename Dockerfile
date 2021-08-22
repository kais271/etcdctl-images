FROM k8s.gcr.io/etcd:3.4.13-0 AS builder

FROM alpine:3.14.1
COPY --from=builder /usr/local/bin/etcdctl /usr/local/bin/etcdctl
CMD ["etcdctl"]
