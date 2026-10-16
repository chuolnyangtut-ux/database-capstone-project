# Step 5: Backup, Security & Presentation

## 1. Backup Script
To ensure disaster recovery requirements are met (RPO/RTO), we use PostgreSQL's custom-format compressed backup utility[span_5](start_span)[span_5](end_span)[span_6](start_span)[span_6](end_span)[span_7](start_span)[span_7](end_span):
```bash
pg_dump -Fc -f backups/capstone_$(date +%F).dump capstone
