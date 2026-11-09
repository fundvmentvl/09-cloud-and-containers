# Assignment 9 evidence checklist

Status: local build and verification, both configuration investigations, cloud deployment and verification, and the final report comparison are complete. See screenshot-inventory.md for all 17 captured screenshots. Cloud architecture and restart persistence were not measured and are identified as limits in the report.

## 2 Application and Containerization Evidence
- [x] Application requirements and Dockerfile explanation
- [x] Successful image build including Maven tests
- [x] Container startup and host HTTP access
- [x] At least two distinct application operations with actual responses

## 3 Container Configuration Investigation Evidence
- [x] Port publication baseline modification observation and explanation
- [x] Container replacement without storage volume baseline and results
- [x] Container replacement with named volume and retrieval of same booking
- [x] Explain how container isolation differs from direct host execution

## 4 Cloud Deployment Evidence
- [x] Free plan account requirements and runtime support verified
- [x] Provider deployment settings and service model
- [x] Build startup and public HTTPS URL
- [x] Actual cloud requests and responses for at least two operations
- [x] Problems encountered and resolutions

## 5 Local and Cloud Comparison
- [x] Specific host port mapping versus cloud PORT and HTTPS exposure
- [x] Local volume versus cloud ephemeral storage
- [x] ARM64 local build; provider architecture not captured and explicitly identified
- [x] Runtime resource settings and observed functionality
- [x] Provider and student responsibilities and remaining limitations

Each figure needs a sequential number, descriptive caption and explanation of its observed result. The report distinguishes actual test results from documented platform limits.
