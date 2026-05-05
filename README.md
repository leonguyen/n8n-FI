# n8n on Fly.io

## Setup

1. Install Fly CLI
curl -L https://fly.io/install.sh | sh

2. Login
fly auth login

3. Create app
fly launch --no-deploy

4. Create volume
fly volumes create n8n_data --size 1

5. Set secrets
fly secrets set \
  N8N_BASIC_AUTH_ACTIVE=true \
  N8N_BASIC_AUTH_USER=admin \
  N8N_BASIC_AUTH_PASSWORD=strongpassword \
  N8N_ENCRYPTION_KEY=supersecretkey

6. Deploy
fly deploy

7. Open
fly open
