## Running JAX app inside container with GPU access

## Instruction

1. Setup [NVIDIA-container-toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html) in the system

2. Choose num of GPU's in `count` section of `docker-compose.yaml` file.

3. Run command in bash:

```bash
docker compose up --build
```