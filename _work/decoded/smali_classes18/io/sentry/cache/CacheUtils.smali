.class public final Lio/sentry/cache/CacheUtils;
.super Ljava/lang/Object;
.source "CacheUtils.java"


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/cache/CacheUtils;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static delete(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 57
    invoke-static {p0, p1}, Lio/sentry/cache/CacheUtils;->ensureCacheDir(Lio/sentry/SentryOptions;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 58
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Cache dir is not set, cannot delete from scope cache"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void

    .line 63
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Deleting %s from scope cache"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Failed to delete: %s"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_1
    return-void
.end method

.method static ensureCacheDir(Lio/sentry/SentryOptions;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "cacheDirName"    # Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "cacheDir":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 104
    const/4 v1, 0x0

    return-object v1

    .line 106
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 108
    return-object v1
.end method

.method public static read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;
    .locals 8
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/SentryOptions;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/JsonDeserializer<",
            "TR;>;)TT;"
        }
    .end annotation

    .line 76
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "elementDeserializer":Lio/sentry/JsonDeserializer;, "Lio/sentry/JsonDeserializer<TR;>;"
    invoke-static {p0, p1}, Lio/sentry/cache/CacheUtils;->ensureCacheDir(Lio/sentry/SentryOptions;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 77
    .local v0, "cacheDir":Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Cache dir is not set, cannot read from scope cache"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-object v1

    .line 82
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v6, Lio/sentry/cache/CacheUtils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 86
    .local v3, "reader":Ljava/io/Reader;
    if-nez p4, :cond_1

    .line 87
    :try_start_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v4

    invoke-interface {v4, v3, p3}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :try_start_2
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 87
    return-object v4

    .line 89
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v4

    invoke-interface {v4, v3, p3, p4}, Lio/sentry/ISerializer;->deserializeCollection(Ljava/io/Reader;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    :try_start_4
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 89
    return-object v4

    .line 84
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local p0    # "options":Lio/sentry/SentryOptions;
    .end local p1    # "dirName":Ljava/lang/String;
    .end local p2    # "fileName":Ljava/lang/String;
    .end local p3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p4    # "elementDeserializer":Lio/sentry/JsonDeserializer;, "Lio/sentry/JsonDeserializer<TR;>;"
    :goto_0
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 91
    .end local v3    # "reader":Ljava/io/Reader;
    .restart local v0    # "cacheDir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local p0    # "options":Lio/sentry/SentryOptions;
    .restart local p1    # "dirName":Ljava/lang/String;
    .restart local p2    # "fileName":Ljava/lang/String;
    .restart local p3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p4    # "elementDeserializer":Lio/sentry/JsonDeserializer;, "Lio/sentry/JsonDeserializer<TR;>;"
    :catchall_2
    move-exception v3

    .line 92
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Error reading entity from scope cache: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v5, v3, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .end local v3    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "No entry stored for %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :goto_1
    return-object v1
.end method

.method public static store(Lio/sentry/SentryOptions;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p2, "dirName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/SentryOptions;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p2}, Lio/sentry/cache/CacheUtils;->ensureCacheDir(Lio/sentry/SentryOptions;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 39
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Cache dir is not set, cannot store in scope cache"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void

    .line 44
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 46
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    sget-object v5, Lio/sentry/cache/CacheUtils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 47
    .local v3, "writer":Ljava/io/Writer;
    :try_start_2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v4

    invoke-interface {v4, p1, v3}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :try_start_3
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v3    # "writer":Ljava/io/Writer;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 50
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2

    .line 45
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .end local p0    # "options":Lio/sentry/SentryOptions;
    .end local p1    # "entity":Ljava/lang/Object;, "TT;"
    .end local p2    # "dirName":Ljava/lang/String;
    .end local p3    # "fileName":Ljava/lang/String;
    :goto_0
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v3    # "writer":Ljava/io/Writer;
    .restart local v0    # "cacheDir":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local p0    # "options":Lio/sentry/SentryOptions;
    .restart local p1    # "entity":Ljava/lang/Object;, "TT;"
    .restart local p2    # "dirName":Ljava/lang/String;
    .restart local p3    # "fileName":Ljava/lang/String;
    :catchall_2
    move-exception v3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local p0    # "options":Lio/sentry/SentryOptions;
    .end local p1    # "entity":Ljava/lang/Object;, "TT;"
    .end local p2    # "dirName":Ljava/lang/String;
    .end local p3    # "fileName":Ljava/lang/String;
    :goto_1
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 48
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "cacheDir":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local p0    # "options":Lio/sentry/SentryOptions;
    .restart local p1    # "entity":Ljava/lang/Object;, "TT;"
    .restart local p2    # "dirName":Ljava/lang/String;
    .restart local p3    # "fileName":Ljava/lang/String;
    :catchall_4
    move-exception v2

    .line 49
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Error persisting entity: %s"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v4, v2, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method
