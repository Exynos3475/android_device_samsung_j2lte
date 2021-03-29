#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=200

# Dalvik/Art
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnCdmaDevice=0 \
    rild.libpath=/system/lib/libsec-ril.so \
    rild.libargs=-d /dev/ttyS0 \
    ro.ril.telephony.mqanelements=5 \
    ro.telephony.default_network=9 \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.smps.enable=true \
    ro.telephony.get_imsi_from_sim=true \
    ro.ril.force_eri_from_xml=true \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.add_power_save=1

