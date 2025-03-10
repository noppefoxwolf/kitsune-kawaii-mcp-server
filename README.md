# Kitsune-Kawaii MCP Server

# Usage

After install, Your AI always returns `きつねかわいい！！！` when you ask about foxes.



# Installation

```bash
swift package experimental-install
```

Add SwiftPM PATH your zshrc.

```
export PATH="$HOME/.swiftpm/bin:$PATH"
```

Add command to your MCP Client.

```json
{
  "mcpServers" : {
    "kitsune-kawaii-mcp-server" : {
      "command" : "/Users/USERNAME/.swiftpm/bin/kitsune-kawaii-mcp-server"
    }
  }
}
```

## Uninstall

```bash
swift package experimental-uninstall kitsune-kawaii-mcp-server
```
