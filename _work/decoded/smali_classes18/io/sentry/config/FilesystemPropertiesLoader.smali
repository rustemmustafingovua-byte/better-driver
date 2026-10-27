.class final Lio/sentry/config/FilesystemPropertiesLoader;
.super Ljava/lang/Object;
.source "FilesystemPropertiesLoader.java"

# interfaces
.implements Lio/sentry/config/PropertiesLoader;


# instance fields
.field private final filePath:Ljava/lang/String;

.field private logNonExisting:Z

.field private final logger:Lio/sentry/ILogger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/sentry/ILogger;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "logger"    # Lio/sentry/ILogger;

    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/config/FilesystemPropertiesLoader;-><init>(Ljava/lang/String;Lio/sentry/ILogger;Z)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/ILogger;Z)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .param p3, "logNonExisting"    # Z

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/sentry/config/FilesystemPropertiesLoader;->filePath:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lio/sentry/config/FilesystemPropertiesLoader;->logger:Lio/sentry/ILogger;

    .line 27
    iput-boolean p3, p0, Lio/sentry/config/FilesystemPropertiesLoader;->logNonExisting:Z

    .line 28
    return-void
.end method


# virtual methods
.method public load()Ljava/util/Properties;
    .locals 6

    .line 33
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/sentry/config/FilesystemPropertiesLoader;->filePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 36
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 37
    .local v3, "properties":Ljava/util/Properties;
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    nop

    .line 39
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 38
    return-object v3

    .line 35
    .end local v3    # "properties":Ljava/util/Properties;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3

    .line 40
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 41
    iget-boolean v2, p0, Lio/sentry/config/FilesystemPropertiesLoader;->logNonExisting:Z

    if-eqz v2, :cond_2

    .line 42
    iget-object v2, p0, Lio/sentry/config/FilesystemPropertiesLoader;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Failed to load Sentry configuration since it is not a file or does not exist: %s"

    iget-object v5, p0, Lio/sentry/config/FilesystemPropertiesLoader;->filePath:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_2

    .line 48
    iget-object v2, p0, Lio/sentry/config/FilesystemPropertiesLoader;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Failed to load Sentry configuration since it is not readable: %s"

    iget-object v5, p0, Lio/sentry/config/FilesystemPropertiesLoader;->filePath:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 57
    .end local v1    # "f":Ljava/io/File;
    :cond_2
    :goto_1
    nop

    .line 58
    return-object v0

    .line 53
    :catchall_2
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/config/FilesystemPropertiesLoader;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    iget-object v4, p0, Lio/sentry/config/FilesystemPropertiesLoader;->filePath:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Failed to load Sentry configuration from file: %s"

    invoke-interface {v2, v3, v1, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return-object v0
.end method
