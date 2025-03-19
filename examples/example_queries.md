# Example Queries for Substack MCP

This document provides example queries you can ask Claude after setting up the Substack MCP server, along with expected responses.

## Getting Newsletter Posts

### Query
```
Show me recent posts from https://stratechery.com/
```

### Expected Response
Claude will use the `get_newsletter_posts` tool and show you recent posts from the Stratechery newsletter, including titles, publication dates, and URLs.

## Getting Post Content

### Query
```
What's the content of this post: https://stratechery.com/2023/the-ai-unbundling/
```

### Expected Response
Claude will use the `get_post_content` tool to retrieve and display the full content of the specified post, including its title, author, and publication date.

## Searching a Newsletter

### Query
```
Search for 'AI' on https://stratechery.com/
```

### Expected Response
Claude will use the `search_newsletter` tool to find posts related to 'AI' on the Stratechery newsletter and display the results.

## Getting Author Information

### Query
```
Tell me about the author with the username 'benthompson'
```

### Expected Response
Claude will use the `get_author_info` tool to retrieve and display information about the specified author, including their name, bio, and subscriptions.

## Getting Newsletter Recommendations

### Query
```
What are some newsletters similar to https://stratechery.com/?
```

### Expected Response
Claude will use the `get_newsletter_recommendations` tool to find and list newsletters that are recommended for readers of Stratechery.

## Getting Newsletter Authors

### Query
```
Who are the authors of https://stratechery.com/?
```

### Expected Response
Claude will use the `get_newsletter_authors` tool to list all the authors who contribute to the Stratechery newsletter.

## Combined Queries

### Query
```
Find posts about technology on https://stratechery.com/ and summarize the main themes
```

### Expected Response
Claude will use the `search_newsletter` tool to find posts related to technology, then analyze the results to identify and summarize the main themes discussed across these posts.
