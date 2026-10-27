.class public final Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;
.super Ljava/lang/Object;
.source "AssetsDebugMetaLoader.java"

# interfaces
.implements Lio/sentry/internal/debugmeta/IDebugMetaLoader;


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Lio/sentry/ILogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/ILogger;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lio/sentry/ILogger;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;->logger:Lio/sentry/ILogger;

    .line 30
    return-void
.end method


# virtual methods
.method public loadDebugMeta()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 38
    .local v0, "assets":Landroid/content/res/AssetManager;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    sget-object v2, Lio/sentry/util/DebugMetaPropertiesApplier;->DEBUG_META_PROPERTIES_FILENAME:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 41
    .local v2, "properties":Ljava/util/Properties;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 42
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 42
    return-object v3

    .line 38
    .end local v2    # "properties":Ljava/util/Properties;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "assets":Landroid/content/res/AssetManager;
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 47
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "assets":Landroid/content/res/AssetManager;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    sget-object v4, Lio/sentry/util/DebugMetaPropertiesApplier;->DEBUG_META_PROPERTIES_FILENAME:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s file is malformed."

    invoke-interface {v2, v3, v1, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 45
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 46
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error getting Proguard UUIDs."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 43
    :catch_2
    move-exception v1

    .line 44
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v2, p0, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    sget-object v4, Lio/sentry/util/DebugMetaPropertiesApplier;->DEBUG_META_PROPERTIES_FILENAME:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s file was not found."

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    nop

    .line 51
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method
