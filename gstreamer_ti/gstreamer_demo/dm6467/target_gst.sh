#!/bin/sh
#
# target_gst.sh
#
# Copyright (C) $year Texas Instruments Incorporated - http://www.ti.com/
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as
# published by the Free Software Foundation version 2.1 of the License.
#
# This program is distributed #as is# WITHOUT ANY WARRANTY of any kind,
# whether express or implied; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.

#-----------------------------------------------------------------------------
# Set GStreamer attributes for this platform
#-----------------------------------------------------------------------------
PLATFORM=dm6467
. ../shared/target_env.sh

# Audio / Video Decode defaults
audio_plugin="TIAuddec"
audiocodecName=""
video_plugin="TIViddec2"
videocodeName=""
soundStd="oss"
dispStd="v4l2"
dispDevice="/dev/video2"
videoStd="1080P_30"
videoOut="COMPONENT"
resizer="FALSE";
accelFrameCopy="TRUE"

# audio encoder defaults
audio_live_source="audiotestsrc"
audio_encoder="lame"
audio_src_args="num-buffers=100"

# video encoder defauls
video_encoder="TIVidenc1"
video_encoder_codec_name="h264enc"
video_live_source="videotestsrc"
video_encoder_color_space="Y8C8"
video_src_args="num-buffers=1000"
video_encoder_resolution="720x480"
video_encoder_args="contiguousInputFrame=FALSE"
