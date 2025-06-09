# Enable CLI flexibility inside the container
Allow users to pass flags like --vault or --add to main.py at runtime using docker run.

Add non-root user to Dockerfile
Follow least privilege by running the container with a dedicated non-root user instead of root.

Set up GitHub Actions CI workflow
Add automated CI to:

Lint Python code
Run bandit and pip-audit
Build and optionally scan the Docker image
