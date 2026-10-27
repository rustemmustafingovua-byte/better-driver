.class public Lorg/maplibre/android/storage/FileSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/storage/FileSource$FileDirsPathsTask;,
        Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;,
        Lorg/maplibre/android/storage/FileSource$ResourceTransformCallback;
    }
.end annotation


# static fields
.field private static INSTANCE:Lorg/maplibre/android/storage/FileSource; = null

.field private static final MAPBOX_SHARED_PREFERENCE_RESOURCES_CACHE_PATH:Ljava/lang/String; = "fileSourceResourcesCachePath"

.field private static final TAG:Ljava/lang/String; = "Mbgl-FileSource"

.field private static internalCachePath:Ljava/lang/String;

.field private static final internalCachePathLoaderLock:Ljava/util/concurrent/locks/Lock;

.field private static resourcesCachePath:Ljava/lang/String;

.field private static final resourcesCachePathLoaderLock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private nativePtr:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lorg/maplibre/android/storage/FileSource;->resourcesCachePathLoaderLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lorg/maplibre/android/storage/FileSource;->internalCachePathLoaderLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/maplibre/android/MapLibre;->getTileServerOptions()Lorg/maplibre/android/util/TileServerOptions;

    move-result-object v0

    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lorg/maplibre/android/storage/FileSource;->initialize(Ljava/lang/String;Ljava/lang/String;Lorg/maplibre/android/util/TileServerOptions;)V

    return-void
.end method

.method public static bridge synthetic a()Ljava/util/concurrent/locks/Lock;
    .locals 1

    sget-object v0, Lorg/maplibre/android/storage/FileSource;->resourcesCachePathLoaderLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public static bridge synthetic b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lorg/maplibre/android/storage/FileSource;->resourcesCachePath:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic c(Landroid/content/Context;Ljava/lang/String;Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/storage/FileSource;->internalSetResourcesCachePath(Landroid/content/Context;Ljava/lang/String;Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;)V

    return-void
.end method

.method private static getCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "MapboxSharedPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "fileSourceResourcesCachePath"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/maplibre/android/storage/FileSource;->isPathWritable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lorg/maplibre/android/storage/FileSource;->getDefaultCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v2
.end method

.method private static getDefaultCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/maplibre/android/storage/FileSource;->isExternalStorageConfiguration(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/maplibre/android/storage/FileSource;->isExternalStorageReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lorg/maplibre/android/storage/FileSource;
    .locals 2

    const-class v0, Lorg/maplibre/android/storage/FileSource;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/maplibre/android/storage/FileSource;->INSTANCE:Lorg/maplibre/android/storage/FileSource;

    if-nez v1, :cond_0

    new-instance v1, Lorg/maplibre/android/storage/FileSource;

    invoke-static {p0}, Lorg/maplibre/android/storage/FileSource;->getResourcesCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/maplibre/android/storage/FileSource;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/maplibre/android/storage/FileSource;->INSTANCE:Lorg/maplibre/android/storage/FileSource;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lorg/maplibre/android/storage/FileSource;->INSTANCE:Lorg/maplibre/android/storage/FileSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getInternalCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/maplibre/android/storage/FileSource;->internalCachePathLoaderLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v1, Lorg/maplibre/android/storage/FileSource;->internalCachePath:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/maplibre/android/storage/FileSource;->internalCachePath:Ljava/lang/String;

    :cond_0
    sget-object p0, Lorg/maplibre/android/storage/FileSource;->internalCachePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lorg/maplibre/android/storage/FileSource;->internalCachePathLoaderLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static getResourcesCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/maplibre/android/storage/FileSource;->resourcesCachePathLoaderLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v1, Lorg/maplibre/android/storage/FileSource;->resourcesCachePath:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/maplibre/android/storage/FileSource;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/maplibre/android/storage/FileSource;->resourcesCachePath:Ljava/lang/String;

    :cond_0
    sget-object p0, Lorg/maplibre/android/storage/FileSource;->resourcesCachePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lorg/maplibre/android/storage/FileSource;->resourcesCachePathLoaderLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method private native initialize(Ljava/lang/String;Ljava/lang/String;Lorg/maplibre/android/util/TileServerOptions;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public static initializeFileDirsPaths(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Mbgl-FileSource"

    invoke-static {v0}, Lorg/maplibre/android/utils/ThreadUtils;->checkThread(Ljava/lang/String;)V

    new-instance v0, Lorg/maplibre/android/storage/FileSource$FileDirsPathsTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/maplibre/android/storage/FileSource$FileDirsPathsTask;-><init>(I)V

    filled-new-array {p0}, [Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static internalSetResourcesCachePath(Landroid/content/Context;Ljava/lang/String;Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;)V
    .locals 2

    invoke-static {p0}, Lorg/maplibre/android/storage/FileSource;->getInstance(Landroid/content/Context;)Lorg/maplibre/android/storage/FileSource;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/storage/FileSource;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/storage/FileSource;->activate()V

    :cond_0
    new-instance v1, Lorg/maplibre/android/storage/FileSource$2;

    invoke-direct {v1, v0, p0, p2}, Lorg/maplibre/android/storage/FileSource$2;-><init>(ZLorg/maplibre/android/storage/FileSource;Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;)V

    invoke-direct {p0, p1, v1}, Lorg/maplibre/android/storage/FileSource;->setResourceCachePath(Ljava/lang/String;Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;)V

    return-void
.end method

.method private static isExternalStorageConfiguration(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "Mbgl-FileSource"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x80

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v2, "com.mapbox.SetStorageExternal"

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    const-string v2, "Failed to read the storage key: "

    invoke-static {v0, v2, p0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lorg/maplibre/android/MapStrictMode;->strictModeViolation(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const-string v2, "Failed to read the package metadata: "

    invoke-static {v0, v2, p0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lorg/maplibre/android/MapStrictMode;->strictModeViolation(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    return v1
.end method

.method public static isExternalStorageReadable()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Mbgl-FileSource"

    const-string v1, "External storage was requested but it isn\'t readable. For API level < 18 make sure you\'ve requested READ_EXTERNAL_STORAGE or WRITE_EXTERNAL_STORAGE permissions in your app Manifest (defaulting to internal storage)."

    invoke-static {v0, v1}, Lorg/maplibre/android/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isPathWritable(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private native setResourceCachePath(Ljava/lang/String;Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public static setResourcesCachePath(Landroid/content/Context;Ljava/lang/String;Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lorg/maplibre/android/storage/FileSource;->setResourcesCachePath(Ljava/lang/String;Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;)V

    return-void
.end method

.method public static setResourcesCachePath(Ljava/lang/String;Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;)V
    .locals 3

    .line 2
    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lorg/maplibre/android/storage/FileSource;->getInstance(Landroid/content/Context;)Lorg/maplibre/android/storage/FileSource;

    .line 4
    invoke-static {v0}, Lorg/maplibre/android/storage/FileSource;->getResourcesCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1, p0}, Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;->onSuccess(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance v1, Lorg/maplibre/android/utils/FileUtils$CheckFileWritePermissionTask;

    new-instance v2, Lorg/maplibre/android/storage/FileSource$1;

    invoke-direct {v2, v0, p0, p1}, Lorg/maplibre/android/storage/FileSource$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;)V

    invoke-direct {v1, v2}, Lorg/maplibre/android/utils/FileUtils$CheckFileWritePermissionTask;-><init>(Lorg/maplibre/android/utils/FileUtils$OnCheckFileWritePermissionListener;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/io/File;

    move-result-object p0

    .line 7
    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public native activate()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native deactivate()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native getApiBaseUrl()Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native getApiKey()Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native isActivated()Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native setApiBaseUrl(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native setApiKey(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native setResourceTransform(Lorg/maplibre/android/storage/FileSource$ResourceTransformCallback;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native setTileServerOptions(Lorg/maplibre/android/util/TileServerOptions;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method
