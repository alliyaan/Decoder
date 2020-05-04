
## Features
- Automatic hash type identification
- Supports MD5, SHA1, SHA256, SHA384, SHA512
- Can extract & crack hashes from a file
- Can find hashes from a directory, recursively
- Multi-threading

## Insallation & Usage
> **Note:** Alian_Hash isn't compatible with python2, run it with python3 instead.
> Also, Alian_Hash uses some APIs for hash lookups, check the source code if you are paranoid.

Alian_Hash can be run directly from the python script but I highly suggest you to install it with `make install`

After the installation, you will be able to access it with `alian-hash` command.

### Cracking a single hash

You don't need to specify the hash type. Alian_Hash will identify and *crack* it under 3 seconds.

**Usage:** `alian-hash -s <hash>`
### Finding hashes from a directory

Yep, just specify a directory and Alian_Hash will go through all the files and directories present in it, looking for hashes.

**Usage:** `alian-hash -d /root/Documents`
### Cracking hashes from a file

Alian_Hash can find your hashes even if they are stored in a file like this
```
simple@gmail.com:21232f297a57a5a743894a0e4a801fc3
{"json@gmail.com":"d033e22ae348aeb5660fc2140aec35850c4da997"}
surrondedbytext8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918surrondedbytext
```

**Usage:** `alian-hash -f /root/hashes.txt`

### Specifiying number of threads

Multi-threading can incredibly minimize the overall speed when you have a lot of hashes to crack by making requests in parallel.

`alian-hash -f /root/hashes.txt -t 10`

### License
Alian_Hash is licensed under myself
