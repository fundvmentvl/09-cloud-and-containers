# Assignment 9 screenshot inventory

All 17 execution and configuration screenshots supplied through November 8, 2026 at 10:20:34 PM Eastern are retained. Twelve primary screenshots are embedded in the local Word report as Figures 1–11 and 13. Figure 12 presents an actual HTTP log excerpt. Five additional screenshots are retained as supporting evidence. Assignment instruction screenshots are references, not execution evidence.

| Capture time Eastern | Screenshot | Report mapping | Demonstrates |
|---|---|---|---|
| 8:48:16 PM | [01-local-image-build.png](screenshots/01-local-image-build.png) | Figure 1 | Successful image build |
| 8:52:00 PM | [02-local-container-startup.png](screenshots/02-local-container-startup.png) | Figure 2 | Container startup and published port |
| 8:54:50 PM | [03-local-http-verification.png](screenshots/03-local-http-verification.png) | Figure 3 | Local HTTP operations |
| 8:59:16 PM | [04-unpublished-port-host-failure.png](screenshots/04-unpublished-port-host-failure.png) | Figure 4 | Missing port publication |
| 8:59:37 PM | [04-support-docker-desktop-container-state.png](screenshots/04-support-docker-desktop-container-state.png) | Supporting screenshot for Figure 4 | Docker Desktop container state |
| 9:05:17 PM | [05-support-docker-desktop-restoration.png](screenshots/05-support-docker-desktop-restoration.png) | Supporting screenshot for Figure 5 | Docker Desktop restoration |
| 9:06:04 PM | [05-published-port-restored-http.png](screenshots/05-published-port-restored-http.png) | Figure 5 | Host access restored |
| 9:10:37 PM | [06-storage-no-volume-baseline.png](screenshots/06-storage-no-volume-baseline.png) | Figure 6 | Booking without volume |
| 9:16:53 PM | [07-storage-lost-after-replacement.png](screenshots/07-storage-lost-after-replacement.png) | Figure 7 | Booking lost without volume |
| 9:23:10 PM | [08-storage-volume-baseline.png](screenshots/08-storage-volume-baseline.png) | Figure 8 | Booking in named volume |
| 9:26:40 PM | [09-storage-volume-survives-replacement.png](screenshots/09-storage-volume-survives-replacement.png) | Figure 9 | Booking survives replacement |

Cloud startup and public API response screenshots have now been collected. The working Word report is retained locally and excluded from Git.

- November 8 at 9:53:24 PM Eastern: [10-support-health-check-dockerfile.png](screenshots/10-support-health-check-dockerfile.png) — Figure 10 configuration evidence: Health check /api/appointments and Dockerfile path ./Dockerfile.

- November 8 at 9:53:47 PM Eastern: [10-cloud-free-plan.png](screenshots/10-cloud-free-plan.png) — Figure 10 configuration evidence: Free compute selection.

- November 8 at 9:54:01 PM Eastern: [10-support-source-runtime-branch.png](screenshots/10-support-source-runtime-branch.png) — Figure 10 configuration evidence: Repository service name Docker runtime and main branch.

- November 8 at 10:10:29 PM Eastern: [11-cloud-deployment-status.png](screenshots/11-cloud-deployment-status.png) — deployment revision 1a909b3, public URL, and TCP connection resets. Retained for deployment and issue discussion; full startup log capture remains pending.

- November 8 at 10:12:00 PM Eastern: [13-cloud-http-verification.png](screenshots/13-cloud-http-verification.png) — Figure 13, actual public HTTPS listing, creation, retrieval, cancellation and restored availability. All checks passed.

- November 8 at 10:20:34 PM Eastern: [11-cloud-tomcat-port-10000.png](screenshots/11-cloud-tomcat-port-10000.png) — Figure 11, Tomcat HTTP startup on port 10000 for revision 1a909b3.

Final accounting: 17 supplied execution/configuration screenshots retained. Twelve are embedded screenshots (Figures 1–11 and 13); Figure 12 is an HTTP log excerpt. Five supporting screenshots are retained separately. All cloud execution captures are now collected.
