# MinIO GitHub Actions Service

A MinIO Docker container that works as a GitHub Actions service.

## Usage

```yaml
services:
  minio:
    image: ghcr.io/strahe/minio-github-actions-service
    ports:
      - 9000:9000
    env:
      MINIO_ROOT_USER: testuser
      MINIO_ROOT_PASSWORD: testpass123
```

## Build

```bash
docker build -t minio-github-actions-service .
```

## Environment Variables

- `MINIO_ROOT_USER` (default: minioadmin)
- `MINIO_ROOT_PASSWORD` (default: minioadmin)
- `MINIO_BROWSER` (default: off)
