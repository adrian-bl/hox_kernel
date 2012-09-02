#!/bin/bash

MTARGET=/BUILD/JBNEW/device/htc/endeavoru/prebuilt/modules


for x in `find . | grep \.ko$` ; do
	echo "> $x"
	cp $x $MTARGET
done

cp ./arch/arm/boot/zImage $MTARGET/../kernel

ls -l $MTARGET
ls -l $MTARGET/../kernel
