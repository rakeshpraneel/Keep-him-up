# Keep Him Up

The job is intended to periodically "start" or wake an external service by hitting its URL.

## Features

- Loads configuration with `pydantic-settings` from a `.env` file
- Uses `requests` to make a GET call to the API URL
- Prints success or failure messages

## Getting Started

### Prerequisites

- Python 3.10+ installed
- Virtual environment (recommended)

### Installation

1. Clone the repository:
   ```bash
   git clone <repo-url> keep-him-up
   cd keep-him-up
   ```
2. Create and activate a virtual environment:
   ```bash
   python -m venv .venv
   # Windows
   .\.venv\Scripts\activate
   # macOS/Linux
   source .venv/bin/activate
   ```
3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

### Configuration

Create a `.env` file in the project root with the following content:
```
API_URL=https://example.com/your-api
```

You can also set `API_URL` directly in your environment or override it when running.

### Usage

To manually invoke the cron job, simply run:

```bash
python cron_job.py
```

When executed, the script will attempt to GET the `API_URL` and print a message indicating whether the call succeeded or failed.

### Scheduling

For periodic execution, add a cron entry (on Unix-like systems) or use Task Scheduler on Windows:

```cron
# every hour
0 * * * * /path/to/venv/bin/python /path/to/keep-him-up/cron_job.py
```

### Contributing

Contributions are welcome! Please open issues or pull requests.

### License
Project has MIT license

