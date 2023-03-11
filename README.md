# README

## Services

| Service | Provider       |
| ------- | -------------- |
| Hosting | Fly.io         |
| DB      | Fly.io         |
| Domain  | Google Domains |
| Email   | Mailgun        |

## Environmnet

| Name             | Purpose                                       | Secret? |
| ---------------- | --------------------------------------------- | ------- |
| DATABASE_URL     | Full connection string to the Fly.io database | true    |
| RAILS_MASTER_KEY | The master key used                           | true    |
| MAILGUN_PASSWORD | The password for sending emails via Mailgun   |

### Need to add a new secret?

```
flyctl secrets set DATABASE_URL=postgres://example.com/mydb
```

https://fly.io/docs/reference/secrets/#setting-secrets
