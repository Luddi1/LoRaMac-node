#!/bin/bash

cmake 	-DCMAKE_BUILD_TYPE=Debug \
		-DCMAKE_TOOLCHAIN_FILE="../cmake/toolchain-arm-none-eabi.cmake" \
		-DAPPLICATION="LoRaMac" \
		-DCLASS="classA" \
		-DCLASSB_ENABLED="OFF" \
		-DACTIVE_REGION="LORAMAC_REGION_EU868" \
		-DREGION_EU868="ON" \
		-DREGION_US915="OFF" \
		-DREGION_CN779="OFF" \
		-DREGION_EU433="OFF" \
		-DREGION_AU915="OFF" \
		-DREGION_AS923="OFF" \
		-DREGION_CN470="OFF" \
		-DREGION_KR920="OFF" \
		-DREGION_IN865="OFF" \
		-DREGION_RU864="OFF" \
		-DBOARD="NucleoL476" \
        -DRADIO="sx1276" \
        -DUSE_RADIO_DEBUG="" \
        -DMBED_RADIO_SHIELD="DRAGINO14" .. && make -j4