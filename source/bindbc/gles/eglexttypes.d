// Copyright outlandkarasu 2022.
// Distributed under the Boost Software License, Version 1.0.
//(See: http://www.boost.org/LICENSE_1_0.txt)

module bindbc.gles.eglexttypes;

import core.stdc.stdint : intptr_t, uint64_t, int64_t;
public import bindbc.gles.egltypes;
public import bindbc.gles.egl;

extern(System) @nogc nothrow {

    alias khronos_uint64_t = uint64_t;
    alias khronos_sint64_t = int64_t;
    alias khronos_ssize_t = ptrdiff_t;
    alias khronos_utime_nanoseconds_t = khronos_uint64_t;
    alias khronos_stime_nanoseconds_t = khronos_sint64_t;
        
    // EGL_KHR_cl_event2
    alias EGLSyncKHR = void*;
    alias EGLAttribKHR = intptr_t;

    // EGL_KHR_debug
    alias EGLLabelKHR = void*;
    alias EGLObjectKHR = void*;
    alias EGLDEBUGPROCKHR = void function(EGLenum error, const(char)* command, EGLint messageType, EGLLabelKHR threadLabel, EGLLabelKHR objectLabel, const(char)* message);

    // EGL_KHR_fence_sync
    alias EGLTimeKHR = khronos_utime_nanoseconds_t;

    // EGL_KHR_image
    alias EGLImageKHR = void*;

    // EGL_KHR_stream
    alias EGLStreamKHR = void*;
    alias EGLuint64KHR = khronos_uint64_t;

    // EGL_KHR_stream_cross_process_fd
    alias EGLNativeFileDescriptorKHR = int;

    // EGL_ANDROID_blob_cache
    alias EGLsizeiANDROID = khronos_ssize_t;
    alias EGLSetBlobFuncANDROID = void function(const(void)* key, EGLsizeiANDROID keySize, const(void)* value, EGLsizeiANDROID valueSize);
    alias EGLGetBlobFuncANDROID = EGLsizeiANDROID function(const(void)* key, EGLsizeiANDROID keySize, void* value, EGLsizeiANDROID valueSize);

    // EGL_ANDROID_get_frame_timestamps
    alias EGLnsecsANDROID = khronos_stime_nanoseconds_t;

    // EGL_ANDROID_get_native_client_buffer
    struct AHardwareBuffer;

    // EGL_EXT_device_base
    alias EGLDeviceEXT = void*;

    // EGL_EXT_output_base
    alias EGLOutputLayerEXT = void*;
    alias EGLOutputPortEXT = void*;

    // EGL_NV_sync
    alias EGLSyncNV = void*;
    alias EGLTimeNV = khronos_utime_nanoseconds_t;

    // EGL_NV_system_time
    alias EGLuint64NV = khronos_utime_nanoseconds_t;

    // EGL_HI_clientpixmap
    struct EGLClientPixmapHI
    {
        void* pData;
        EGLint iWidth;
        EGLint iHeight;
        EGLint iStride;
    }

    // EGL_WL_bind_wayland_display
    struct wl_display;
    struct wl_resource;

    // EGL_WL_create_wayland_buffer_from_image
    struct wl_buffer;
}
