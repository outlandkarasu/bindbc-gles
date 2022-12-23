// Copyright outlandkarasu 2022.
// Distributed under the Boost Software License, Version 1.0.
// (See: http://www.boost.org/LICENSE_1_0.txt)

module bindbc.gles.eglext;

import bindbc.loader;

import bindbc.gles.eglexttypes;
public import bindbc.gles.egltypes;
public import bindbc.gles.egl;

struct EGLExtensions
{
    bool EGL_KHR_config_attribs;
    bool EGL_KHR_lock_surface;
    bool EGL_KHR_image;
    bool EGL_KHR_vg_parent_image;
    bool EGL_KHR_gl_texture_2D_image;
    bool EGL_KHR_gl_texture_cubemap_image;
    bool EGL_KHR_gl_texture_3D_image;
    bool EGL_KHR_gl_renderbuffer_image;
    bool EGL_KHR_reusable_sync;
    bool EGL_KHR_image_base;
    bool EGL_KHR_image_pixmap;
    bool EGL_IMG_context_priority;
    bool EGL_NOK_texture_from_pixmap;
    bool EGL_KHR_lock_surface2;
    bool EGL_NV_coverage_sample;
    bool EGL_NV_depth_nonlinear;
    bool EGL_NV_sync;
    bool EGL_KHR_fence_sync;
    bool EGL_NOK_swap_region;
    bool EGL_NOK_swap_region2;
    bool EGL_HI_clientpixmap;
    bool EGL_HI_colorformats;
    bool EGL_MESA_drm_image;
    bool EGL_NV_post_sub_buffer;
    bool EGL_ANGLE_query_surface_pointer;
    bool EGL_ANGLE_surface_d3d_texture_2d_share_handle;
    bool EGL_NV_coverage_sample_resolve;
    bool EGL_NV_system_time;
    bool EGL_KHR_stream;
    bool EGL_KHR_stream_attrib;
    bool EGL_KHR_stream_consumer_gltexture;
    bool EGL_KHR_stream_producer_eglsurface;
    bool EGL_KHR_stream_producer_aldatalocator;
    bool EGL_KHR_stream_fifo;
    bool EGL_EXT_create_context_robustness;
    bool EGL_ANGLE_d3d_share_handle_client_buffer;
    bool EGL_KHR_create_context;
    bool EGL_KHR_surfaceless_context;
    bool EGL_KHR_stream_cross_process_fd;
    bool EGL_EXT_multiview_window;
    bool EGL_KHR_wait_sync;
    bool EGL_NV_post_convert_rounding;
    bool EGL_NV_native_query;
    bool EGL_NV_3dvision_surface;
    bool EGL_ANDROID_framebuffer_target;
    bool EGL_ANDROID_blob_cache;
    bool EGL_ANDROID_image_native_buffer;
    bool EGL_ANDROID_native_fence_sync;
    bool EGL_ANDROID_recordable;
    bool EGL_EXT_buffer_age;
    bool EGL_EXT_image_dma_buf_import;
    bool EGL_ARM_pixmap_multisample_discard;
    bool EGL_EXT_swap_buffers_with_damage;
    bool EGL_NV_stream_sync;
    bool EGL_EXT_platform_base;
    bool EGL_EXT_client_extensions;
    bool EGL_EXT_platform_x11;
    bool EGL_KHR_cl_event;
    bool EGL_KHR_get_all_proc_addresses;
    bool EGL_KHR_client_get_all_proc_addresses;
    bool EGL_MESA_platform_gbm;
    bool EGL_EXT_platform_wayland;
    bool EGL_KHR_lock_surface3;
    bool EGL_KHR_cl_event2;
    bool EGL_KHR_gl_colorspace;
    bool EGL_EXT_protected_surface;
    bool EGL_KHR_platform_android;
    bool EGL_KHR_platform_gbm;
    bool EGL_KHR_platform_wayland;
    bool EGL_KHR_platform_x11;
    bool EGL_EXT_device_base;
    bool EGL_EXT_platform_device;
    bool EGL_NV_device_cuda;
    bool EGL_NV_cuda_event;
    bool EGL_TIZEN_image_native_buffer;
    bool EGL_TIZEN_image_native_surface;
    bool EGL_EXT_output_base;
    bool EGL_EXT_device_drm;
    bool EGL_EXT_output_drm;
    bool EGL_EXT_device_openwf;
    bool EGL_EXT_output_openwf;
    bool EGL_EXT_stream_consumer_egloutput;
    bool EGL_KHR_partial_update;
    bool EGL_KHR_swap_buffers_with_damage;
    bool EGL_ANGLE_window_fixed_size;
    bool EGL_EXT_yuv_surface;
    bool EGL_MESA_image_dma_buf_export;
    bool EGL_EXT_device_enumeration;
    bool EGL_EXT_device_query;
    bool EGL_ANGLE_device_d3d;
    bool EGL_KHR_create_context_no_error;
    bool EGL_KHR_debug;
    bool EGL_NV_stream_metadata;
    bool EGL_NV_stream_consumer_gltexture_yuv;
    bool EGL_IMG_image_plane_attribs;
    bool EGL_KHR_mutable_render_buffer;
    bool EGL_EXT_protected_content;
    bool EGL_ANDROID_presentation_time;
    bool EGL_ANDROID_create_native_client_buffer;
    bool EGL_ANDROID_front_buffer_auto_refresh;
    bool EGL_KHR_no_config_context;
    bool EGL_KHR_context_flush_control;
    bool EGL_ARM_implicit_external_sync;
    bool EGL_MESA_platform_surfaceless;
    bool EGL_EXT_image_dma_buf_import_modifiers;
    bool EGL_EXT_pixel_format_float;
    bool EGL_EXT_gl_colorspace_bt2020_linear;
    bool EGL_EXT_gl_colorspace_bt2020_pq;
    bool EGL_EXT_gl_colorspace_scrgb_linear;
    bool EGL_EXT_surface_SMPTE2086_metadata;
    bool EGL_NV_stream_fifo_next;
    bool EGL_NV_stream_fifo_synchronous;
    bool EGL_NV_stream_reset;
    bool EGL_NV_stream_frame_limits;
    bool EGL_NV_stream_remote;
    bool EGL_NV_stream_cross_object;
    bool EGL_NV_stream_cross_display;
    bool EGL_NV_stream_cross_process;
    bool EGL_NV_stream_cross_partition;
    bool EGL_NV_stream_cross_system;
    bool EGL_NV_stream_socket;
    bool EGL_NV_stream_socket_unix;
    bool EGL_NV_stream_socket_inet;
    bool EGL_EXT_compositor;
    bool EGL_EXT_surface_CTA861_3_metadata;
    bool EGL_EXT_gl_colorspace_display_p3;
    bool EGL_EXT_gl_colorspace_display_p3_linear;
    bool EGL_EXT_gl_colorspace_scrgb;
    bool EGL_EXT_image_implicit_sync_control;
    bool EGL_EXT_bind_to_front;
    bool EGL_ANDROID_get_frame_timestamps;
    bool EGL_ANDROID_get_native_client_buffer;
    bool EGL_NV_context_priority_realtime;
    bool EGL_EXT_image_gl_colorspace;
    bool EGL_KHR_display_reference;
    bool EGL_NV_stream_flush;
    bool EGL_EXT_sync_reuse;
    bool EGL_EXT_client_sync;
    bool EGL_EXT_gl_colorspace_display_p3_passthrough;
    bool EGL_MESA_query_driver;
    bool EGL_ANDROID_GLES_layers;
    bool EGL_NV_n_buffer;
    bool EGL_NV_stream_origin;
    bool EGL_NV_stream_dma;
    bool EGL_WL_bind_wayland_display;
    bool EGL_WL_create_wayland_buffer_from_image;
    bool EGL_NV_stream_consumer_eglimage;
    bool EGL_EXT_device_query_name;
    bool EGL_EXT_platform_xcb;
    bool EGL_ANGLE_sync_control_rate;
    bool EGL_EXT_device_persistent_id;
    bool EGL_EXT_device_drm_render_node;
    bool EGL_EXT_config_select_group;
    bool EGL_EXT_present_opaque;
    bool EGL_EXT_surface_compression;
}

private {
    EGLExtensions eglExtensions;
}

extern(System) @nogc nothrow {
    // EGL_KHR_cl_event2
    alias peglCreateSync64KHR = EGLSyncKHR function(EGLDisplay, EGLenum, const(EGLAttribKHR)*);

    // EGL_KHR_debug
    alias peglDebugMessageControlKHR = EGLint function(EGLDEBUGPROCKHR, const(EGLAttrib)*);
    alias peglQueryDebugKHR = EGLBoolean function(EGLint, EGLAttrib*);
    alias peglLabelObjectKHR = EGLint function(EGLDisplay, EGLenum, EGLObjectKHR, EGLLabelKHR);

    // EGL_KHR_display_reference
    alias peglQueryDisplayAttribKHR = EGLBoolean function(EGLDisplay, EGLint, EGLAttrib*);


    // EGL_KHR_fence_sync
    alias peglCreateSyncKHR = EGLSyncKHR function(EGLDisplay, EGLenum, const(EGLint)*);
    alias peglDestroySyncKHR = EGLBoolean function(EGLDisplay, EGLSyncKHR);
    alias peglClientWaitSyncKHR = EGLint function(EGLDisplay, EGLSyncKHR, EGLint, EGLTimeKHR);
    alias peglGetSyncAttribKHR = EGLBoolean function(EGLDisplay, EGLSyncKHR, EGLint, EGLint*);

    // EGL_KHR_image
    alias peglCreateImageKHR = EGLImageKHR function(EGLDisplay, EGLContext, EGLenum, EGLClientBuffer, const(EGLint)*);
    alias peglDestroyImageKHR = EGLBoolean function(EGLDisplay, EGLImageKHR);

    // EGL_KHR_lock_surface
    alias peglLockSurfaceKHR = EGLBoolean function(EGLDisplay, EGLSurface, const(EGLint)*);
    alias peglUnlockSurfaceKHR = EGLBoolean function(EGLDisplay, EGLSurface);

    // EGL_KHR_lock_surface3
    alias peglQuerySurface64KHR = EGLBoolean function(EGLDisplay, EGLSurface, EGLint, EGLAttribKHR*);

    // EGL_KHR_partial_update
    alias peglSetDamageRegionKHR = EGLBoolean function(EGLDisplay, EGLSurface, EGLint*, EGLint);

    // EGL_KHR_reusable_sync
    alias peglSignalSyncKHR = EGLBoolean function(EGLDisplay, EGLSyncKHR, EGLenum);

    // EGL_KHR_stream
    alias peglCreateStreamKHR = EGLStreamKHR function(EGLDisplay, const(EGLint)*);
    alias peglDestroyStreamKHR = EGLBoolean function(EGLDisplay, EGLStreamKHR);
    alias peglStreamAttribKHR = EGLBoolean function(EGLDisplay, EGLStreamKHR, EGLenum, EGLint);
    alias peglQueryStreamKHR = EGLBoolean function(EGLDisplay, EGLStreamKHR, EGLenum, EGLint*);
    alias peglQueryStreamu64KHR = EGLBoolean function(EGLDisplay, EGLStreamKHR, EGLenum, EGLuint64KHR*);

    // EGL_KHR_stream_attrib
    alias peglCreateStreamAttribKHR = EGLStreamKHR function(EGLDisplay, const(EGLAttrib)*);
    alias peglSetStreamAttribKHR = EGLBoolean function(EGLDisplay, EGLStreamKHR, EGLenum, EGLAttrib);
    alias peglQueryStreamAttribKHR = EGLBoolean function(EGLDisplay, EGLStreamKHR, EGLenum, EGLAttrib*);
    alias peglStreamConsumerAcquireAttribKHR = EGLBoolean function(EGLDisplay, EGLStreamKHR, const(EGLAttrib)*);
    alias peglStreamConsumerReleaseAttribKHR = EGLBoolean function(EGLDisplay, EGLStreamKHR, const(EGLAttrib)*);

    // EGL_KHR_stream_consumer_gltexture
    alias peglStreamConsumerGLTextureExternalKHR = EGLBoolean function(EGLDisplay, EGLStreamKHR);
    alias peglStreamConsumerAcquireKHR = EGLBoolean function(EGLDisplay, EGLStreamKHR);
    alias peglStreamConsumerReleaseKHR = EGLBoolean function(EGLDisplay, EGLStreamKHR);

    // EGL_KHR_stream_cross_process_fd
    alias peglGetStreamFileDescriptorKHR = EGLNativeFileDescriptorKHR function(EGLDisplay, EGLStreamKHR);
    alias peglCreateStreamFromFileDescriptorKHR = EGLStreamKHR function(EGLDisplay, EGLNativeFileDescriptorKHR);

    // EGL_KHR_stream_fifo
    alias peglQueryStreamTimeKHR = EGLBoolean function(EGLDisplay, EGLStreamKHR, EGLenum, EGLTimeKHR*);

    // EGL_KHR_stream_producer_eglsurface
    alias peglCreateStreamProducerSurfaceKHR = EGLSurface function(EGLDisplay, EGLConfig, EGLStreamKHR, const(EGLint)*);

    // EGL_KHR_swap_buffers_with_damage
    alias peglSwapBuffersWithDamageKHR = EGLBoolean function(EGLDisplay, EGLSurface, const(EGLint)*, EGLint);

    // EGL_KHR_wait_sync
    alias peglWaitSyncKHR = EGLint function(EGLDisplay, EGLSyncKHR, EGLint);

    // EGL_ANDROID_blob_cache
    alias peglSetBlobCacheFuncsANDROID = void function(EGLDisplay, EGLSetBlobFuncANDROID, EGLGetBlobFuncANDROID);

    // EGL_ANDROID_create_native_client_buffer
    alias peglCreateNativeClientBufferANDROID = EGLClientBuffer function(const(EGLint)*);

    // EGL_ANDROID_get_frame_timestamps
    alias peglGetCompositorTimingSupportedANDROID = EGLBoolean function(EGLDisplay, EGLSurface, EGLint);
    alias peglGetCompositorTimingANDROID = EGLBoolean function(EGLDisplay, EGLSurface, EGLint, const(EGLint)*, EGLnsecsANDROID*);
    alias peglGetNextFrameIdANDROID = EGLBoolean function(EGLDisplay, EGLSurface, EGLuint64KHR*);
    alias peglGetFrameTimestampSupportedANDROID = EGLBoolean function(EGLDisplay, EGLSurface, EGLint);
    alias peglGetFrameTimestampsANDROID = EGLBoolean function(EGLDisplay, EGLSurface, EGLuint64KHR, EGLint, const(EGLint)*, EGLnsecsANDROID*);

    // EGL_ANDROID_get_native_client_buffer
    alias peglGetNativeClientBufferANDROID = EGLClientBuffer function(const(AHardwareBuffer)*);

    // EGL_ANDROID_native_fence_sync
    alias peglDupNativeFenceFDANDROID = EGLint function(EGLDisplay, EGLSyncKHR);

    // EGL_ANDROID_presentation_time
    alias peglPresentationTimeANDROID = EGLBoolean function(EGLDisplay, EGLSurface, EGLnsecsANDROID);

    // EGL_ANGLE_query_surface_pointer
    alias peglQuerySurfacePointerANGLE = EGLBoolean function(EGLDisplay, EGLSurface, EGLint, void**);

    // EGL_EXT_client_sync
    alias peglClientSignalSyncEXT = EGLBoolean function(EGLDisplay, EGLSync, const(EGLAttrib)*);

    // EGL_EXT_compositor
    alias peglCompositorSetContextListEXT = EGLBoolean function(const(EGLint)*, EGLint);
    alias peglCompositorSetContextAttributesEXT = EGLBoolean function(EGLint, const(EGLint)*, EGLint);
    alias peglCompositorSetWindowListEXT = EGLBoolean function(EGLint, const(EGLint)*, EGLint);
    alias peglCompositorSetWindowAttributesEXT = EGLBoolean function(EGLint, const(EGLint)*, EGLint);
    alias peglCompositorBindTexWindowEXT = EGLBoolean function(EGLint);
    alias peglCompositorSetSizeEXT = EGLBoolean function(EGLint, EGLint, EGLint);
    alias peglCompositorSwapPolicyEXT = EGLBoolean function(EGLint, EGLint);

    // EGL_EXT_device_base
    alias peglQueryDeviceAttribEXT = EGLBoolean function(EGLDeviceEXT, EGLint, EGLAttrib*);
    alias peglQueryDeviceStringEXT = const(char)* function(EGLDeviceEXT, EGLint);
    alias peglQueryDevicesEXT = EGLBoolean function(EGLint, EGLDeviceEXT*, EGLint*);
    alias peglQueryDisplayAttribEXT = EGLBoolean function(EGLDisplay, EGLint, EGLAttrib*);

    // EGL_EXT_image_dma_buf_import_modifiers
    alias peglQueryDmaBufFormatsEXT = EGLBoolean function(EGLDisplay, EGLint, EGLint*, EGLint*);
    alias peglQueryDmaBufModifiersEXT = EGLBoolean function(EGLDisplay, EGLint, EGLint, EGLuint64KHR*, EGLBoolean*, EGLint*);

    // EGL_EXT_output_base
    alias peglGetOutputLayersEXT = EGLBoolean function(EGLDisplay, const(EGLAttrib)*, EGLOutputLayerEXT*, EGLint, EGLint*);
    alias peglGetOutputPortsEXT = EGLBoolean function(EGLDisplay, const(EGLAttrib)*, EGLOutputPortEXT*, EGLint, EGLint*);
    alias peglOutputLayerAttribEXT = EGLBoolean function(EGLDisplay, EGLOutputLayerEXT, EGLint, EGLAttrib);
    alias peglQueryOutputLayerAttribEXT = EGLBoolean function(EGLDisplay, EGLOutputLayerEXT, EGLint, EGLAttrib*);
    alias peglQueryOutputLayerStringEXT = const(char)* function(EGLDisplay, EGLOutputLayerEXT, EGLint);
    alias peglOutputPortAttribEXT = EGLBoolean function(EGLDisplay, EGLOutputPortEXT, EGLint, EGLAttrib);
    alias peglQueryOutputPortAttribEXT = EGLBoolean function(EGLDisplay, EGLOutputPortEXT, EGLint, EGLAttrib*);
    alias peglQueryOutputPortStringEXT = const(char)* function(EGLDisplay, EGLOutputPortEXT, EGLint);

    // EGL_EXT_platform_base
    alias peglGetPlatformDisplayEXT = EGLDisplay function(EGLenum, void*, const(EGLint)*);
    alias peglCreatePlatformWindowSurfaceEXT = EGLSurface function(EGLDisplay, EGLConfig, void*, const(EGLint)*);
    alias peglCreatePlatformPixmapSurfaceEXT = EGLSurface function(EGLDisplay, EGLConfig, void*, const(EGLint)*);

    // EGL_EXT_stream_consumer_egloutput
    alias peglStreamConsumerOutputEXT = EGLBoolean function(EGLDisplay, EGLStreamKHR, EGLOutputLayerEXT);

    // EGL_EXT_swap_buffers_with_damage
    alias peglSwapBuffersWithDamageEXT = EGLBoolean function(EGLDisplay, EGLSurface, const(EGLint)*, EGLint);

    // EGL_EXT_sync_reuse
    alias peglUnsignalSyncEXT = EGLBoolean function(EGLDisplay, EGLSync, const(EGLAttrib)*);

    // EGL_HI_clientpixmap
    alias peglCreatePixmapSurfaceHI = EGLSurface function(EGLDisplay, EGLConfig, EGLClientPixmapHI*);

    // EGL_MESA_drm_image
    alias peglCreateDRMImageMESA = EGLImageKHR function(EGLDisplay, const(EGLint)*);
    alias peglExportDRMImageMESA = EGLBoolean function(EGLDisplay, EGLImageKHR, EGLint*, EGLint*, EGLint*);

    // EGL_MESA_image_dma_buf_export
    alias peglExportDMABUFImageQueryMESA = EGLBoolean function(EGLDisplay, EGLImageKHR, int*, int*, EGLuint64KHR*);
    alias peglExportDMABUFImageMESA = EGLBoolean function(EGLDisplay, EGLImageKHR, int*, EGLint*, EGLint*);

    // EGL_MESA_query_driver
    alias peglGetDisplayDriverConfig = char* function(EGLDisplay);
    alias peglGetDisplayDriverName = const(char)* function(EGLDisplay);

    // EGL_NOK_swap_region
    alias peglSwapBuffersRegionNOK = EGLBoolean function(EGLDisplay, EGLSurface, EGLint, const(EGLint)*);

    // EGL_NOK_swap_region2
    alias peglSwapBuffersRegion2NOK = EGLBoolean function(EGLDisplay, EGLSurface, EGLint, const(EGLint)*);

    // EGL_NV_native_query
    alias peglQueryNativeDisplayNV = EGLBoolean function(EGLDisplay, EGLNativeDisplayType*);
    alias peglQueryNativeWindowNV = EGLBoolean function(EGLDisplay, EGLSurface, EGLNativeWindowType*);
    alias peglQueryNativePixmapNV = EGLBoolean function(EGLDisplay, EGLSurface, EGLNativePixmapType*);

    // EGL_NV_post_sub_buffer
    alias peglPostSubBufferNV = EGLBoolean function(EGLDisplay, EGLSurface, EGLint, EGLint, EGLint, EGLint);

    // EGL_NV_stream_consumer_gltexture_yuv
    alias peglStreamConsumerGLTextureExternalAttribsNV = EGLBoolean function(EGLDisplay, EGLStreamKHR, const(EGLAttrib)*);

    // EGL_NV_stream_flush
    alias peglStreamFlushNV = EGLBoolean function(EGLDisplay, EGLStreamKHR);

    // EGL_NV_stream_metadata
    alias peglQueryDisplayAttribNV = EGLBoolean function(EGLDisplay, EGLint, EGLAttrib*);
    alias peglSetStreamMetadataNV = EGLBoolean function(EGLDisplay, EGLStreamKHR, EGLint, EGLint, EGLint, const(void)*);
    alias peglQueryStreamMetadataNV = EGLBoolean function(EGLDisplay, EGLStreamKHR, EGLenum, EGLint, EGLint, EGLint, void*);

    // EGL_NV_stream_reset
    alias peglResetStreamNV = EGLBoolean function(EGLDisplay, EGLStreamKHR);

    // EGL_NV_stream_sync
    alias peglCreateStreamSyncNV = EGLSyncKHR function(EGLDisplay, EGLStreamKHR, EGLenum, const(EGLint)*);

    // EGL_NV_sync
    alias peglCreateFenceSyncNV = EGLSyncNV function(EGLDisplay, EGLenum, const(EGLint)*);
    alias peglDestroySyncNV = EGLBoolean function(EGLSyncNV);
    alias peglFenceNV = EGLBoolean function(EGLSyncNV);
    alias peglClientWaitSyncNV = EGLint function(EGLSyncNV, EGLint, EGLTimeNV);
    alias peglSignalSyncNV = EGLBoolean function(EGLSyncNV, EGLenum);
    alias peglGetSyncAttribNV = EGLBoolean function(EGLSyncNV, EGLint, EGLint*);

    // EGL_NV_system_time
    alias peglGetSystemTimeFrequencyNV = EGLuint64NV function();
    alias peglGetSystemTimeNV = EGLuint64NV function();

    // EGL_WL_bind_wayland_display
    alias peglBindWaylandDisplayWL = EGLBoolean function(EGLDisplay, wl_display*);
    alias peglUnbindWaylandDisplayWL = EGLBoolean function(EGLDisplay, wl_display*);
    alias peglQueryWaylandBufferWL = EGLBoolean function(EGLDisplay, wl_resource*, EGLint, EGLint*);

    // EGL_WL_create_wayland_buffer_from_image
    alias peglCreateWaylandBufferFromImageWL = wl_buffer* function(EGLDisplay, EGLImageKHR);
}

__gshared {
    
    // EGL_KHR_cl_event2
    peglCreateSync64KHR eglCreateSync64KHR;

    // EGL_KHR_debug
    peglDebugMessageControlKHR eglDebugMessageControlKHR;
    peglQueryDebugKHR eglQueryDebugKHR;
    peglLabelObjectKHR eglLabelObjectKHR;

    // EGL_KHR_display_reference
    peglQueryDisplayAttribKHR eglQueryDisplayAttribKHR;

    // EGL_KHR_fence_sync
    peglCreateSyncKHR eglCreateSyncKHR;
    peglDestroySyncKHR eglDestroySyncKHR;
    peglClientWaitSyncKHR eglClientWaitSyncKHR;
    peglGetSyncAttribKHR eglGetSyncAttribKHR;

    // EGL_KHR_image
    peglCreateImageKHR eglCreateImageKHR;
    peglDestroyImageKHR eglDestroyImageKHR;

    // EGL_KHR_lock_surface
    peglLockSurfaceKHR eglLockSurfaceKHR;
    peglUnlockSurfaceKHR eglUnlockSurfaceKHR;

    // EGL_KHR_lock_surface3
    peglQuerySurface64KHR eglQuerySurface64KHR;

    // EGL_KHR_partial_update
    peglSetDamageRegionKHR eglSetDamageRegionKHR;

    // EGL_KHR_reusable_sync
    peglSignalSyncKHR eglSignalSyncKHR;

    // EGL_KHR_stream
    peglCreateStreamKHR eglCreateStreamKHR;
    peglDestroyStreamKHR eglDestroyStreamKHR;
    peglStreamAttribKHR eglStreamAttribKHR;
    peglQueryStreamKHR eglQueryStreamKHR;
    peglQueryStreamu64KHR eglQueryStreamu64KHR;

    // EGL_KHR_stream_attrib
    peglCreateStreamAttribKHR eglCreateStreamAttribKHR;
    peglSetStreamAttribKHR eglSetStreamAttribKHR;
    peglQueryStreamAttribKHR eglQueryStreamAttribKHR;
    peglStreamConsumerAcquireAttribKHR eglStreamConsumerAcquireAttribKHR;
    peglStreamConsumerReleaseAttribKHR eglStreamConsumerReleaseAttribKHR;

    // EGL_KHR_stream_consumer_gltexture
    peglStreamConsumerGLTextureExternalKHR eglStreamConsumerGLTextureExternalKHR;
    peglStreamConsumerAcquireKHR eglStreamConsumerAcquireKHR;
    peglStreamConsumerReleaseKHR eglStreamConsumerReleaseKHR;

    // EGL_KHR_stream_cross_process_fd
    peglGetStreamFileDescriptorKHR eglGetStreamFileDescriptorKHR;
    peglCreateStreamFromFileDescriptorKHR eglCreateStreamFromFileDescriptorKHR;

    // EGL_KHR_stream_fifo
    peglQueryStreamTimeKHR eglQueryStreamTimeKHR;

    // EGL_KHR_stream_producer_eglsurface
    peglCreateStreamProducerSurfaceKHR eglCreateStreamProducerSurfaceKHR;

    // EGL_KHR_swap_buffers_with_damage
    peglSwapBuffersWithDamageKHR eglSwapBuffersWithDamageKHR;

    // EGL_KHR_wait_sync
    peglWaitSyncKHR eglWaitSyncKHR;

    // EGL_ANDROID_blob_cache
    peglSetBlobCacheFuncsANDROID eglSetBlobCacheFuncsANDROID;

    // EGL_ANDROID_create_native_client_buffer
    peglCreateNativeClientBufferANDROID eglCreateNativeClientBufferANDROID;

    // EGL_ANDROID_get_frame_timestamps
    peglGetCompositorTimingSupportedANDROID eglGetCompositorTimingSupportedANDROID;
    peglGetCompositorTimingANDROID eglGetCompositorTimingANDROID;
    peglGetNextFrameIdANDROID eglGetNextFrameIdANDROID;
    peglGetFrameTimestampSupportedANDROID eglGetFrameTimestampSupportedANDROID;
    peglGetFrameTimestampsANDROID eglGetFrameTimestampsANDROID;

    // EGL_ANDROID_get_native_client_buffer
    peglGetNativeClientBufferANDROID eglGetNativeClientBufferANDROID;

    // EGL_ANDROID_native_fence_sync
    peglDupNativeFenceFDANDROID eglDupNativeFenceFDANDROID;

    // EGL_ANDROID_presentation_time
    peglPresentationTimeANDROID eglPresentationTimeANDROID;

    // EGL_ANGLE_query_surface_pointer
    peglQuerySurfacePointerANGLE eglQuerySurfacePointerANGLE;

    // EGL_EXT_client_sync
    peglClientSignalSyncEXT eglClientSignalSyncEXT;

    // EGL_EXT_compositor
    peglCompositorSetContextListEXT eglCompositorSetContextListEXT;
    peglCompositorSetContextAttributesEXT eglCompositorSetContextAttributesEXT;
    peglCompositorSetWindowListEXT eglCompositorSetWindowListEXT;
    peglCompositorSetWindowAttributesEXT eglCompositorSetWindowAttributesEXT;
    peglCompositorBindTexWindowEXT eglCompositorBindTexWindowEXT;
    peglCompositorSetSizeEXT eglCompositorSetSizeEXT;
    peglCompositorSwapPolicyEXT eglCompositorSwapPolicyEXT;

    // EGL_EXT_device_base
    peglQueryDeviceAttribEXT eglQueryDeviceAttribEXT;
    peglQueryDeviceStringEXT eglQueryDeviceStringEXT;
    peglQueryDevicesEXT eglQueryDevicesEXT;
    peglQueryDisplayAttribEXT eglQueryDisplayAttribEXT;

    // EGL_EXT_image_dma_buf_import_modifiers
    peglQueryDmaBufFormatsEXT eglQueryDmaBufFormatsEXT;
    peglQueryDmaBufModifiersEXT eglQueryDmaBufModifiersEXT;

    // EGL_EXT_output_base
    peglGetOutputLayersEXT eglGetOutputLayersEXT;
    peglGetOutputPortsEXT eglGetOutputPortsEXT;
    peglOutputLayerAttribEXT eglOutputLayerAttribEXT;
    peglQueryOutputLayerAttribEXT eglQueryOutputLayerAttribEXT;
    peglQueryOutputLayerStringEXT eglQueryOutputLayerStringEXT;
    peglOutputPortAttribEXT eglOutputPortAttribEXT;
    peglQueryOutputPortAttribEXT eglQueryOutputPortAttribEXT;
    peglQueryOutputPortStringEXT eglQueryOutputPortStringEXT;

    // EGL_EXT_platform_base
    peglGetPlatformDisplayEXT eglGetPlatformDisplayEXT;
    peglCreatePlatformWindowSurfaceEXT eglCreatePlatformWindowSurfaceEXT;
    peglCreatePlatformPixmapSurfaceEXT eglCreatePlatformPixmapSurfaceEXT;

    // EGL_EXT_stream_consumer_egloutput
    peglStreamConsumerOutputEXT eglStreamConsumerOutputEXT;

    // EGL_EXT_swap_buffers_with_damage
    peglSwapBuffersWithDamageEXT eglSwapBuffersWithDamageEXT;

    // EGL_EXT_sync_reuse
    peglUnsignalSyncEXT eglUnsignalSyncEXT;

    // EGL_HI_clientpixmap
    peglCreatePixmapSurfaceHI eglCreatePixmapSurfaceHI;

    // EGL_MESA_drm_image
    peglCreateDRMImageMESA eglCreateDRMImageMESA;
    peglExportDRMImageMESA eglExportDRMImageMESA;

    // EGL_MESA_image_dma_buf_export
    peglExportDMABUFImageQueryMESA eglExportDMABUFImageQueryMESA;
    peglExportDMABUFImageMESA eglExportDMABUFImageMESA;

    // EGL_MESA_query_driver
    peglGetDisplayDriverConfig eglGetDisplayDriverConfig;
    peglGetDisplayDriverName eglGetDisplayDriverName;

    // EGL_NOK_swap_region
    peglSwapBuffersRegionNOK eglSwapBuffersRegionNOK;

    // EGL_NOK_swap_region2
    peglSwapBuffersRegion2NOK eglSwapBuffersRegion2NOK;

    // EGL_NV_native_query
    peglQueryNativeDisplayNV eglQueryNativeDisplayNV;
    peglQueryNativeWindowNV eglQueryNativeWindowNV;
    peglQueryNativePixmapNV eglQueryNativePixmapNV;

    // EGL_NV_post_sub_buffer
    peglPostSubBufferNV eglPostSubBufferNV;

    // EGL_NV_stream_consumer_gltexture_yuv
    peglStreamConsumerGLTextureExternalAttribsNV eglStreamConsumerGLTextureExternalAttribsNV;

    // EGL_NV_stream_flush
    peglStreamFlushNV eglStreamFlushNV;

    // EGL_NV_stream_metadata
    peglQueryDisplayAttribNV eglQueryDisplayAttribNV;
    peglSetStreamMetadataNV eglSetStreamMetadataNV;
    peglQueryStreamMetadataNV eglQueryStreamMetadataNV;

    // EGL_NV_stream_reset
    peglResetStreamNV eglResetStreamNV;

    // EGL_NV_stream_sync
    peglCreateStreamSyncNV eglCreateStreamSyncNV;

    // EGL_NV_sync
    peglCreateFenceSyncNV eglCreateFenceSyncNV;
    peglDestroySyncNV eglDestroySyncNV;
    peglFenceNV eglFenceNV;
    peglClientWaitSyncNV eglClientWaitSyncNV;
    peglSignalSyncNV eglSignalSyncNV;
    peglGetSyncAttribNV eglGetSyncAttribNV;

    // EGL_NV_system_time
    peglGetSystemTimeFrequencyNV eglGetSystemTimeFrequencyNV;
    peglGetSystemTimeNV eglGetSystemTimeNV;

    // EGL_WL_bind_wayland_display
    peglBindWaylandDisplayWL eglBindWaylandDisplayWL;
    peglUnbindWaylandDisplayWL eglUnbindWaylandDisplayWL;
    peglQueryWaylandBufferWL eglQueryWaylandBufferWL;

    // EGL_WL_create_wayland_buffer_from_image
    peglCreateWaylandBufferFromImageWL eglCreateWaylandBufferFromImageWL;
}

package(bindbc.gles) @nogc nothrow
bool loadEGLExt(SharedLib lib, EGLDisplay disp){
    auto startErrorCount = errorCount();

    auto extensions = eglQueryString(disp, EGL_EXTENSIONS);
    for (size_t i = 0, j = 0; extensions[i]; ++i)
    {
        if (extensions[i] == ' ' || !extensions[i])
        {
            switch (extensions[j .. i])
            {
                case "EGL_KHR_cl_event2":
                    lib.bindSymbol( cast( void** )&eglCreateSync64KHR, "eglCreateSync64KHR" );
                    eglExtensions.EGL_KHR_cl_event2 = true;
                    break;
                case "EGL_KHR_debug":
                    lib.bindSymbol( cast( void** )&eglDebugMessageControlKHR, "eglDebugMessageControlKHR" );
                    lib.bindSymbol( cast( void** )&eglQueryDebugKHR, "eglQueryDebugKHR" );
                    lib.bindSymbol( cast( void** )&eglLabelObjectKHR, "eglLabelObjectKHR" );
                    eglExtensions.EGL_KHR_debug = true;
                    break;
                case "EGL_KHR_display_reference":
                    lib.bindSymbol( cast( void** )&eglQueryDisplayAttribKHR, "eglQueryDisplayAttribKHR" );
                    eglExtensions.EGL_KHR_display_reference = true;
                    break;
                case "EGL_KHR_fence_sync":
                    lib.bindSymbol( cast( void** )&eglCreateSyncKHR, "eglCreateSyncKHR" );
                    lib.bindSymbol( cast( void** )&eglDestroySyncKHR, "eglDestroySyncKHR" );
                    lib.bindSymbol( cast( void** )&eglClientWaitSyncKHR, "eglClientWaitSyncKHR" );
                    lib.bindSymbol( cast( void** )&eglGetSyncAttribKHR, "eglGetSyncAttribKHR" );
                    eglExtensions.EGL_KHR_fence_sync = true;
                    break;
                case "EGL_KHR_image":
                    lib.bindSymbol( cast( void** )&eglCreateImageKHR, "eglCreateImageKHR" );
                    lib.bindSymbol( cast( void** )&eglDestroyImageKHR, "eglDestroyImageKHR" );
                    eglExtensions.EGL_KHR_image = true;
                    break;
                case "EGL_KHR_lock_surface":
                    lib.bindSymbol( cast( void** )&eglLockSurfaceKHR, "eglLockSurfaceKHR" );
                    lib.bindSymbol( cast( void** )&eglUnlockSurfaceKHR, "eglUnlockSurfaceKHR" );
                    eglExtensions.EGL_KHR_lock_surface = true;
                    break;
                case "EGL_KHR_lock_surface3":
                    lib.bindSymbol( cast( void** )&eglQuerySurface64KHR, "eglQuerySurface64KHR" );
                    eglExtensions.EGL_KHR_lock_surface3 = true;
                    break;
                case "EGL_KHR_partial_update":
                    lib.bindSymbol( cast( void** )&eglSetDamageRegionKHR, "eglSetDamageRegionKHR" );
                    eglExtensions.EGL_KHR_partial_update = true;
                    break;
                case "EGL_KHR_reusable_sync":
                    lib.bindSymbol( cast( void** )&eglSignalSyncKHR, "eglSignalSyncKHR" );
                    eglExtensions.EGL_KHR_reusable_sync = true;
                    break;
                case "EGL_KHR_stream":
                    lib.bindSymbol( cast( void** )&eglCreateStreamKHR, "eglCreateStreamKHR" );
                    lib.bindSymbol( cast( void** )&eglDestroyStreamKHR, "eglDestroyStreamKHR" );
                    lib.bindSymbol( cast( void** )&eglStreamAttribKHR, "eglStreamAttribKHR" );
                    lib.bindSymbol( cast( void** )&eglQueryStreamKHR, "eglQueryStreamKHR" );
                    lib.bindSymbol( cast( void** )&eglQueryStreamu64KHR, "eglQueryStreamu64KHR" );
                    eglExtensions.EGL_KHR_stream = true;
                    break;
                case "EGL_KHR_stream_attrib":
                    lib.bindSymbol( cast( void** )&eglCreateStreamAttribKHR, "eglCreateStreamAttribKHR" );
                    lib.bindSymbol( cast( void** )&eglSetStreamAttribKHR, "eglSetStreamAttribKHR" );
                    lib.bindSymbol( cast( void** )&eglQueryStreamAttribKHR, "eglQueryStreamAttribKHR" );
                    lib.bindSymbol( cast( void** )&eglStreamConsumerAcquireAttribKHR, "eglStreamConsumerAcquireAttribKHR" );
                    lib.bindSymbol( cast( void** )&eglStreamConsumerReleaseAttribKHR, "eglStreamConsumerReleaseAttribKHR" );
                    eglExtensions.EGL_KHR_stream_attrib = true;
                    break;
                case "EGL_KHR_stream_consumer_gltexture":
                    lib.bindSymbol( cast( void** )&eglStreamConsumerGLTextureExternalKHR, "eglStreamConsumerGLTextureExternalKHR" );
                    lib.bindSymbol( cast( void** )&eglStreamConsumerAcquireKHR, "eglStreamConsumerAcquireKHR" );
                    lib.bindSymbol( cast( void** )&eglStreamConsumerReleaseKHR, "eglStreamConsumerReleaseKHR" );
                    eglExtensions.EGL_KHR_stream_consumer_gltexture = true;
                    break;
                case "EGL_KHR_stream_cross_process_fd":
                    lib.bindSymbol( cast( void** )&eglGetStreamFileDescriptorKHR, "eglGetStreamFileDescriptorKHR" );
                    lib.bindSymbol( cast( void** )&eglCreateStreamFromFileDescriptorKHR, "eglCreateStreamFromFileDescriptorKHR" );
                    eglExtensions.EGL_KHR_stream_cross_process_fd = true;
                    break;
                case "EGL_KHR_stream_fifo":
                    lib.bindSymbol( cast( void** )&eglQueryStreamTimeKHR, "eglQueryStreamTimeKHR" );
                    eglExtensions.EGL_KHR_stream_fifo = true;
                    break;
                case "EGL_KHR_stream_producer_eglsurface":
                    lib.bindSymbol( cast( void** )&eglCreateStreamProducerSurfaceKHR, "eglCreateStreamProducerSurfaceKHR" );
                    eglExtensions.EGL_KHR_stream_producer_eglsurface = true;
                    break;
                case "EGL_KHR_swap_buffers_with_damage":
                    lib.bindSymbol( cast( void** )&eglSwapBuffersWithDamageKHR, "eglSwapBuffersWithDamageKHR" );
                    eglExtensions.EGL_KHR_swap_buffers_with_damage = true;
                    break;
                case "EGL_KHR_wait_sync":
                    lib.bindSymbol( cast( void** )&eglWaitSyncKHR, "eglWaitSyncKHR" );
                    eglExtensions.EGL_KHR_wait_sync = true;
                    break;
                case "EGL_ANDROID_blob_cache":
                    lib.bindSymbol( cast( void** )&eglSetBlobCacheFuncsANDROID, "eglSetBlobCacheFuncsANDROID" );
                    eglExtensions.EGL_ANDROID_blob_cache = true;
                    break;
                case "EGL_ANDROID_create_native_client_buffer":
                    lib.bindSymbol( cast( void** )&eglCreateNativeClientBufferANDROID, "eglCreateNativeClientBufferANDROID" );
                    eglExtensions.EGL_ANDROID_create_native_client_buffer = true;
                    break;
                case "EGL_ANDROID_get_frame_timestamps":
                    lib.bindSymbol( cast( void** )&eglGetCompositorTimingSupportedANDROID, "eglGetCompositorTimingSupportedANDROID" );
                    lib.bindSymbol( cast( void** )&eglGetCompositorTimingANDROID, "eglGetCompositorTimingANDROID" );
                    lib.bindSymbol( cast( void** )&eglGetNextFrameIdANDROID, "eglGetNextFrameIdANDROID" );
                    lib.bindSymbol( cast( void** )&eglGetFrameTimestampSupportedANDROID, "eglGetFrameTimestampSupportedANDROID" );
                    lib.bindSymbol( cast( void** )&eglGetFrameTimestampsANDROID, "eglGetFrameTimestampsANDROID" );
                    eglExtensions.EGL_ANDROID_get_frame_timestamps = true;
                    break;
                case "EGL_ANDROID_get_native_client_buffer":
                    lib.bindSymbol( cast( void** )&eglGetNativeClientBufferANDROID, "eglGetNativeClientBufferANDROID" );
                    eglExtensions.EGL_ANDROID_get_native_client_buffer = true;
                    break;
                case "EGL_ANDROID_native_fence_sync":
                    lib.bindSymbol( cast( void** )&eglDupNativeFenceFDANDROID, "eglDupNativeFenceFDANDROID" );
                    eglExtensions.EGL_ANDROID_native_fence_sync = true;
                    break;
                case "EGL_ANDROID_presentation_time":
                    lib.bindSymbol( cast( void** )&eglPresentationTimeANDROID, "eglPresentationTimeANDROID" );
                    eglExtensions.EGL_ANDROID_presentation_time = true;
                    break;
                case "EGL_ANGLE_query_surface_pointer":
                    lib.bindSymbol( cast( void** )&eglQuerySurfacePointerANGLE, "eglQuerySurfacePointerANGLE" );
                    eglExtensions.EGL_ANGLE_query_surface_pointer = true;
                    break;
                case "EGL_EXT_client_sync":
                    lib.bindSymbol( cast( void** )&eglClientSignalSyncEXT, "eglClientSignalSyncEXT" );
                    eglExtensions.EGL_EXT_client_sync = true;
                    break;
                case "EGL_EXT_compositor":
                    lib.bindSymbol( cast( void** )&eglCompositorSetContextListEXT, "eglCompositorSetContextListEXT" );
                    lib.bindSymbol( cast( void** )&eglCompositorSetContextAttributesEXT, "eglCompositorSetContextAttributesEXT" );
                    lib.bindSymbol( cast( void** )&eglCompositorSetWindowListEXT, "eglCompositorSetWindowListEXT" );
                    lib.bindSymbol( cast( void** )&eglCompositorSetWindowAttributesEXT, "eglCompositorSetWindowAttributesEXT" );
                    lib.bindSymbol( cast( void** )&eglCompositorBindTexWindowEXT, "eglCompositorBindTexWindowEXT" );
                    lib.bindSymbol( cast( void** )&eglCompositorSetSizeEXT, "eglCompositorSetSizeEXT" );
                    lib.bindSymbol( cast( void** )&eglCompositorSwapPolicyEXT, "eglCompositorSwapPolicyEXT" );
                    eglExtensions.EGL_EXT_compositor = true;
                    break;
                case "EGL_EXT_device_base":
                    lib.bindSymbol( cast( void** )&eglQueryDeviceAttribEXT, "eglQueryDeviceAttribEXT" );
                    lib.bindSymbol( cast( void** )&eglQueryDeviceStringEXT, "eglQueryDeviceStringEXT" );
                    lib.bindSymbol( cast( void** )&eglQueryDevicesEXT, "eglQueryDevicesEXT" );
                    lib.bindSymbol( cast( void** )&eglQueryDisplayAttribEXT, "eglQueryDisplayAttribEXT" );
                    eglExtensions.EGL_EXT_device_base = true;
                    break;
                case "EGL_EXT_image_dma_buf_import_modifiers":
                    lib.bindSymbol( cast( void** )&eglQueryDmaBufFormatsEXT, "eglQueryDmaBufFormatsEXT" );
                    lib.bindSymbol( cast( void** )&eglQueryDmaBufModifiersEXT, "eglQueryDmaBufModifiersEXT" );
                    eglExtensions.EGL_EXT_image_dma_buf_import_modifiers = true;
                    break;
                case "EGL_EXT_output_base":
                    lib.bindSymbol( cast( void** )&eglGetOutputLayersEXT, "eglGetOutputLayersEXT" );
                    lib.bindSymbol( cast( void** )&eglGetOutputPortsEXT, "eglGetOutputPortsEXT" );
                    lib.bindSymbol( cast( void** )&eglOutputLayerAttribEXT, "eglOutputLayerAttribEXT" );
                    lib.bindSymbol( cast( void** )&eglQueryOutputLayerAttribEXT, "eglQueryOutputLayerAttribEXT" );
                    lib.bindSymbol( cast( void** )&eglQueryOutputLayerStringEXT, "eglQueryOutputLayerStringEXT" );
                    lib.bindSymbol( cast( void** )&eglOutputPortAttribEXT, "eglOutputPortAttribEXT" );
                    lib.bindSymbol( cast( void** )&eglQueryOutputPortAttribEXT, "eglQueryOutputPortAttribEXT" );
                    lib.bindSymbol( cast( void** )&eglQueryOutputPortStringEXT, "eglQueryOutputPortStringEXT" );
                    eglExtensions.EGL_EXT_output_base = true;
                    break;
                case "EGL_EXT_platform_base":
                    lib.bindSymbol( cast( void** )&eglGetPlatformDisplayEXT, "eglGetPlatformDisplayEXT" );
                    lib.bindSymbol( cast( void** )&eglCreatePlatformWindowSurfaceEXT, "eglCreatePlatformWindowSurfaceEXT" );
                    lib.bindSymbol( cast( void** )&eglCreatePlatformPixmapSurfaceEXT, "eglCreatePlatformPixmapSurfaceEXT" );
                    eglExtensions.EGL_EXT_platform_base = true;
                    break;
                case "EGL_EXT_stream_consumer_egloutput":
                    lib.bindSymbol( cast( void** )&eglStreamConsumerOutputEXT, "eglStreamConsumerOutputEXT" );
                    eglExtensions.EGL_EXT_stream_consumer_egloutput = true;
                    break;
                case "EGL_EXT_swap_buffers_with_damage":
                    lib.bindSymbol( cast( void** )&eglSwapBuffersWithDamageEXT, "eglSwapBuffersWithDamageEXT" );
                    eglExtensions.EGL_EXT_swap_buffers_with_damage = true;
                    break;
                case "EGL_EXT_sync_reuse":
                    lib.bindSymbol( cast( void** )&eglUnsignalSyncEXT, "eglUnsignalSyncEXT" );
                    eglExtensions.EGL_EXT_sync_reuse = true;
                    break;
                case "EGL_HI_clientpixmap":
                    lib.bindSymbol( cast( void** )&eglCreatePixmapSurfaceHI, "eglCreatePixmapSurfaceHI" );
                    eglExtensions.EGL_HI_clientpixmap = true;
                    break;
                case "EGL_MESA_drm_image":
                    lib.bindSymbol( cast( void** )&eglCreateDRMImageMESA, "eglCreateDRMImageMESA" );
                    lib.bindSymbol( cast( void** )&eglExportDRMImageMESA, "eglExportDRMImageMESA" );
                    eglExtensions.EGL_MESA_drm_image = true;
                    break;
                case "EGL_MESA_image_dma_buf_export":
                    lib.bindSymbol( cast( void** )&eglExportDMABUFImageQueryMESA, "eglExportDMABUFImageQueryMESA" );
                    lib.bindSymbol( cast( void** )&eglExportDMABUFImageMESA, "eglExportDMABUFImageMESA" );
                    eglExtensions.EGL_MESA_image_dma_buf_export = true;
                    break;
                case "EGL_MESA_query_driver":
                    lib.bindSymbol( cast( void** )&eglGetDisplayDriverConfig, "eglGetDisplayDriverConfig" );
                    lib.bindSymbol( cast( void** )&eglGetDisplayDriverName, "eglGetDisplayDriverName" );
                    eglExtensions.EGL_MESA_query_driver = true;
                    break;
                case "EGL_NOK_swap_region":
                    lib.bindSymbol( cast( void** )&eglSwapBuffersRegionNOK, "eglSwapBuffersRegionNOK" );
                    eglExtensions.EGL_NOK_swap_region = true;
                    break;
                case "EGL_NOK_swap_region2":
                    lib.bindSymbol( cast( void** )&eglSwapBuffersRegion2NOK, "eglSwapBuffersRegion2NOK" );
                    eglExtensions.EGL_NOK_swap_region2 = true;
                    break;
                case "EGL_NV_native_query":
                    lib.bindSymbol( cast( void** )&eglQueryNativeDisplayNV, "eglQueryNativeDisplayNV" );
                    lib.bindSymbol( cast( void** )&eglQueryNativeWindowNV, "eglQueryNativeWindowNV" );
                    lib.bindSymbol( cast( void** )&eglQueryNativePixmapNV, "eglQueryNativePixmapNV" );
                    eglExtensions.EGL_NV_native_query = true;
                    break;
                case "EGL_NV_post_sub_buffer":
                    lib.bindSymbol( cast( void** )&eglPostSubBufferNV, "eglPostSubBufferNV" );
                    eglExtensions.EGL_NV_post_sub_buffer = true;
                    break;
                case "EGL_NV_stream_consumer_gltexture_yuv":
                    lib.bindSymbol( cast( void** )&eglStreamConsumerGLTextureExternalAttribsNV, "eglStreamConsumerGLTextureExternalAttribsNV" );
                    eglExtensions.EGL_NV_stream_consumer_gltexture_yuv = true;
                    break;
                case "EGL_NV_stream_flush":
                    lib.bindSymbol( cast( void** )&eglStreamFlushNV, "eglStreamFlushNV" );
                    eglExtensions.EGL_NV_stream_flush = true;
                    break;
                case "EGL_NV_stream_metadata":
                    lib.bindSymbol( cast( void** )&eglQueryDisplayAttribNV, "eglQueryDisplayAttribNV" );
                    lib.bindSymbol( cast( void** )&eglSetStreamMetadataNV, "eglSetStreamMetadataNV" );
                    lib.bindSymbol( cast( void** )&eglQueryStreamMetadataNV, "eglQueryStreamMetadataNV" );
                    eglExtensions.EGL_NV_stream_metadata = true;
                    break;
                case "EGL_NV_stream_reset":
                    lib.bindSymbol( cast( void** )&eglResetStreamNV, "eglResetStreamNV" );
                    eglExtensions.EGL_NV_stream_reset = true;
                    break;
                case "EGL_NV_stream_sync":
                    lib.bindSymbol( cast( void** )&eglCreateStreamSyncNV, "eglCreateStreamSyncNV" );
                    eglExtensions.EGL_NV_stream_sync = true;
                    break;
                case "EGL_NV_sync":
                    lib.bindSymbol( cast( void** )&eglCreateFenceSyncNV, "eglCreateFenceSyncNV" );
                    lib.bindSymbol( cast( void** )&eglDestroySyncNV, "eglDestroySyncNV" );
                    lib.bindSymbol( cast( void** )&eglFenceNV, "eglFenceNV" );
                    lib.bindSymbol( cast( void** )&eglClientWaitSyncNV, "eglClientWaitSyncNV" );
                    lib.bindSymbol( cast( void** )&eglSignalSyncNV, "eglSignalSyncNV" );
                    lib.bindSymbol( cast( void** )&eglGetSyncAttribNV, "eglGetSyncAttribNV" );
                    eglExtensions.EGL_NV_sync = true;
                    break;
                case "EGL_NV_system_time":
                    lib.bindSymbol( cast( void** )&eglGetSystemTimeFrequencyNV, "eglGetSystemTimeFrequencyNV" );
                    lib.bindSymbol( cast( void** )&eglGetSystemTimeNV, "eglGetSystemTimeNV" );
                    eglExtensions.EGL_NV_system_time = true;
                    break;
                case "EGL_WL_bind_wayland_display":
                    lib.bindSymbol( cast( void** )&eglBindWaylandDisplayWL, "eglBindWaylandDisplayWL" );
                    lib.bindSymbol( cast( void** )&eglUnbindWaylandDisplayWL, "eglUnbindWaylandDisplayWL" );
                    lib.bindSymbol( cast( void** )&eglQueryWaylandBufferWL, "eglQueryWaylandBufferWL" );
                    eglExtensions.EGL_WL_bind_wayland_display = true;
                    break;
                case "EGL_WL_create_wayland_buffer_from_image":
                    lib.bindSymbol( cast( void** )&eglCreateWaylandBufferFromImageWL, "eglCreateWaylandBufferFromImageWL" );
                    eglExtensions.EGL_WL_create_wayland_buffer_from_image = true;
                    break;
                default:
                    break;
            }
        }
    }

    return(errorCount() == startErrorCount);
}