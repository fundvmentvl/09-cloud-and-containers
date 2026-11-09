# CEN4025 Assignment 9 Cloud and Containers

Java 21 reservation API reused from Assignment 8. This project demonstrates a local container, two container configuration investigations and a free cloud deployment. The local image build passed all 13 tests. Host HTTP checks passed listing, creation, retrieval and cancellation. Both port-publication and storage-persistence investigations are complete. Cloud deployment is the remaining verification step.

## Prerequisites

Apple Silicon Docker Desktop, curl and jq for Mac verification. Stop UTM guests to free memory before running Docker Desktop on the 8 GB host. Maven and the JDK are supplied by the image build stages.

## Local execution after Docker is running

```bash
docker build --progress=plain -t cen4025-reservation:a9 .
docker run -d --name cen4025-a9 -p 127.0.0.1:8080:8080 cen4025-reservation:a9
docker logs cen4025-a9
bash scripts/verify-http.sh http://localhost:8080
```

The verifier lists slots, creates a test booking, retrieves and cancels it, then confirms the slot returns. It requires jq and removes only its own test booking. Capture build output, running-container details and actual HTTP responses.

## Configuration

The multi-stage Dockerfile builds and runs tests with Maven and Java 21, then copies the application JAR into a Java 21 runtime image. It runs as the unprivileged app user. `/app` is the working directory; CSV data is stored at `/app/data/reservations.csv`. PORT defaults to 8080 and can be overridden by the cloud platform. HTTP binds to 0.0.0.0. The existing TCP listener on 9090 is outside this assignment's HTTP verification and is not published.

## Configuration investigations

1. Port publishing: compare host access to a container started without a published port with access after publishing host 8080 to container 8080. Keep the application binding unchanged. Explain why EXPOSE alone does not publish a port.
2. Storage and replacement: create and retrieve a booking, replace the container without a volume and test whether the booking remains; repeat with a named volume mounted at /app/data. Compare removal and recreation, not only restarting the same container. Record IDs, HTTP status/body and actual data observations. Preserve original test results and explicitly label intentional failures.

## Cloud plan to verify before deployment

Render Free Docker web service, building from this repository's Dockerfile. Proposed service model: PaaS. Provider manages hosts, container infrastructure and public HTTPS; student manages image, source, configuration and application data behavior. Set health check path /api/appointments. Use the provider PORT value. Do not add a paid disk or payment method. Free local filesystem data is ephemeral; bookings are demonstration data and may be lost on spin-down, restart or redeploy. Use the HTTP API for cloud tests. Test at least slot listing plus reservation creation and retrieval/cancellation at the actual cloud URL.

Official references checked November 8 2026:
- https://docs.docker.com/desktop/setup/install/mac-install/
- https://render.com/docs/docker
- https://render.com/docs/web-services
- https://render.com/docs/free

## Evidence and submission

Keep original screenshots under evidence/screenshots and real command output under evidence/logs. Consolidate deliverables 2–5 in a Word report with numbered captions and results; do not mark unexecuted steps as successful. Exclude build output, images, caches and credentials. Cloud signup and service availability still require account-level confirmation.

## Run with persistent local data

```bash
docker volume create cen4025-a9-data
docker run -d --name cen4025-a9 -p 127.0.0.1:8080:8080 --mount type=volume,source=cen4025-a9-data,target=/app/data cen4025-reservation:a9
```

Use a free container name or stop and remove the existing test container first. Keep the named volume when replacing the container. Local evidence demonstrates that the booking disappears after replacement without a volume and survives replacement using the same volume.
