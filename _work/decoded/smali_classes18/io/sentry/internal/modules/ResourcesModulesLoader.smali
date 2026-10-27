.class public final Lio/sentry/internal/modules/ResourcesModulesLoader;
.super Lio/sentry/internal/modules/ModulesLoader;
.source "ResourcesModulesLoader.java"


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 1
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 21
    const-class v0, Lio/sentry/internal/modules/ResourcesModulesLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/internal/modules/ResourcesModulesLoader;-><init>(Lio/sentry/ILogger;Ljava/lang/ClassLoader;)V

    .line 22
    return-void
.end method

.method constructor <init>(Lio/sentry/ILogger;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 25
    invoke-direct {p0, p1}, Lio/sentry/internal/modules/ModulesLoader;-><init>(Lio/sentry/ILogger;)V

    .line 26
    invoke-static {p2}, Lio/sentry/util/ClassLoaderUtils;->classLoaderOrDefault(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/internal/modules/ResourcesModulesLoader;->classLoader:Ljava/lang/ClassLoader;

    .line 27
    return-void
.end method


# virtual methods
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

    .line 31
    const-string v0, "sentry-external-modules.txt"

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 32
    .local v1, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lio/sentry/internal/modules/ResourcesModulesLoader;->classLoader:Ljava/lang/ClassLoader;

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .local v2, "resourcesStream":Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 36
    :try_start_1
    iget-object v3, p0, Lio/sentry/internal/modules/ResourcesModulesLoader;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v5, "%s file was not found."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v4, v5, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    nop

    .line 41
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 37
    :cond_0
    return-object v1

    .line 40
    :cond_1
    :try_start_3
    invoke-virtual {p0, v2}, Lio/sentry/internal/modules/ResourcesModulesLoader;->parseStream(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 40
    :cond_2
    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :goto_0
    throw v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 43
    .end local v2    # "resourcesStream":Ljava/io/InputStream;
    .restart local v1    # "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lio/sentry/internal/modules/ResourcesModulesLoader;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "Access to resources failed."

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 41
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lio/sentry/internal/modules/ResourcesModulesLoader;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "Access to resources denied."

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .end local v0    # "e":Ljava/lang/SecurityException;
    nop

    .line 46
    :goto_1
    return-object v1
.end method
