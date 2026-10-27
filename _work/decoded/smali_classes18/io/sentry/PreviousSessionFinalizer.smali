.class final Lio/sentry/PreviousSessionFinalizer;
.super Ljava/lang/Object;
.source "PreviousSessionFinalizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final options:Lio/sentry/SentryOptions;

.field private final scopes:Lio/sentry/IScopes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/PreviousSessionFinalizer;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;)V
    .locals 0
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "scopes"    # Lio/sentry/IScopes;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 40
    iput-object p2, p0, Lio/sentry/PreviousSessionFinalizer;->scopes:Lio/sentry/IScopes;

    .line 41
    return-void
.end method

.method private getTimestampFromCrashMarkerFile(Ljava/io/File;)Ljava/util/Date;
    .locals 6
    .param p1, "markerFile"    # Ljava/io/File;

    .line 148
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lio/sentry/PreviousSessionFinalizer;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "timestamp":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Crash marker file has %s timestamp."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-static {v1}, Lio/sentry/DateUtils;->getDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    return-object v2

    .line 148
    .end local v1    # "timestamp":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "markerFile":Ljava/io/File;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 155
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "markerFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Error converting the crash timestamp."

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 153
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error reading the crash marker file."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 158
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 45
    iget-object v0, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "cacheDirPath":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    iget-object v2, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "Cache dir is not set, not finalizing the previous session."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return-void

    .line 51
    :cond_0
    iget-object v2, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object v2

    .line 52
    .local v2, "cache":Lio/sentry/cache/IEnvelopeCache;
    instance-of v3, v2, Lio/sentry/cache/EnvelopeCache;

    if-eqz v3, :cond_1

    .line 53
    move-object v3, v2

    check-cast v3, Lio/sentry/cache/EnvelopeCache;

    invoke-virtual {v3}, Lio/sentry/cache/EnvelopeCache;->waitPreviousSessionFlush()Z

    move-result v3

    if-nez v3, :cond_1

    .line 54
    iget-object v3, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 55
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 56
    const-string v5, "Timed out waiting to flush previous session to its own file in session finalizer."

    invoke-interface {v3, v4, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return-void

    .line 63
    :cond_1
    invoke-static {v0}, Lio/sentry/cache/EnvelopeCache;->getPreviousSessionFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 64
    .local v3, "previousSessionFile":Ljava/io/File;
    iget-object v4, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v4

    .line 66
    .local v4, "serializer":Lio/sentry/ISerializer;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 67
    iget-object v5, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v7, "Current session is not ended, we\'d need to end it."

    new-array v8, v1, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v8, Lio/sentry/PreviousSessionFinalizer;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 73
    .local v5, "reader":Ljava/io/Reader;
    :try_start_1
    const-class v6, Lio/sentry/Session;

    invoke-interface {v4, v5, v6}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/sentry/Session;

    .line 74
    .local v6, "session":Lio/sentry/Session;
    if-nez v6, :cond_2

    .line 75
    iget-object v7, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 76
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v7

    sget-object v8, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v9, "Stream from path %s resulted in a null envelope."

    .line 80
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    .line 77
    invoke-interface {v7, v8, v9, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 82
    :cond_2
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 83
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".sentry-native/last_crash"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v7, "crashMarkerFile":Ljava/io/File;
    invoke-virtual {v6}, Lio/sentry/Session;->getStatus()Lio/sentry/Session$State;

    move-result-object v8

    sget-object v9, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    const/4 v10, 0x1

    if-ne v8, v9, :cond_3

    .line 90
    invoke-static {}, Lio/sentry/SentryCrashLastRunState;->getInstance()Lio/sentry/SentryCrashLastRunState;

    move-result-object v8

    .line 91
    .local v8, "crashLastRunState":Lio/sentry/SentryCrashLastRunState;
    invoke-virtual {v8}, Lio/sentry/SentryCrashLastRunState;->reset()V

    .line 92
    invoke-virtual {v8, v10}, Lio/sentry/SentryCrashLastRunState;->setCrashedLastRun(Z)V

    .line 93
    .end local v8    # "crashLastRunState":Lio/sentry/SentryCrashLastRunState;
    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 96
    iget-object v8, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 97
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v8

    sget-object v9, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v11, "Crash marker file exists, last Session is gonna be Crashed."

    new-array v12, v1, [Ljava/lang/Object;

    .line 98
    invoke-interface {v8, v9, v11, v12}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-direct {p0, v7}, Lio/sentry/PreviousSessionFinalizer;->getTimestampFromCrashMarkerFile(Ljava/io/File;)Ljava/util/Date;

    move-result-object v8

    .line 101
    .local v8, "timestamp":Ljava/util/Date;
    sget-object v9, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11, v10}, Lio/sentry/Session;->update(Lio/sentry/Session$State;Ljava/lang/String;Z)Z

    .line 102
    invoke-virtual {v6, v8}, Lio/sentry/Session;->end(Ljava/util/Date;)V

    .end local v8    # "timestamp":Ljava/util/Date;
    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {v6}, Lio/sentry/Session;->getAbnormalMechanism()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    .line 106
    invoke-virtual {v6}, Lio/sentry/Session;->end()V

    goto :goto_1

    .line 103
    :cond_5
    :goto_0
    nop

    .line 112
    :goto_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 113
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_6

    .line 114
    iget-object v8, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 115
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v8

    sget-object v9, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v10, "Failed to delete the crash marker file. %s."

    .line 119
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    .line 116
    invoke-interface {v8, v9, v10, v11}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_6
    iget-object v8, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 126
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v8

    invoke-static {v4, v6, v8}, Lio/sentry/SentryEnvelope;->from(Lio/sentry/ISerializer;Lio/sentry/Session;Lio/sentry/protocol/SdkVersion;)Lio/sentry/SentryEnvelope;

    move-result-object v8

    .line 127
    .local v8, "fromSession":Lio/sentry/SentryEnvelope;
    iget-object v9, p0, Lio/sentry/PreviousSessionFinalizer;->scopes:Lio/sentry/IScopes;

    invoke-interface {v9, v8}, Lio/sentry/IScopes;->captureEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/protocol/SentryId;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .end local v6    # "session":Lio/sentry/Session;
    .end local v7    # "crashMarkerFile":Ljava/io/File;
    .end local v8    # "fromSession":Lio/sentry/SentryEnvelope;
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 131
    .end local v5    # "reader":Ljava/io/Reader;
    goto :goto_4

    .line 69
    .restart local v5    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "cacheDirPath":Ljava/lang/String;
    .end local v2    # "cache":Lio/sentry/cache/IEnvelopeCache;
    .end local v3    # "previousSessionFile":Ljava/io/File;
    .end local v4    # "serializer":Lio/sentry/ISerializer;
    :goto_3
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 129
    .end local v5    # "reader":Ljava/io/Reader;
    .restart local v0    # "cacheDirPath":Ljava/lang/String;
    .restart local v2    # "cache":Lio/sentry/cache/IEnvelopeCache;
    .restart local v3    # "previousSessionFile":Ljava/io/File;
    .restart local v4    # "serializer":Lio/sentry/ISerializer;
    :catchall_2
    move-exception v5

    .line 130
    .local v5, "e":Ljava/lang/Throwable;
    iget-object v6, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v6

    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v8, "Error processing previous session."

    invoke-interface {v6, v7, v8, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_7

    .line 136
    iget-object v5, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v7, "Failed to delete the previous session file."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :cond_7
    return-void
.end method
