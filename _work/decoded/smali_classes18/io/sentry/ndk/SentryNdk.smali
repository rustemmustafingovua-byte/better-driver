.class public final Lio/sentry/ndk/SentryNdk;
.super Ljava/lang/Object;
.source "SentryNdk.java"


# static fields
.field private static volatile nativeLibrariesLoaded:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close()V
    .locals 0

    .line 60
    invoke-static {}, Lio/sentry/ndk/SentryNdk;->loadNativeLibraries()V

    .line 61
    invoke-static {}, Lio/sentry/ndk/SentryNdk;->shutdown()V

    .line 62
    return-void
.end method

.method public static init(Lio/sentry/ndk/NdkOptions;)V
    .locals 3
    .param p0, "options"    # Lio/sentry/ndk/NdkOptions;

    .line 48
    invoke-static {}, Lio/sentry/ndk/SentryNdk;->loadNativeLibraries()V

    .line 49
    invoke-static {p0}, Lio/sentry/ndk/SentryNdk;->initSentryNative(Lio/sentry/ndk/NdkOptions;)I

    move-result v0

    .line 50
    .local v0, "returnCode":I
    if-gtz v0, :cond_1

    .line 53
    if-ltz v0, :cond_0

    .line 56
    return-void

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A sentry-native setup failure occurred"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A sentry-native internal init error occurred, please check the logs for more details."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native initSentryNative(Lio/sentry/ndk/NdkOptions;)I
.end method

.method public static declared-synchronized loadNativeLibraries()V
    .locals 2

    const-class v0, Lio/sentry/ndk/SentryNdk;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-boolean v1, Lio/sentry/ndk/SentryNdk;->nativeLibrariesLoaded:Z

    if-nez v1, :cond_0

    .line 75
    const-string v1, "log"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 76
    const-string v1, "sentry"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 77
    const-string v1, "sentry-android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 78
    const/4 v1, 0x1

    sput-boolean v1, Lio/sentry/ndk/SentryNdk;->nativeLibrariesLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit v0

    return-void

    .line 68
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static preload()V
    .locals 0

    .line 37
    invoke-static {}, Lio/sentry/ndk/SentryNdk;->loadNativeLibraries()V

    .line 38
    invoke-static {}, Lio/sentry/ndk/SentryNdk;->preloadSentryNative()V

    .line 39
    return-void
.end method

.method private static native preloadSentryNative()V
.end method

.method private static native shutdown()V
.end method
