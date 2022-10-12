# Spark Fundamentals
---
1. Build an image from [Dockerfile](Dockerfile)
2. Run a container with the following command:

```bash
docker run -it -p <LOCAL_PORT>:8050 -v <LOCAL_VOLUME>:/workspace <IMAGE_ID>
```
3. Open the tokenized link in a browser.

```bash
http://127.0.0.1:<LOCAL_PORT>/?token=<TOKEN>
```

4. Continue working in jupyter notebook.
