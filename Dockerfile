FROM golang:bookworm
RUN go install tailscale.com/cmd/derper@main
CMD /go/bin/derper --hostname $DERP_DOMAIN --certmode $DERP_CERT_MODE --certdir $DERP_CERT_DIR --a $DERP_ADDR --stun $DERP_STUN