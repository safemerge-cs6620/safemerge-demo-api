# safemerge-demo-api

The demo "customer" app that SafeMerge scans. It contains the course-provided, deliberately vulnerable test API (`test-target.js`, port 4000).

- Pull requests here are scanned by SafeMerge, which posts the `safemerge/sast` status.
- Merges to `main` trigger the SafeMerge deploy gate, which posts the `safemerge/deploy-gate` status.
- Only obviously fake secrets may ever be committed here, since this repo is public.

