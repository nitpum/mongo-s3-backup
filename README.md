# mongo-s3-backup

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/F1F21LCOB)

Docker image for backup mongodb with s3cmd

## Usage

```bash
docker run \
	-e MONGO_URI="mongodb://root:root@localhost:27017/db" \
	-e S3_ACCESS_KEY="ACCESS_KEY" \
	-e S3_SECRET_KEY="SECRET_KEY" \
	-e S3_PATH="s3://bucket/backup/" \
	-e S3_HOST_BASE="" \
	-e S3_HOST_BUCKET="" \
	-e S3_WEBSITE_ENDPOINT="" \
	ghcr.io/nitpum/mongo-s3-backup:main
```

### Environment variables

- `MONGO_URI` Mongo uri example: `mongodb://root:root@localhost:27017/db`
- `S3_ACCESS_KEY` S3 access key
- `S3_SECRET_KEY` S3 secret key
- `S3_PATH` S3 path example: `s3://bucket/backup/` (with trailing slash)
- `S3_HOST_BASE` S3 host base example: `s3.amazonaws.com` or `nyc1.digitaloceanspaces.com`
- `S3_HOST_BUCKET` S3 host bucket example: `%(bucket)s.s3.amazonaws.com` or `%(bucket)s.fra1.digitaloceanspaces.com`
- `S3_WEBSITE_ENDPOINT` S3 website endpoint example: `http://%(bucket)s.s3-website-% (location)s.amazonaws.com/` or`http://%(bucket)s.s3-website-%(location)s.digitaloceanspaces.com/`

## Support

If you think this is useful, please consider support me ;)

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/F1F21LCOB)

## License

[MIT License](LICENSE)
