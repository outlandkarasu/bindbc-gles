// Copyright Danny Arends 2020.
// Distributed under the Boost Software License, Version 1.0.
// (See: http://www.boost.org/LICENSE_1_0.txt)

module bindbc.gles.egl;

import bindbc.loader;
public import bindbc.gles.config,
              bindbc.gles.egltypes;

enum: uint {
    EGL_ALPHA_SIZE = 0x3021,
    EGL_BAD_ACCESS = 0x3002,
    EGL_BAD_ALLOC = 0x3003,
    EGL_BAD_ATTRIBUTE = 0x3004,
    EGL_BAD_CONFIG = 0x3005,
    EGL_BAD_CONTEXT = 0x3006,
    EGL_BAD_CURRENT_SURFACE = 0x3007,
    EGL_BAD_DISPLAY = 0x3008,
    EGL_BAD_MATCH = 0x3009,
    EGL_BAD_NATIVE_PIXMAP = 0x300A,
    EGL_BAD_NATIVE_WINDOW = 0x300B,
    EGL_BAD_PARAMETER = 0x300C,
    EGL_BAD_SURFACE = 0x300D,
    EGL_BLUE_SIZE = 0x3022,
    EGL_BUFFER_SIZE = 0x3020,
    EGL_CONFIG_CAVEAT = 0x3027,
    EGL_CONFIG_ID = 0x3028,
    EGL_CORE_NATIVE_ENGINE = 0x305B,
    EGL_DEPTH_SIZE = 0x3025,
    EGL_DRAW = 0x3059,
    EGL_EXTENSIONS = 0x3055,
    EGL_FALSE = 0,
    EGL_GREEN_SIZE = 0x3023,
    EGL_HEIGHT = 0x3056,
    EGL_LARGEST_PBUFFER = 0x3058,
    EGL_LEVEL = 0x3029,
    EGL_MAX_PBUFFER_HEIGHT = 0x302A,
    EGL_MAX_PBUFFER_PIXELS = 0x302B,
    EGL_MAX_PBUFFER_WIDTH = 0x302C,
    EGL_NATIVE_RENDERABLE = 0x302D,
    EGL_NATIVE_VISUAL_ID = 0x302E,
    EGL_NATIVE_VISUAL_TYPE = 0x302F,
    EGL_NONE = 0x3038,
    EGL_NON_CONFORMANT_CONFIG = 0x3051,
    EGL_NOT_INITIALIZED = 0x3001,
    EGL_PBUFFER_BIT = 0x0001,
    EGL_PIXMAP_BIT = 0x0002,
    EGL_READ = 0x305A,
    EGL_RED_SIZE = 0x3024,
    EGL_SAMPLES = 0x3031,
    EGL_SAMPLE_BUFFERS = 0x3032,
    EGL_SLOW_CONFIG = 0x3050,
    EGL_STENCIL_SIZE = 0x3026,
    EGL_SUCCESS = 0x3000,
    EGL_SURFACE_TYPE = 0x3033,
    EGL_TRANSPARENT_BLUE_VALUE = 0x3035,
    EGL_TRANSPARENT_GREEN_VALUE = 0x3036,
    EGL_TRANSPARENT_RED_VALUE = 0x3037,
    EGL_TRANSPARENT_RGB = 0x3052,
    EGL_TRANSPARENT_TYPE = 0x3034,
    EGL_TRUE = 1,
    EGL_VENDOR = 0x3053,
    EGL_VERSION = 0x3054,
    EGL_WIDTH = 0x3057,
    EGL_WINDOW_BIT = 0x0004,
}

enum EGLint EGL_DONT_CARE = -1;

enum EGLNativeDisplayType EGL_DEFAULT_DISPLAY = cast(EGLNativeDisplayType)0;
enum EGLContext EGL_NO_CONTEXT = null;
enum EGLDisplay EGL_NO_DISPLAY = null;
enum EGLSurface EGL_NO_SURFACE = null;

struct ANativeWindow;
struct egl_native_pixmap_t;

alias EGLNativeWindowType = ANativeWindow*;
alias EGLNativePixmapType = egl_native_pixmap_t*;
alias EGLNativeDisplayType = void*;

private {
    SharedLib lib;
    EGLSupport contextVersion = EGLSupport.noContext;
    EGLSupport loadedVersion = EGLSupport.noContext;
    EGLint major;
    EGLint minor;
}

@nogc nothrow:

void unloadEGL()
{
    if(lib != invalidHandle) {
        lib.unload();
        contextVersion = loadedVersion = EGLSupport.noContext;
    }
}

EGLSupport loadEGL()
{
    version(Windows) {
        const(char)[][1] libNames = ["libegl.dll"];
    }
    else version(Posix) {
        const(char)[][2] libNames = [
            "libEGL.so.1",
            "libEGL.so"
        ];
    }
    else static assert(0, "bindbc-gles is not yet supported on this platform");

    EGLSupport ret;
    foreach(name; libNames) {
        ret = loadEGL(name.ptr);
        if(ret != EGLSupport.noLibrary) break;
    }
    return ret;
}

EGLSupport loadEGL(const(char)* libName)
{
    // If the library isn't yet loaded, load it now.
    if(lib == invalidHandle) {
        lib = load(libName);
        if(lib == invalidHandle) {
            return EGLSupport.noLibrary;
        }
    }
    if(!lib.loadEGL()) return EGLSupport.badLibrary;
    return loadedVersion;
}

EGLExtSupport loadEGLExt(EGLDisplay disp = EGL_NO_DISPLAY)
{
    if(lib == invalidHandle) {
        return EGLExtSupport.noLibrary;
    }

    static import bindbc.gles.eglext;
    if(!bindbc.gles.eglext.loadEGLExt(lib, disp)) return EGLExtSupport.badLibrary;
    return EGLExtSupport.EGLExt;
}

extern(System) @nogc nothrow {
    // V1.0
    alias peglGetError = void function(  );
    alias peglGetDisplay = EGLDisplay function( EGLNativeDisplayType );
    alias peglInitialize = EGLBoolean function( EGLDisplay, EGLint*, EGLint* );
    alias peglTerminate = EGLBoolean function( EGLDisplay );
    alias peglQueryString = const( char )* function( EGLDisplay, EGLint );
    alias peglGetConfigs = EGLBoolean function( EGLDisplay, EGLConfig*, EGLint, EGLint* );
    alias peglChooseConfig = EGLBoolean function( EGLDisplay, const( EGLint )*, EGLConfig*, EGLint, EGLint* );
    alias peglGetConfigAttrib = EGLBoolean function( EGLDisplay, EGLConfig, EGLint, EGLint* );
    alias peglCreateWindowSurface = EGLSurface function( EGLDisplay, EGLConfig, EGLNativeWindowType, const( EGLint )* );
    alias peglCreatePbufferSurface = EGLSurface function( EGLDisplay, EGLConfig, const( EGLint )* );
    alias peglCreatePixmapSurface = EGLSurface function( EGLDisplay, EGLConfig, EGLNativePixmapType, const( EGLint )* );
    alias peglDestroySurface = EGLBoolean function( EGLDisplay, EGLSurface );
    alias peglQuerySurface = EGLBoolean function( EGLDisplay, EGLSurface, EGLint, EGLint* );
    alias peglCreateContext = EGLContext function( EGLDisplay, EGLConfig, EGLContext, const( EGLint )* );
    alias peglDestroyContext = EGLBoolean function( EGLDisplay, EGLContext );
    alias peglMakeCurrent = EGLBoolean function( EGLDisplay, EGLSurface, EGLSurface, EGLContext );
    alias peglGetCurrentSurface = EGLSurface function( EGLint );
    alias peglGetCurrentDisplay = EGLDisplay function(  );
    alias peglQueryContext = EGLBoolean function( EGLDisplay, EGLContext, EGLint, EGLint* );
    alias peglWaitGL = EGLBoolean function(  );
    alias peglWaitNative = EGLBoolean function( EGLint );
    alias peglSwapBuffers = EGLBoolean function( EGLDisplay, EGLSurface );
    alias peglCopyBuffers = EGLBoolean function( EGLDisplay, EGLSurface, EGLNativePixmapType );
    /* This is a generic function pointer type, whose name indicates it must be cast to the proper type *and calling convention* before use. */
    alias __eglMustCastToProperFunctionPointerType = void function(  );
    /* Now, define eglGetProcAddress using the generic function ptr. type */
    alias peglGetProcAddress = __eglMustCastToProperFunctionPointerType function( const( char )* );

    //V1.1
    alias peglSurfaceAttrib = EGLBoolean function( EGLDisplay, EGLSurface, EGLint, EGLint );
    alias peglBindTexImage = EGLBoolean function( EGLDisplay, EGLSurface, EGLint );
    alias peglReleaseTexImage = EGLBoolean function( EGLDisplay, EGLSurface, EGLint );
    alias peglSwapInterval = EGLBoolean function( EGLDisplay, EGLint );

    //V1.2
    alias peglBindAPI = EGLBoolean function( EGLenum );
    alias peglQueryAPI = EGLenum function(  );
    alias peglWaitClient = EGLBoolean function(  );
    alias peglReleaseThread = EGLBoolean function(  );
    alias peglCreatePbufferFromClientBuffer = EGLSurface function( EGLDisplay, EGLenum, EGLClientBuffer, EGLConfig, const( EGLint )* );
    
    //V1.4
    alias peglGetCurrentContext = EGLContext function(  );
    
    //V1.5
    alias peglCreateSync = EGLSync function ( EGLDisplay, EGLenum, const( EGLAttrib )* );
    alias peglDestroySync = EGLBoolean function ( EGLDisplay, EGLSync );
    alias peglClientWaitSync = EGLint function ( EGLDisplay, EGLSync, EGLint, EGLTime );
    alias peglGetSyncAttrib = EGLBoolean function ( EGLDisplay, EGLSync, EGLint, EGLAttrib* );
    alias peglGetPlatformDisplay = EGLDisplay function ( EGLenum, void*, const( EGLAttrib )* );
    alias peglCreatePlatformWindowSurface = EGLSurface function ( EGLDisplay, EGLConfig, void*, const( EGLAttrib )* );
    alias peglCreatePlatformPixmapSurface = EGLSurface function ( EGLDisplay, EGLConfig, void*, const( EGLAttrib )* );
    alias peglWaitSync = EGLBoolean function ( EGLDisplay, EGLSync, EGLint );
}

__gshared {
    peglGetError eglGetError;
    peglGetDisplay eglGetDisplay;
    peglInitialize eglInitialize;
    peglTerminate eglTerminate;
    
    peglQueryString eglQueryString;
    peglGetConfigs eglGetConfigs;
    peglChooseConfig eglChooseConfig;
    peglGetConfigAttrib eglGetConfigAttrib;
    peglCreateWindowSurface eglCreateWindowSurface;
    peglCreatePbufferSurface eglCreatePbufferSurface;
    peglCreatePixmapSurface eglCreatePixmapSurface;
    peglDestroySurface eglDestroySurface;
    peglQuerySurface eglQuerySurface;
    peglCreateContext eglCreateContext;
    peglDestroyContext eglDestroyContext;
    peglMakeCurrent eglMakeCurrent;
    peglGetCurrentSurface eglGetCurrentSurface;
    peglGetCurrentDisplay eglGetCurrentDisplay;
    peglQueryContext eglQueryContext;
    peglWaitGL eglWaitGL;
    peglWaitNative eglWaitNative;
    peglSwapBuffers eglSwapBuffers;
    peglCopyBuffers eglCopyBuffers;
    peglGetProcAddress eglGetProcAddress;
    
    peglSurfaceAttrib eglSurfaceAttrib;
    peglBindTexImage eglBindTexImage;
    peglReleaseTexImage eglReleaseTexImage;
    peglSwapInterval eglSwapInterval;

    peglBindAPI eglBindAPI;
    peglQueryAPI eglQueryAPI;
    peglWaitClient eglWaitClient;
    peglReleaseThread eglReleaseThread;
    peglCreatePbufferFromClientBuffer eglCreatePbufferFromClientBuffer;

    peglGetCurrentContext eglGetCurrentContext;
    
    peglCreateSync eglCreateSync;
    peglDestroySync eglDestroySync;
    peglClientWaitSync eglClientWaitSync;
    peglGetSyncAttrib eglGetSyncAttrib;
    peglGetPlatformDisplay eglGetPlatformDisplay;
    peglCreatePlatformWindowSurface eglCreatePlatformWindowSurface;
    peglCreatePlatformPixmapSurface eglCreatePlatformPixmapSurface;
    peglWaitSync eglWaitSync;
}

package(bindbc.gles) @nogc nothrow
bool loadEGL(SharedLib lib){
    auto startErrorCount = errorCount();
    lib.bindSymbol( cast( void** )&eglGetError, "eglGetError" );
    lib.bindSymbol( cast( void** )&eglGetDisplay, "eglGetDisplay" );
    lib.bindSymbol( cast( void** )&eglInitialize, "eglInitialize" );
    lib.bindSymbol( cast( void** )&eglTerminate, "eglTerminate" );
    
    EGLDisplay disp = eglGetDisplay( EGL_DEFAULT_DISPLAY );
    if( disp == EGL_NO_DISPLAY ) {
        assert(0, "Unable to get a display for EGL");
    }

    if( eglInitialize( disp, &major, &minor ) == EGL_FALSE ) {
      //assert( "Failed to initialize the EGL display: " ~ to!string( eglGetError(  ) ) );
    }
    if( major != 1 ) {
      eglTerminate( disp );
      //assert( "The EGL version is not recognized: " ~ to!string( eglGetError(  ) ) );
    }

    if( minor >= 0 ) {
        lib.bindSymbol( cast( void** )&eglQueryString, "eglQueryString" );
        lib.bindSymbol( cast( void** )&eglGetConfigs, "eglGetConfigs" );
        lib.bindSymbol( cast( void** )&eglChooseConfig, "eglChooseConfig" );
        lib.bindSymbol( cast( void** )&eglGetConfigAttrib, "eglGetConfigAttrib" );
        lib.bindSymbol( cast( void** )&eglCreateWindowSurface, "eglCreateWindowSurface" );
        lib.bindSymbol( cast( void** )&eglCreatePbufferSurface, "eglCreatePbufferSurface" );
        lib.bindSymbol( cast( void** )&eglCreatePixmapSurface, "eglCreatePixmapSurface" );
        lib.bindSymbol( cast( void** )&eglDestroySurface, "eglDestroySurface" );
        lib.bindSymbol( cast( void** )&eglQuerySurface, "eglQuerySurface" );
        lib.bindSymbol( cast( void** )&eglCreateContext, "eglCreateContext" );
        lib.bindSymbol( cast( void** )&eglDestroyContext, "eglDestroyContext" );
        lib.bindSymbol( cast( void** )&eglMakeCurrent, "eglMakeCurrent" );
        lib.bindSymbol( cast( void** )&eglGetCurrentSurface, "eglGetCurrentSurface" );
        lib.bindSymbol( cast( void** )&eglGetCurrentDisplay, "eglGetCurrentDisplay" );
        lib.bindSymbol( cast( void** )&eglQueryContext, "eglQueryContext" );
        lib.bindSymbol( cast( void** )&eglWaitGL, "eglWaitGL" );
        lib.bindSymbol( cast( void** )&eglWaitNative, "eglWaitNative" );
        lib.bindSymbol( cast( void** )&eglSwapBuffers, "eglSwapBuffers" );
        lib.bindSymbol( cast( void** )&eglCopyBuffers, "eglCopyBuffers" );
        lib.bindSymbol( cast( void** )&eglGetProcAddress, "eglGetProcAddress" );
        loadedVersion = EGLSupport.EGL10;
    }
    if( minor >= 1 ) {
        lib.bindSymbol( cast( void** )&eglSurfaceAttrib, "eglSurfaceAttrib" );
        lib.bindSymbol( cast( void** )&eglBindTexImage, "eglBindTexImage" );
        lib.bindSymbol( cast( void** )&eglReleaseTexImage, "eglReleaseTexImage" );
        lib.bindSymbol( cast( void** )&eglSwapInterval, "eglSwapInterval" );
        loadedVersion = EGLSupport.EGL11;
    }
    if( minor >= 2 ) {
        lib.bindSymbol( cast( void** )&eglBindAPI, "eglBindAPI" );
        lib.bindSymbol( cast( void** )&eglQueryAPI, "eglQueryAPI" );
        lib.bindSymbol( cast( void** )&eglWaitClient, "eglWaitClient" );
        lib.bindSymbol( cast( void** )&eglReleaseThread, "eglReleaseThread" );
        lib.bindSymbol( cast( void** )&eglCreatePbufferFromClientBuffer, "eglCreatePbufferFromClientBuffer" );
        loadedVersion = EGLSupport.EGL12;
    }
    if( minor >= 3 ) {
        loadedVersion = EGLSupport.EGL13;
    }
    if( minor >= 4 ) {
        lib.bindSymbol( cast( void** )&eglGetCurrentContext, "eglGetCurrentContext" );
        loadedVersion = EGLSupport.EGL14;
    }
    if( minor >= 5 ) {
        lib.bindSymbol( cast( void** )&eglCreateSync, "eglCreateSync" );
        lib.bindSymbol( cast( void** )&eglDestroySync, "eglDestroySync" );
        lib.bindSymbol( cast( void** )&eglClientWaitSync, "eglClientWaitSync" );
        lib.bindSymbol( cast( void** )&eglGetSyncAttrib, "eglGetSyncAttrib" );
        lib.bindSymbol( cast( void** )&eglGetPlatformDisplay, "eglGetPlatformDisplay" );
        lib.bindSymbol( cast( void** )&eglCreatePlatformWindowSurface, "eglCreatePlatformWindowSurface" );
        lib.bindSymbol( cast( void** )&eglCreatePlatformPixmapSurface, "eglCreatePlatformPixmapSurface" );
        lib.bindSymbol( cast( void** )&eglWaitSync, "eglWaitSync" );
        loadedVersion = EGLSupport.EGL14;
    }
    return(errorCount() == startErrorCount);
}
EGLint EGLversionMajor() { return major; }
EGLint EGLversionMinor() { return minor; }

package:
    SharedLib libGLES() { return lib; }
