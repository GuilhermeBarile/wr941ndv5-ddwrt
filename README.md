# wr941ndv5-ddwrt
* For more info, please visit: http://leonidasv.com/how-i-got-dd-wrt-running-on-an-unsupported-tp-link-wr941nd-v5-2/

Patch DD-WRT firmware for TP-LINK WR941ND V5. This fork removes the precompiled file from the repo and adds some automation. 

This firmware is based on DD-WRT for WR**8**41ND**V8**, which is based on the same hardware but has different model and checksum identifiers.

**Warning:** be sure your device has the FCC ID tagged TE7WR941NX**V5**. Otherwise, don't upload this firmware or you may brick your device.

## Requires:
* Python 3.x
* OpenSSL development libraries

```
$ git clone https://github.com/GuilhermeBarile/wr941ndv5-ddwrt.git
$ cd wr941ndv5-ddwrt
$ make
```

Output should be

```
$ make
make[1]: Entering directory '/home/guigouz/workspace/wrt941nd/wr941ndv5-ddwrt/firmware-tools'
gcc -g  -lcrypto -lssl mktplinkfw.c -o mktplinkfw
make[1]: Leaving directory '/home/guigouz/workspace/wrt941nd/wr941ndv5-ddwrt/firmware-tools'
Checking for firmware...
Firmware not found, downloading it from DD-WRT servers...
Success: download.
Success: model fix
Success: checksum fix
Try uploading now.
File name              : factory-to-ddwrt.bin
File size              : 0x003c0000 /  3932160 bytes
Version 1 Header size  : 0x00000200 /      512 bytes
Header MD5Sum1         : d2 ba fa df 10 11 33 ed c5 fb 81 1c 51 07 3a bb (ok)
Header MD5Sum2         : 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 (purpose yet unknown, unchecked here)

Vendor name            : TP-LINK Technologies
Firmware version       : ver. 1.0
Hardware ID            : 0x09410005 (unknown)
Hardware Revision      : 0x00000001

Kernel data offset     : 0x00000200 /      512 bytes
Kernel data length     : 0x000e22a0 /   926368 bytes
Kernel load address    : 0x80060000
Kernel entry point     : 0x80060000
Rootfs data offset     : 0x000e3000 /   929792 bytes
Rootfs data length     : 0x002dbc42 /  2997314 bytes
Boot loader data offset: 0x00000000 /        0 bytes
Boot loader data length: 0x00000000 /        0 bytes
Total firmware length  : 0x003c0000 /  3932160 bytes
```

If you get a checksum error, open [make.py](https://github.com/GuilhermeBarile/wr941ndv5-ddwrt/blob/master/make.py#L32) and update the expected checksum
```
File name              : factory-to-ddwrt.bin
File size              : 0x003c0000 /  3932160 bytes
Version 1 Header size  : 0x00000200 /      512 bytes
Header MD5Sum1         : 13 bc 40 88 28 2f 0f 21 68 78 61 98 54 f3 17 7f (*ERROR*)
          --> expected : d2 ba fa df 10 11 33 ed c5 fb 81 1c 51 07 3a bb 
```

 
