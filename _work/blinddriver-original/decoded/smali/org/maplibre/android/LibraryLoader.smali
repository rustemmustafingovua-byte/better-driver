.class public abstract Lorg/maplibre/android/LibraryLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT:Lorg/maplibre/android/LibraryLoader;

.field private static final TAG:Ljava/lang/String; = "Mbgl-LibraryLoader"

.field private static handleLoadError:Z

.field private static loaded:Z

.field private static volatile loader:Lorg/maplibre/android/LibraryLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/maplibre/android/MapLibre;->getModuleProvider()Lorg/maplibre/android/ModuleProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/maplibre/android/ModuleProvider;->createLibraryLoaderProvider()Lorg/maplibre/android/LibraryLoaderProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/maplibre/android/LibraryLoaderProvider;->getDefaultLibraryLoader()Lorg/maplibre/android/LibraryLoader;

    move-result-object v0

    sput-object v0, Lorg/maplibre/android/LibraryLoader;->DEFAULT:Lorg/maplibre/android/LibraryLoader;

    sput-object v0, Lorg/maplibre/android/LibraryLoader;->loader:Lorg/maplibre/android/LibraryLoader;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/maplibre/android/LibraryLoader;->handleLoadError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableErrorHandling(Z)V
    .locals 0

    sput-boolean p0, Lorg/maplibre/android/LibraryLoader;->handleLoadError:Z

    return-void
.end method

.method public static declared-synchronized load()V
    .locals 4

    const-class v0, Lorg/maplibre/android/LibraryLoader;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lorg/maplibre/android/LibraryLoader;->loaded:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 2
    sput-boolean v1, Lorg/maplibre/android/LibraryLoader;->loaded:Z

    .line 3
    sget-object v1, Lorg/maplibre/android/LibraryLoader;->loader:Lorg/maplibre/android/LibraryLoader;

    const-string v2, "maplibre"

    invoke-virtual {v1, v2}, Lorg/maplibre/android/LibraryLoader;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 4
    :try_start_1
    sput-boolean v2, Lorg/maplibre/android/LibraryLoader;->loaded:Z

    .line 5
    const-string v2, "Failed to load native shared library."

    .line 6
    const-string v3, "Mbgl-LibraryLoader"

    invoke-static {v3, v2, v1}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v2, v1}, Lorg/maplibre/android/MapStrictMode;->strictModeViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    sget-boolean v2, Lorg/maplibre/android/LibraryLoader;->handleLoadError:Z

    if-nez v2, :cond_1

    invoke-static {}, Lorg/maplibre/android/utils/PlatformUtils;->isTest()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static setLibraryLoader(Lorg/maplibre/android/LibraryLoader;)V
    .locals 0

    sput-object p0, Lorg/maplibre/android/LibraryLoader;->loader:Lorg/maplibre/android/LibraryLoader;

    return-void
.end method


# virtual methods
.method public abstract load(Ljava/lang/String;)V
.end method
