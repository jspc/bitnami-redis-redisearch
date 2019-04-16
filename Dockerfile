FROM redislabs/redisearch:latest as builder

FROM bitnami/redis:5.0.4-r28
COPY --from=builder /usr/lib/redis/modules/redisearch.so /usr/lib/redis/modules/redisearch.so

CMD ["/run.sh", "--loadmodule", "/usr/lib/redis/modules/redisearch.so"]
