# whisperX

[whisperX](https://github.com/m-bain/whisperX) is a project that provides automatic speech recognition.

## Build

Build from project root directory.

```
podman build -t whisperx:latest -f whisperX/Dockerfile .
```

## Usage

Run container in background with current working directory mapped to `/workdir` directory in the container.

```
# Start comtainer in background.
podman run -d --security-opt label=disable --name=whiperx-container --rm -it -v $(pwd):/workdir \
   --workdir=/workdir localhost/whisperx
 
# Generate transcript.
podman exec -it whiperx-container /opt/.venv/bin/whisperx --compute_type int8 <audio file>
```

OR

```
# Run the process in the container and remove container.
podman run -d --security-opt label=disable --name=whiperx-container --rm -it -v $(pwd):/workdir \
   --workdir=/workdir localhost/whisperx /opt/.venv/bin/whisperx --compute_type int8 <audio file>
```
