.class final Lio/sentry/instrumentation/file/FileIOSpanManager;
.super Ljava/lang/Object;
.source "FileIOSpanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;
    }
.end annotation


# instance fields
.field private byteCount:J

.field private final currentSpan:Lio/sentry/ISpan;

.field private final file:Ljava/io/File;

.field private final options:Lio/sentry/SentryOptions;

.field private spanStatus:Lio/sentry/SpanStatus;

.field private final stackTraceFactory:Lio/sentry/SentryStackTraceFactory;


# direct methods
.method constructor <init>(Lio/sentry/ISpan;Ljava/io/File;Lio/sentry/SentryOptions;)V
    .locals 2
    .param p1, "currentSpan"    # Lio/sentry/ISpan;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "options"    # Lio/sentry/SentryOptions;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    iput-object v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->spanStatus:Lio/sentry/SpanStatus;

    .line 40
    iput-object p1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    .line 41
    iput-object p2, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->file:Ljava/io/File;

    .line 42
    iput-object p3, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->options:Lio/sentry/SentryOptions;

    .line 43
    new-instance v0, Lio/sentry/SentryStackTraceFactory;

    invoke-direct {v0, p3}, Lio/sentry/SentryStackTraceFactory;-><init>(Lio/sentry/SentryOptions;)V

    iput-object v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->stackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    .line 44
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v0

    const-string v1, "FileIO"

    invoke-virtual {v0, v1}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private finishSpan()V
    .locals 5

    .line 93
    iget-object v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    if-eqz v0, :cond_3

    .line 94
    iget-wide v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->byteCount:J

    invoke-static {v0, v1}, Lio/sentry/util/StringUtils;->byteCountToString(J)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "byteCountToString":Ljava/lang/String;
    iget-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->file:Ljava/io/File;

    invoke-direct {p0, v1}, Lio/sentry/instrumentation/file/FileIOSpanManager;->getDescription(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "description":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    invoke-interface {v2, v1}, Lio/sentry/ISpan;->setDescription(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getDataCollectionResolver()Lio/sentry/DataCollectionResolver;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/DataCollectionResolver;->isFilePaths()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    iget-object v3, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file.path"

    invoke-interface {v2, v4, v3}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    .end local v1    # "description":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    invoke-interface {v1, v0}, Lio/sentry/ISpan;->setDescription(Ljava/lang/String;)V

    .line 104
    :goto_0
    iget-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    iget-wide v2, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->byteCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "file.size"

    invoke-interface {v1, v3, v2}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/util/thread/IThreadChecker;->isMainThread()Z

    move-result v1

    .line 106
    .local v1, "isMainThread":Z
    iget-object v2, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    const-string v3, "blocked_main_thread"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    if-eqz v1, :cond_2

    .line 108
    iget-object v2, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    iget-object v3, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->stackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    .line 109
    invoke-virtual {v3}, Lio/sentry/SentryStackTraceFactory;->getInAppCallStack()Ljava/util/List;

    move-result-object v3

    .line 108
    const-string v4, "call_stack"

    invoke-interface {v2, v4, v3}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    :cond_2
    iget-object v2, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    iget-object v3, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->spanStatus:Lio/sentry/SpanStatus;

    invoke-interface {v2, v3}, Lio/sentry/ISpan;->finish(Lio/sentry/SpanStatus;)V

    .line 113
    .end local v0    # "byteCountToString":Ljava/lang/String;
    .end local v1    # "isMainThread":Z
    :cond_3
    return-void
.end method

.method private getDescription(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .line 116
    iget-wide v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->byteCount:J

    invoke-static {v0, v1}, Lio/sentry/util/StringUtils;->byteCountToString(J)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "byteCountToString":Ljava/lang/String;
    iget-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getDataCollectionResolver()Lio/sentry/DataCollectionResolver;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/DataCollectionResolver;->isFilePaths()Z

    move-result v1

    const-string v2, " ("

    const-string v3, ")"

    if-eqz v1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 121
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 123
    .local v1, "lastDotIndex":I
    if-lez v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "fileExtension":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "***"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 127
    .end local v4    # "fileExtension":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static startSpan(Lio/sentry/IScopes;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 2
    .param p0, "scopes"    # Lio/sentry/IScopes;
    .param p1, "op"    # Ljava/lang/String;

    .line 32
    invoke-static {}, Lio/sentry/util/Platform;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lio/sentry/IScopes;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lio/sentry/IScopes;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    .line 33
    .local v0, "parent":Lio/sentry/ISpan;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method


# virtual methods
.method finish(Ljava/io/Closeable;)V
    .locals 2
    .param p1, "delegate"    # Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-direct {p0}, Lio/sentry/instrumentation/file/FileIOSpanManager;->finishSpan()V

    .line 89
    nop

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "exception":Ljava/io/IOException;
    :try_start_1
    sget-object v1, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    iput-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->spanStatus:Lio/sentry/SpanStatus;

    .line 83
    iget-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    invoke-interface {v1, v0}, Lio/sentry/ISpan;->setThrowable(Ljava/lang/Throwable;)V

    .line 86
    :cond_0
    nop

    .end local p1    # "delegate":Ljava/io/Closeable;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .end local v0    # "exception":Ljava/io/IOException;
    .restart local p1    # "delegate":Ljava/io/Closeable;
    :goto_0
    invoke-direct {p0}, Lio/sentry/instrumentation/file/FileIOSpanManager;->finishSpan()V

    .line 89
    throw v0
.end method

.method performIO(Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    .local p1, "operation":Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;, "Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable<TT;>;"
    :try_start_0
    invoke-interface {p1}, Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "result":Ljava/lang/Object;, "TT;"
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 58
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 59
    .local v1, "resUnboxed":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 60
    iget-wide v2, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->byteCount:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->byteCount:J

    goto :goto_0

    .line 62
    .end local v1    # "resUnboxed":I
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 63
    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 64
    .local v1, "resUnboxed":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    .line 65
    iget-wide v3, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->byteCount:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->byteCount:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 62
    .end local v1    # "resUnboxed":J
    :cond_1
    :goto_0
    nop

    .line 68
    :cond_2
    :goto_1
    return-object v0

    .line 69
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 70
    .local v0, "exception":Ljava/io/IOException;
    sget-object v1, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    iput-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->spanStatus:Lio/sentry/SpanStatus;

    .line 71
    iget-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    if-eqz v1, :cond_3

    .line 72
    iget-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    invoke-interface {v1, v0}, Lio/sentry/ISpan;->setThrowable(Ljava/lang/Throwable;)V

    .line 74
    :cond_3
    throw v0
.end method
