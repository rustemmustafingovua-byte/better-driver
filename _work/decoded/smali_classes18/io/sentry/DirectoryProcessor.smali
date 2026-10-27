.class abstract Lio/sentry/DirectoryProcessor;
.super Ljava/lang/Object;
.source "DirectoryProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;
    }
.end annotation


# static fields
.field private static final ENVELOPE_PROCESSING_DELAY:J = 0x64L


# instance fields
.field private final flushTimeoutMillis:J

.field private final logger:Lio/sentry/ILogger;

.field private final processedEnvelopes:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scopes:Lio/sentry/IScopes;


# direct methods
.method constructor <init>(Lio/sentry/IScopes;Lio/sentry/ILogger;JI)V
    .locals 1
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .param p3, "flushTimeoutMillis"    # J
    .param p5, "maxQueueSize"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/sentry/DirectoryProcessor;->scopes:Lio/sentry/IScopes;

    .line 33
    iput-object p2, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    .line 34
    iput-wide p3, p0, Lio/sentry/DirectoryProcessor;->flushTimeoutMillis:J

    .line 35
    new-instance v0, Lio/sentry/CircularFifoQueue;

    invoke-direct {v0, p5}, Lio/sentry/CircularFifoQueue;-><init>(I)V

    .line 36
    invoke-static {v0}, Lio/sentry/SynchronizedQueue;->synchronizedQueue(Ljava/util/Queue;)Lio/sentry/SynchronizedQueue;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/DirectoryProcessor;->processedEnvelopes:Ljava/util/Queue;

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract isRelevantFileName(Ljava/lang/String;)Z
.end method

.method synthetic lambda$processDirectory$0$io-sentry-DirectoryProcessor(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "d"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p2}, Lio/sentry/DirectoryProcessor;->isRelevantFileName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public processDirectory(Ljava/io/File;)V
    .locals 12
    .param p1, "directory"    # Ljava/io/File;

    .line 41
    :try_start_0
    iget-object v0, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "Processing dir. %s"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    new-instance v0, Lio/sentry/DirectoryProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/sentry/DirectoryProcessor$$ExternalSyntheticLambda0;-><init>(Lio/sentry/DirectoryProcessor;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 44
    .local v0, "filteredListFiles":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 45
    iget-object v1, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Cache dir %s is null or is not a directory."

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 45
    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Processing %d items from cache dir %s"

    array-length v4, v0

    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 52
    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 60
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 61
    iget-object v5, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v7, "File %s is not a File."

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    .line 68
    .local v10, "filePath":Ljava/lang/String;
    iget-object v5, p0, Lio/sentry/DirectoryProcessor;->processedEnvelopes:Ljava/util/Queue;

    invoke-interface {v5, v10}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    iget-object v5, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v7, "File \'%s\' has already been processed so it will not be processed again."

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    goto :goto_1

    .line 77
    :cond_2
    iget-object v5, p0, Lio/sentry/DirectoryProcessor;->scopes:Lio/sentry/IScopes;

    invoke-interface {v5}, Lio/sentry/IScopes;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v5

    .line 78
    .local v5, "rateLimiter":Lio/sentry/transport/RateLimiter;
    if-eqz v5, :cond_3

    sget-object v6, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-virtual {v5, v6}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 79
    iget-object v1, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v6, "DirectoryProcessor, rate limiting active."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v6, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    return-void

    .line 83
    :cond_3
    iget-object v6, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v8, "Processing file: %s"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    new-instance v6, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;

    iget-wide v7, p0, Lio/sentry/DirectoryProcessor;->flushTimeoutMillis:J

    iget-object v9, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    iget-object v11, p0, Lio/sentry/DirectoryProcessor;->processedEnvelopes:Ljava/util/Queue;

    invoke-direct/range {v6 .. v11}, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;-><init>(JLio/sentry/ILogger;Ljava/lang/String;Ljava/util/Queue;)V

    .line 88
    .local v6, "cachedHint":Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;
    invoke-static {v6}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object v7

    .line 89
    .local v7, "hint":Lio/sentry/Hint;
    invoke-virtual {p0, v4, v7}, Lio/sentry/DirectoryProcessor;->processFile(Ljava/io/File;Lio/sentry/Hint;)V

    .line 94
    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "rateLimiter":Lio/sentry/transport/RateLimiter;
    .end local v6    # "cachedHint":Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;
    .end local v7    # "hint":Lio/sentry/Hint;
    .end local v10    # "filePath":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "filteredListFiles":[Ljava/io/File;
    :cond_4
    goto :goto_2

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Failed processing \'%s\'"

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 96
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 98
    iget-object v1, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 102
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 98
    const-string v4, "Thread interrupted during processing \'%s\'"

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_2
    nop

    .line 106
    :goto_3
    return-void
.end method

.method protected abstract processFile(Ljava/io/File;Lio/sentry/Hint;)V
.end method
