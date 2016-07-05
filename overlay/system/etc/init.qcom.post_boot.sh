#!/system/bin/sh
# Copyright (c) 2012-2013, The Linux Foundation. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of The Linux Foundation nor
#       the names of its contributors may be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# mi4c tweaks v1.0 by fishthing
# http://www.miui.com/thread-4436538-1-1.html
#


target=`getprop ro.board.platform`
case "$target" in
    "msm8992")
        # ensure at most one A57 is online when thermal hotplug is disabled
        echo 0 > /sys/devices/system/cpu/cpu5/online
        # in case CPU4 is online, limit its frequency
        echo 960000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
        # Limit A57 max freq from msm_perf module in case CPU 4 is offline
        echo "4:960000 5:960000" > /sys/module/msm_performance/parameters/cpu_max_freq
        # disable thermal bcl hotplug to switch governor
        echo 0 > /sys/module/msm_thermal/core_control/enabled
        for mode in /sys/devices/soc.0/qcom,bcl.*/mode
        do
            echo -n disable > $mode
        done
        for hotplug_mask in /sys/devices/soc.0/qcom,bcl.*/hotplug_mask
        do
            bcl_hotplug_mask=`cat $hotplug_mask`
            echo 0 > $hotplug_mask
        done
        for hotplug_soc_mask in /sys/devices/soc.0/qcom,bcl.*/hotplug_soc_mask
        do
            bcl_soc_hotplug_mask=`cat $hotplug_soc_mask`
            echo 0 > $hotplug_soc_mask
        done
        for mode in /sys/devices/soc.0/qcom,bcl.*/mode
        do
            echo -n enable > $mode
        done

	# Disable CPU retention
	echo 0 > /sys/module/lpm_levels/system/a53/cpu0/retention/idle_enabled
	echo 0 > /sys/module/lpm_levels/system/a53/cpu1/retention/idle_enabled
	echo 0 > /sys/module/lpm_levels/system/a53/cpu2/retention/idle_enabled
	echo 0 > /sys/module/lpm_levels/system/a53/cpu3/retention/idle_enabled
	echo 0 > /sys/module/lpm_levels/system/a57/cpu4/retention/idle_enabled
	echo 0 > /sys/module/lpm_levels/system/a57/cpu5/retention/idle_enabled

	# Disable L2 retention
	echo 0 > /sys/module/lpm_levels/system/a53/a53-l2-retention/idle_enabled
	echo 0 > /sys/module/lpm_levels/system/a57/a57-l2-retention/idle_enabled
	
	# Available CPU freqs
	# cpu0-3 384000 460800 600000 672000 787200 864000 960000 1248000 1440000
	# cpu4-5 384000 480000 633600 768000 864000 960000 1248000 1344000 1440000 1536000 1632000 1689600 1824000

        # configure governor settings for little cluster
        echo "interactive" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
        echo 1 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/use_sched_load
        echo 1 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/use_migration_notif
        echo "29000 460800:9000 600000:19000 1248000:39000" > /sys/devices/system/cpu/cpu0/cpufreq/interactive/above_hispeed_delay
        echo 75 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/go_hispeed_load
        echo 20000 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/timer_rate
        echo 80000 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/timer_slack
        echo 460800 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/hispeed_freq
        echo 1 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/io_is_busy
        echo "75 460800:69 600000:80 672000:76 787200:81 864000:81 960000:69 1248000:78" > /sys/devices/system/cpu/cpu0/cpufreq/interactive/target_loads
        echo 40000 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/min_sample_time
        echo 80000 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/max_freq_hysteresis
        echo 384000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
        # online CPU4
        echo 1 > /sys/devices/system/cpu/cpu4/online
        # Best effort limiting for first time boot if msm_performance module is absent
        echo 960000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
        # configure governor settings for big cluster
        echo "interactive" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
        echo 1 > /sys/devices/system/cpu/cpu4/cpufreq/interactive/use_sched_load
        echo 1 > /sys/devices/system/cpu/cpu4/cpufreq/interactive/use_migration_notif
        echo "19000 480000:9000 633600:14000" > /sys/devices/system/cpu/cpu4/cpufreq/interactive/above_hispeed_delay
        echo 72 > /sys/devices/system/cpu/cpu4/cpufreq/interactive/go_hispeed_load
        echo 20000 > /sys/devices/system/cpu/cpu4/cpufreq/interactive/timer_rate
        echo 80000 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/timer_slack
        echo 384000 > /sys/devices/system/cpu/cpu4/cpufreq/interactive/hispeed_freq
        echo 1 > /sys/devices/system/cpu/cpu4/cpufreq/interactive/io_is_busy
        echo "72 480000:68 633600:74 768000:80 864000:81 960000:69 1248000:83 1344000:84 1440000:84 1536000:84 1632000:86 1689600:83" > /sys/devices/system/cpu/cpu4/cpufreq/interactive/target_loads
        echo 60000 > /sys/devices/system/cpu/cpu4/cpufreq/interactive/min_sample_time
        echo 80000 > /sys/devices/systm/cpu/cpu4/cpufreq/interactive/max_freq_hysteresis
        echo 384000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
        # restore A57's max
        cat /sys/devices/system/cpu/cpu4/cpufreq/cpuinfo_min_freq > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
        cat /sys/devices/system/cpu/cpu4/cpufreq/cpuinfo_max_freq > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
        # insert core_ctl module and use conservative paremeters
        insmod /system/lib/modules/core_ctl.ko
        # re-enable thermal and BCL hotplug
        echo 1 > /sys/module/msm_thermal/core_control/enabled
        for mode in /sys/devices/soc.0/qcom,bcl.*/mode
        do
            echo -n disable > $mode
        done
        for hotplug_mask in /sys/devices/soc.0/qcom,bcl.*/hotplug_mask
        do
            echo $bcl_hotplug_mask > $hotplug_mask
        done
        for hotplug_soc_mask in /sys/devices/soc.0/qcom,bcl.*/hotplug_soc_mask
        do
            echo $bcl_soc_hotplug_mask > $hotplug_soc_mask
        done
        for mode in /sys/devices/soc.0/qcom,bcl.*/mode
        do
            echo -n enable > $mode
        done
        # plugin remaining A57s
        echo 1 > /sys/devices/system/cpu/cpu5/online
        echo 0 > /sys/module/lpm_levels/parameters/sleep_disabled
        # Restore CPU 4 max freq from msm_performance
        echo "4:4294967295 5:4294967295" > /sys/module/msm_performance/parameters/cpu_max_freq
        # input boost configuration
        echo 0:864000 > /sys/module/cpu_boost/parameters/input_boost_freq
        echo 40 > /sys/module/cpu_boost/parameters/input_boost_ms
        # core_ctl module
        echo 0 > /sys/devices/system/cpu/cpu4/core_ctl/min_cpus
        chmod 444 /sys/devices/system/cpu/cpu4/core_ctl/min_cpus
        echo 2 > /sys/devices/system/cpu/cpu4/core_ctl/max_cpus
        echo 70 > /sys/devices/system/cpu/cpu4/core_ctl/busy_up_thres
        echo 40 > /sys/devices/system/cpu/cpu4/core_ctl/busy_down_thres
        echo 100 > /sys/devices/system/cpu/cpu4/core_ctl/offline_delay_ms
        echo 1 > /sys/devices/system/cpu/cpu4/core_ctl/is_big_cluster
        echo 2 > /sys/devices/system/cpu/cpu4/core_ctl/task_thres
        # Setting b.L scheduler parameters
        echo 1 > /proc/sys/kernel/sched_migration_fixup
        echo 15 > /proc/sys/kernel/sched_small_task
        echo 20 > /proc/sys/kernel/sched_mostly_idle_load
        echo 3 > /proc/sys/kernel/sched_mostly_idle_nr_run
        echo 85 > /proc/sys/kernel/sched_upmigrate
        echo 70 > /proc/sys/kernel/sched_downmigrate
        echo 7500000 > /proc/sys/kernel/sched_cpu_high_irqload
        echo 60 > /proc/sys/kernel/sched_heavy_task
        echo 65 > /proc/sys/kernel/sched_init_task_load
        echo 200000000 > /proc/sys/kernel/sched_min_runtime
        echo 400000 > /proc/sys/kernel/sched_freq_inc_notify
        echo 400000 > /proc/sys/kernel/sched_freq_dec_notify
        #relax access permission for display power consumption
        chown -h system /sys/devices/system/cpu/cpu4/core_ctl/min_cpus
        chown -h system /sys/devices/system/cpu/cpu4/core_ctl/max_cpus
        #enable rps static configuration
        echo 8 >  /sys/class/net/rmnet_ipa0/queues/rx-0/rps_cpus
        for devfreq_gov in /sys/class/devfreq/qcom,cpubw*/governor
        do
            echo "bw_hwmon" > $devfreq_gov
        done
        for devfreq_gov in /sys/class/devfreq/qcom,mincpubw*/governor
        do
            echo "cpufreq" > $devfreq_gov
        done
        # Disable sched_boost
        echo 0 > /proc/sys/kernel/sched_boost
        
        # Disable TouchBoost
        echo 0 > /sys/module/msm_performance/parameters/touchboost
        
        # extra settings
        echo 256 > /proc/sys/kernel/random/write_wakeup_threshold
        echo 128 > /proc/sys/kernel/random/read_wakeup_threshold
        
        # switch to NOOP scheduler
        echo 256 > /sys/block/mmcblk0/bdi/read_ahead_kb
        echo "noop" > /sys/block/mmcblk0/queue/scheduler
        echo 0 > /sys/block/mmcblk0/queue/add_random
        echo 0 > /sys/block/mmcblk0/queue/rotational
        echo 1 > /sys/block/mmcblk0/queue/rq_affinity
        echo 0 > /sys/block/mmcblk0/queue/nomerges
        echo 256 > /sys/block/mmcblk0/queue/nr_requests
        
    ;;
esac

chown -h system /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate
chown -h system /sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor
chown -h system /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy

emmc_boot=`getprop ro.boot.emmc`
case "$emmc_boot"
    in "true")
        chown -h system /sys/devices/platform/rs300000a7.65536/force_sync
        chown -h system /sys/devices/platform/rs300000a7.65536/sync_sts
        chown -h system /sys/devices/platform/rs300100a7.65536/force_sync
        chown -h system /sys/devices/platform/rs300100a7.65536/sync_sts
    ;;
esac

# Post-setup services
case "$target" in
    "msm8994" | "msm8992")
        rm /data/system/perfd/default_values
        setprop ro.min_freq_0 384000
        setprop ro.min_freq_4 384000
        start perfd
    ;;
esac

case "$target" in
    "msm8226" | "msm8974" | "msm8610" | "apq8084" | "mpq8092" | "msm8610" | "msm8916" | "msm8994" | "msm8992")
        # Let kernel know our image version/variant/crm_version
        image_version="10:"
        image_version+=`getprop ro.build.id`
        image_version+=":"
        image_version+=`getprop ro.build.version.incremental`
        image_variant=`getprop ro.product.name`
        image_variant+="-"
        image_variant+=`getprop ro.build.type`
        oem_version=`getprop ro.build.version.codename`
        echo 10 > /sys/devices/soc0/select_image
        echo $image_version > /sys/devices/soc0/image_version
        echo $image_variant > /sys/devices/soc0/image_variant
        echo $oem_version > /sys/devices/soc0/image_crm_version
        ;;
esac

# Enable QDSS agent if QDSS feature is enabled
# on a non-commercial build.  This allows QDSS
# debug tracing.
if [ -c /dev/coresight-stm ]; then
    build_variant=`getprop ro.build.type`
    if [ "$build_variant" != "user" ]; then
        # Test: Is agent present?
        if [ -f /data/qdss/qdss.agent.sh ]; then
            # Then tell agent we just booted
           /system/bin/sh /data/qdss/qdss.agent.sh on.boot &
        fi
    fi
fi

# Start RIDL/LogKit II client
su -c /system/vendor/bin/startRIDL.sh &

#dt2w
echo 1 > /sys/devices/soc.0/f9924000.i2c/i2c-2/2-0070/input/input1/wake_gesture 
