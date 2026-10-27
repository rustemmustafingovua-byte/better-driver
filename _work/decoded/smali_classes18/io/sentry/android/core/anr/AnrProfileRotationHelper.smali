.class public Lio/sentry/android/core/anr/AnrProfileRotationHelper;
.super Ljava/lang/Object;
.source "AnrProfileRotationHelper.java"


# static fields
.field private static final OLD_FILE_NAME:Ljava/lang/String; = "anr_profile_old"

.field private static final RECORDING_FILE_NAME:Ljava/lang/String; = "anr_profile"

.field private static final rotationLock:Ljava/lang/Object;

.field private static final shouldRotate:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->shouldRotate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->rotationLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteLastFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "cacheDir"    # Ljava/io/File;

    .line 67
    new-instance v0, Ljava/io/File;

    const-string v1, "anr_profile_old"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v0, "oldFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    const/4 v1, 0x1

    return v1

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public static getFileForRecording(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0, "cacheDir"    # Ljava/io/File;

    .line 56
    invoke-static {p0}, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->performRotationIfNeeded(Ljava/io/File;)V

    .line 57
    new-instance v0, Ljava/io/File;

    const-string v1, "anr_profile"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLastFile(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0, "cacheDir"    # Ljava/io/File;

    .line 62
    invoke-static {p0}, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->performRotationIfNeeded(Ljava/io/File;)V

    .line 63
    new-instance v0, Ljava/io/File;

    const-string v1, "anr_profile_old"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static performRotationIfNeeded(Ljava/io/File;)V
    .locals 5
    .param p0, "cacheDir"    # Ljava/io/File;

    .line 26
    sget-object v0, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->shouldRotate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    return-void

    .line 30
    :cond_0
    sget-object v0, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->rotationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->shouldRotate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 32
    monitor-exit v0

    return-void

    .line 35
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "anr_profile"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .local v1, "currentFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "anr_profile_old"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 39
    .local v2, "oldFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v3

    .line 45
    :goto_0
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    goto :goto_1

    .line 46
    :catchall_1
    move-exception v3

    .line 50
    :goto_1
    :try_start_3
    sget-object v3, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->shouldRotate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51
    .end local v1    # "currentFile":Ljava/io/File;
    .end local v2    # "oldFile":Ljava/io/File;
    monitor-exit v0

    .line 52
    return-void

    .line 51
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method public static rotate()V
    .locals 2

    .line 22
    sget-object v0, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->shouldRotate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    return-void
.end method
