# gpu.nz Homebrew tap

Homebrew formula for [gpunz](https://github.com/gpunz/gpunz-cli), the command-line client of the [gpu.nz](https://gpu.nz) GPU cloud: search GPU servers, launch ComfyUI, Ollama, vLLM or Jupyter, SSH in and stop them, billed by the minute.

```bash
brew install gpunz/tap/gpunz
gpunz login
gpunz search --gpu rtx-4090-24gb --limit 3
```

macOS (Apple Silicon and Intel) and Linux (x86_64, arm64). Other ways to install: [gpu.nz/docs/cli](https://gpu.nz/en/docs/cli).
