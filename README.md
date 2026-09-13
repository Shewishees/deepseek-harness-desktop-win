# DeepSeek Harness Desktop for macOS

This repository is the lightweight release home for the customised macOS Desktop application. It deliberately contains no user workspace, conversation, photo library, cache, credentials, build cache, or full Harness monorepo history.

## Install

1. Open the latest **Release** and download `DeepSeek-Harness-mac-arm64.zip`.
2. Unzip it, then move `DeepSeek Harness.app` to `/Applications` or your Desktop.
3. Open the app normally. On a different Mac, macOS may require **Open Anyway** because the current build is locally ad-hoc signed and not notarized.

The app persists its own data under `~/.dsh`; replacing the application does not remove workspaces, conversations, or the album.

## What is in this release

- Native macOS Electron application, Apple silicon (`arm64`)
- Work and Code views, native workspace file operations, editor save and right-click actions
- System copy/paste and Markdown editing shortcuts
- Conversation, project, album and puppy-theme features backed by the Desktop services

## Verification

After download, run:

```bash
sh scripts/verify-macos-app.sh "DeepSeek Harness.app"
```

Compare the SHA-256 output with the checksum published in the release notes.

## Build provenance

Release `0.1.3-alpha.2` was built from the DeepSeek Harness alpha.2 line plus the Desktop customisation commit `1d9329435982b2acceac878a2b8b4cc8aec0f58b`.

The upstream project is licensed under MIT. This release repository contains distribution metadata only; source changes remain in the corresponding development history to preserve a clean, auditable upstream boundary.
