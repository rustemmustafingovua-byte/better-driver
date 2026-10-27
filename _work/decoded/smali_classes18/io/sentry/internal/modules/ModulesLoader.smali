.class public abstract Lio/sentry/internal/modules/ModulesLoader;
.super Ljava/lang/Object;
.source "ModulesLoader.java"

# interfaces
.implements Lio/sentry/internal/modules/IModulesLoader;


# static fields
.field public static final EXTERNAL_MODULES_FILENAME:Ljava/lang/String; = "sentry-external-modules.txt"

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private volatile cachedModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final logger:Lio/sentry/ILogger;

.field private final modulesLock:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/internal/modules/ModulesLoader;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 1
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/internal/modules/ModulesLoader;->modulesLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/internal/modules/ModulesLoader;->cachedModules:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lio/sentry/internal/modules/ModulesLoader;->logger:Lio/sentry/ILogger;

    .line 32
    return-void
.end method


# virtual methods
.method public getOrLoadModules()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lio/sentry/internal/modules/ModulesLoader;->cachedModules:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 37
    iget-object v0, p0, Lio/sentry/internal/modules/ModulesLoader;->modulesLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 38
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/internal/modules/ModulesLoader;->cachedModules:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lio/sentry/internal/modules/ModulesLoader;->loadModules()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/internal/modules/ModulesLoader;->cachedModules:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_1

    .line 37
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 43
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/sentry/internal/modules/ModulesLoader;->cachedModules:Ljava/util/Map;

    return-object v0
.end method

.method protected abstract loadModules()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected parseStream(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 50
    .local v0, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lio/sentry/internal/modules/ModulesLoader;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "module":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 53
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 54
    .local v3, "sep":I
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "group":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "version":Ljava/lang/String;
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 58
    .end local v3    # "sep":I
    .end local v4    # "group":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    goto :goto_0

    .line 59
    :cond_0
    iget-object v3, p0, Lio/sentry/internal/modules/ModulesLoader;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Extracted %d modules from resources."

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .end local v2    # "module":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 50
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p1    # "stream":Ljava/io/InputStream;
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 62
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lio/sentry/internal/modules/ModulesLoader;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "sentry-external-modules.txt"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s file is malformed."

    invoke-interface {v2, v3, v1, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 60
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 61
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lio/sentry/internal/modules/ModulesLoader;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error extracting modules."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    nop

    .line 65
    :goto_3
    return-object v0
.end method
