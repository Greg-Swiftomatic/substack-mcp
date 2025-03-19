# Substack MCP

An MCP (Model Context Protocol) server for Substack API integration with Claude and other AI assistants.

## Overview

This project implements a Model Context Protocol (MCP) server that enables AI assistants like Claude to interact with Substack newsletters, posts, and authors through a standardized interface. It leverages the [Substack API library](https://github.com/NHagar/substack_api) and makes its functionality available through MCP.

With this MCP server, Claude can:
- Retrieve newsletter posts, podcasts, and recommendations
- Get post content and metadata
- Search for posts within newsletters
- Get user profile information and subscriptions

## Installation

### Prerequisites

- Python 3.10 or higher
- [Claude for Desktop](https://claude.ai/download) (for testing)

### Setup

1. Clone this repository:
   ```bash
   git clone https://github.com/Greg-Swiftomatic/substack-mcp.git
   cd substack-mcp
   ```

2. Set up a virtual environment using `uv`:
   ```bash
   curl -LsSf https://astral.sh/uv/install.sh | sh  # Install uv if not already installed
   uv init .
   uv venv
   source .venv/bin/activate  # On Windows: .venv\Scripts\activate
   ```

3. Install dependencies:
   ```bash
   uv add "mcp[cli]" substack-api
   ```

## Usage

### Running the Server

Run the MCP server:

```bash
python substack_mcp.py
```

### Configuring Claude for Desktop

1. Open Claude for Desktop's configuration file:
   - **macOS/Linux**: `~/Library/Application Support/Claude/claude_desktop_config.json`
   - **Windows**: `%APPDATA%\Claude\claude_desktop_config.json`

2. Add your server configuration:
   ```json
   {
       "mcpServers": {
           "substack": {
               "command": "uv",
               "args": [
                   "--directory",
                   "/ABSOLUTE/PATH/TO/substack-mcp",
                   "run",
                   "substack_mcp.py"
               ]
           }
       }
   }
   ```

3. Restart Claude for Desktop.

### Example Queries

Once configured, you can ask Claude questions like:
- "Show me recent posts from https://stratechery.com/"
- "What's the content of this post: https://stratechery.com/2023/the-ai-unbundling/"
- "Search for 'AI' on https://stratechery.com/"
- "Who are the authors of https://stratechery.com/?"

## Available Tools

The server provides the following MCP tools:

| Tool | Description |
|------|-------------|
| `get_newsletter_posts` | Retrieves recent posts from a Substack newsletter |
| `get_post_content` | Gets the full content of a specific Substack post |
| `search_newsletter` | Searches for posts within a newsletter |
| `get_author_info` | Gets information about a Substack author |
| `get_newsletter_recommendations` | Gets recommended newsletters for a Substack publication |
| `get_newsletter_authors` | Gets authors of a Substack newsletter |

## Project Structure

- `substack_mcp.py` - The main MCP server implementation
- `examples/` - Example queries and responses
- `docker/` - Docker configuration for containerized deployment

## Development

To contribute to this project:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Troubleshooting

If you encounter issues:

1. Check Claude's logs for errors:
   ```bash
   # macOS/Linux
   tail -n 20 -f ~/Library/Logs/Claude/mcp*.log
   
   # Windows
   type %APPDATA%\Claude\Logs\mcp*.log
   ```

2. Verify your server builds and runs without errors:
   ```bash
   python substack_mcp.py
   ```

3. Make sure your `claude_desktop_config.json` file has the correct paths and syntax.

4. Try restarting Claude for Desktop completely.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Substack API](https://github.com/NHagar/substack_api) - The underlying library for Substack interactions
- [Model Context Protocol](https://modelcontextprotocol.io/) - Anthropic's protocol for standardized LLM integrations
