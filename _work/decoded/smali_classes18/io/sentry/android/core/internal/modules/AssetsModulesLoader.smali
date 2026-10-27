.class public final Lio/sentry/android/core/internal/modules/AssetsModulesLoader;
.super Lio/sentry/internal/modules/ModulesLoader;
.source "AssetsModulesLoader.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/SentryOptions;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 22
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/internal/modules/ModulesLoader;-><init>(Lio/sentry/ILogger;)V

    .line 23
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/internal/modules/AssetsModulesLoader;->context:Landroid/content/Context;

    .line 27
    nop

    .line 28
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/internal/modules/AssetsModulesLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/sentry/android/core/internal/modules/AssetsModulesLoader$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/internal/modules/AssetsModulesLoader;)V

    .line 29
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "AssetsModulesLoader submit failed"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$io-sentry-android-core-internal-modules-AssetsModulesLoader()V
    .locals 0

    .line 31
    invoke-virtual {p0}, Lio/sentry/android/core/internal/modules/AssetsModulesLoader;->getOrLoadModules()Ljava/util/Map;

    .line 32
    return-void
.end method

.method protected loadModules()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    const-string v0, "sentry-external-modules.txt"

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 42
    .local v1, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/core/internal/modules/AssetsModulesLoader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, v2}, Lio/sentry/android/core/internal/modules/AssetsModulesLoader;->parseStream(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    :cond_0
    return-object v3

    .line 42
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 46
    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v1    # "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lio/sentry/android/core/internal/modules/AssetsModulesLoader;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error extracting modules."

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 44
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 45
    .local v2, "e":Ljava/io/FileNotFoundException;
    iget-object v3, p0, Lio/sentry/android/core/internal/modules/AssetsModulesLoader;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v5, "%s file was not found."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v4, v5, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    nop

    .line 49
    :goto_1
    return-object v1
.end method
