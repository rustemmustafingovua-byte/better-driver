.class public final Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;
.super Ljava/lang/Object;
.source "ResourcesDebugMetaLoader.java"

# interfaces
.implements Lio/sentry/internal/debugmeta/IDebugMetaLoader;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final logger:Lio/sentry/ILogger;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 1
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 26
    const-class v0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;-><init>(Lio/sentry/ILogger;Ljava/lang/ClassLoader;)V

    .line 27
    return-void
.end method

.method constructor <init>(Lio/sentry/ILogger;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->logger:Lio/sentry/ILogger;

    .line 31
    invoke-static {p2}, Lio/sentry/util/ClassLoaderUtils;->classLoaderOrDefault(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->classLoader:Ljava/lang/ClassLoader;

    .line 32
    return-void
.end method


# virtual methods
.method public loadDebugMeta()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "debugPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    :try_start_0
    iget-object v1, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->classLoader:Ljava/lang/ClassLoader;

    sget-object v2, Lio/sentry/util/DebugMetaPropertiesApplier;->DEBUG_META_PROPERTIES_FILENAME:Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 41
    .local v1, "resourceUrls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    .local v2, "currentUrl":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    .local v3, "is":Ljava/io/InputStream;
    :try_start_2
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 45
    .local v4, "currentProperties":Ljava/util/Properties;
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 46
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v5, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->logger:Lio/sentry/ILogger;

    sget-object v6, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v7, "Debug Meta Data Properties loaded from %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .end local v4    # "currentProperties":Ljava/util/Properties;
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 50
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_0
    goto :goto_2

    .line 43
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "debugPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local v1    # "resourceUrls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v2    # "currentUrl":Ljava/net/URL;
    :cond_1
    :goto_1
    throw v4
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 48
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "debugPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v1    # "resourceUrls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .restart local v2    # "currentUrl":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 49
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_6
    iget-object v4, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "%s file is malformed."

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v5, v3, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 51
    .end local v2    # "currentUrl":Ljava/net/URL;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_2
    goto :goto_0

    .line 54
    .end local v1    # "resourceUrls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :cond_2
    goto :goto_3

    .line 52
    :catch_1
    move-exception v1

    .line 53
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    sget-object v4, Lio/sentry/util/DebugMetaPropertiesApplier;->DEBUG_META_PROPERTIES_FILENAME:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Failed to load %s"

    invoke-interface {v2, v3, v1, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    iget-object v1, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    sget-object v3, Lio/sentry/util/DebugMetaPropertiesApplier;->DEBUG_META_PROPERTIES_FILENAME:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "No %s file was found."

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    const/4 v1, 0x0

    return-object v1

    .line 61
    :cond_3
    return-object v0
.end method
