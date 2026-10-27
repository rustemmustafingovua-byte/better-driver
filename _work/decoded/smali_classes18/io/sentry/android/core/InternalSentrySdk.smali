.class public final Lio/sentry/android/core/InternalSentrySdk;
.super Ljava/lang/Object;
.source "InternalSentrySdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTimeSpanToSerializedSpans(Lio/sentry/android/core/performance/TimeSpan;Ljava/util/List;)V
    .locals 4
    .param p0, "span"    # Lio/sentry/android/core/performance/TimeSpan;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/core/performance/TimeSpan;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 389
    .local p1, "spans":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 390
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Lio/sentry/ScopesAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 393
    const-string v3, "Can not convert not-started TimeSpan to Map for Hybrid SDKs."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    return-void

    .line 397
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Lio/sentry/ScopesAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 401
    const-string v3, "Can not convert not-stopped TimeSpan to Map for Hybrid SDKs."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    return-void

    .line 405
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 406
    .local v0, "spanMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "description"

    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestampMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "start_timestamp_ms"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getProjectedStopTimestampMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "end_timestamp_ms"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    return-void
.end method

.method public static captureEnvelope([BZ)Lio/sentry/protocol/SentryId;
    .locals 13
    .param p0, "envelopeData"    # [B
    .param p1, "maybeStartNewSession"    # Z

    .line 169
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    .line 170
    .local v0, "scopes":Lio/sentry/IScopes;
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 172
    .local v1, "options":Lio/sentry/SentryOptions;
    invoke-static {v1, p0}, Lio/sentry/android/core/InternalSentrySdk;->readEnvelope(Lio/sentry/SentryOptions;[B)Lio/sentry/SentryEnvelope;

    move-result-object v2

    .line 173
    .local v2, "envelope":Lio/sentry/SentryEnvelope;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 174
    return-object v3

    .line 178
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v4

    .line 179
    .local v4, "serializer":Lio/sentry/ISerializer;
    invoke-static {v2, v4}, Lio/sentry/android/core/InternalSentrySdk;->eventStateOf(Lio/sentry/SentryEnvelope;Lio/sentry/ISerializer;)Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    move-result-object v5

    .line 181
    .local v5, "eventState":Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v6, "envelopeItems":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelopeItem;>;"
    invoke-virtual {v2}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/sentry/SentryEnvelopeItem;

    .line 183
    .local v8, "item":Lio/sentry/SentryEnvelopeItem;
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    nop

    .end local v8    # "item":Lio/sentry/SentryEnvelopeItem;
    goto :goto_0

    .line 188
    :cond_1
    sget-object v7, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;->UNHANDLED:Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    if-ne v5, v7, :cond_2

    sget-object v7, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    goto :goto_1

    :cond_2
    move-object v7, v3

    .line 189
    .local v7, "status":Lio/sentry/Session$State;
    :goto_1
    sget-object v8, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;->NONE:Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v5, v8, :cond_3

    move v8, v9

    goto :goto_2

    :cond_3
    move v8, v10

    .line 190
    :goto_2
    invoke-static {v0, v1, v7, v8}, Lio/sentry/android/core/InternalSentrySdk;->updateSession(Lio/sentry/IScopes;Lio/sentry/SentryOptions;Lio/sentry/Session$State;Z)Lio/sentry/Session;

    move-result-object v8

    .line 191
    .local v8, "session":Lio/sentry/Session;
    if-eqz v8, :cond_6

    .line 192
    invoke-static {v4, v8}, Lio/sentry/SentryEnvelopeItem;->fromSession(Lio/sentry/ISerializer;Lio/sentry/Session;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v11

    .line 193
    .local v11, "sessionItem":Lio/sentry/SentryEnvelopeItem;
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    if-eqz p1, :cond_5

    .line 197
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v12

    invoke-virtual {v12}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    move-result-object v12

    invoke-interface {v12}, Lio/sentry/util/thread/IThreadChecker;->isMainThread()Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_3

    :cond_4
    move v9, v10

    goto :goto_4

    :cond_5
    :goto_3
    nop

    .line 194
    :goto_4
    invoke-static {v1, v9}, Lio/sentry/android/core/InternalSentrySdk;->deleteCurrentSessionFile(Lio/sentry/SentryOptions;Z)V

    .line 198
    if-eqz p1, :cond_6

    .line 199
    invoke-interface {v0}, Lio/sentry/IScopes;->startSession()V

    .line 203
    .end local v11    # "sessionItem":Lio/sentry/SentryEnvelopeItem;
    :cond_6
    new-instance v9, Lio/sentry/SentryEnvelope;

    .line 204
    invoke-virtual {v2}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    .line 205
    .local v9, "repackagedEnvelope":Lio/sentry/SentryEnvelope;
    invoke-interface {v0, v9}, Lio/sentry/IScopes;->captureEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/protocol/SentryId;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 206
    .end local v4    # "serializer":Lio/sentry/ISerializer;
    .end local v5    # "eventState":Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;
    .end local v6    # "envelopeItems":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelopeItem;>;"
    .end local v7    # "status":Lio/sentry/Session$State;
    .end local v8    # "session":Lio/sentry/Session;
    .end local v9    # "repackagedEnvelope":Lio/sentry/SentryEnvelope;
    :catchall_0
    move-exception v4

    .line 207
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v7, "Failed to capture envelope"

    invoke-interface {v5, v6, v7, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .end local v4    # "t":Ljava/lang/Throwable;
    return-object v3
.end method

.method public static captureEnvelopeNonTerminating([B)Lio/sentry/protocol/SentryId;
    .locals 8
    .param p0, "envelopeData"    # [B

    .line 243
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    .line 244
    .local v0, "scopes":Lio/sentry/IScopes;
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 246
    .local v1, "options":Lio/sentry/SentryOptions;
    invoke-static {v1, p0}, Lio/sentry/android/core/InternalSentrySdk;->readEnvelope(Lio/sentry/SentryOptions;[B)Lio/sentry/SentryEnvelope;

    move-result-object v2

    .line 247
    .local v2, "envelope":Lio/sentry/SentryEnvelope;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 248
    return-object v3

    .line 253
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v4

    invoke-static {v2, v4}, Lio/sentry/android/core/InternalSentrySdk;->eventStateOf(Lio/sentry/SentryEnvelope;Lio/sentry/ISerializer;)Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .local v3, "eventState":Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;
    nop

    .line 260
    sget-object v4, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;->NONE:Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    if-eq v3, v4, :cond_2

    .line 261
    sget-object v4, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;->UNHANDLED:Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    if-ne v3, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lio/sentry/android/core/InternalSentrySdk;->updateSessionNonTerminating(Z)V

    .line 264
    :cond_2
    invoke-interface {v0, v2}, Lio/sentry/IScopes;->captureEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/protocol/SentryId;

    move-result-object v4

    return-object v4

    .line 254
    .end local v3    # "eventState":Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;
    :catch_0
    move-exception v4

    .line 256
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v7, "Failed to inspect envelope events"

    invoke-interface {v5, v6, v7, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    return-object v3
.end method

.method private static deleteCurrentSessionFile(Lio/sentry/SentryOptions;)V
    .locals 6
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 433
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "cacheDirPath":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "Cache dir is not set, not deleting the current session."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    return-void

    .line 439
    :cond_0
    invoke-static {v0}, Lio/sentry/cache/EnvelopeCache;->getCurrentSessionFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 440
    .local v2, "sessionFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 441
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Failed to delete the current session file."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    :cond_1
    return-void
.end method

.method private static deleteCurrentSessionFile(Lio/sentry/SentryOptions;Z)V
    .locals 4
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "isSync"    # Z

    .line 414
    if-nez p1, :cond_0

    .line 416
    nop

    .line 417
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda4;-><init>(Lio/sentry/SentryOptions;)V

    .line 418
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 422
    :catchall_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Throwable;
    nop

    .line 424
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 425
    const-string v3, "Submission of deletion of the current session file rejected."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 426
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 428
    :cond_0
    invoke-static {p0}, Lio/sentry/android/core/InternalSentrySdk;->deleteCurrentSessionFile(Lio/sentry/SentryOptions;)V

    .line 430
    :goto_1
    return-void
.end method

.method private static eventStateOf(Lio/sentry/SentryEnvelope;Lio/sentry/ISerializer;)Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;
    .locals 6
    .param p0, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p1, "serializer"    # Lio/sentry/ISerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "unhandled":Z
    const/4 v1, 0x0

    .line 335
    .local v1, "errored":Z
    invoke-virtual {p0}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/SentryEnvelopeItem;

    .line 336
    .local v3, "item":Lio/sentry/SentryEnvelopeItem;
    invoke-virtual {v3, p1}, Lio/sentry/SentryEnvelopeItem;->getEvent(Lio/sentry/ISerializer;)Lio/sentry/SentryEvent;

    move-result-object v4

    .line 337
    .local v4, "event":Lio/sentry/SentryEvent;
    if-eqz v4, :cond_2

    .line 338
    invoke-virtual {v4}, Lio/sentry/SentryEvent;->isCrashed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 339
    const/4 v0, 0x1

    .line 341
    :cond_0
    invoke-virtual {v4}, Lio/sentry/SentryEvent;->isCrashed()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lio/sentry/SentryEvent;->isErrored()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 342
    :cond_1
    const/4 v1, 0x1

    .line 345
    .end local v3    # "item":Lio/sentry/SentryEnvelopeItem;
    .end local v4    # "event":Lio/sentry/SentryEvent;
    :cond_2
    goto :goto_0

    .line 346
    :cond_3
    if-eqz v0, :cond_4

    .line 347
    sget-object v2, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;->UNHANDLED:Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    return-object v2

    .line 349
    :cond_4
    if-eqz v1, :cond_5

    sget-object v2, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;->ERRORED:Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    goto :goto_1

    :cond_5
    sget-object v2, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;->NONE:Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    :goto_1
    return-object v2
.end method

.method public static getAppStartMeasurement()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 363
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 364
    .local v0, "metrics":Lio/sentry/android/core/performance/AppStartMetrics;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v1, "spans":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->createProcessInitSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    invoke-static {v2, v1}, Lio/sentry/android/core/InternalSentrySdk;->addTimeSpanToSerializedSpans(Lio/sentry/android/core/performance/TimeSpan;Ljava/util/List;)V

    .line 367
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getApplicationOnCreateTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    invoke-static {v2, v1}, Lio/sentry/android/core/InternalSentrySdk;->addTimeSpanToSerializedSpans(Lio/sentry/android/core/performance/TimeSpan;Ljava/util/List;)V

    .line 369
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getContentProviderOnCreateTimeSpans()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/android/core/performance/TimeSpan;

    .line 370
    .local v3, "span":Lio/sentry/android/core/performance/TimeSpan;
    invoke-static {v3, v1}, Lio/sentry/android/core/InternalSentrySdk;->addTimeSpanToSerializedSpans(Lio/sentry/android/core/performance/TimeSpan;Ljava/util/List;)V

    .line 371
    .end local v3    # "span":Lio/sentry/android/core/performance/TimeSpan;
    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getActivityLifecycleTimeSpans()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;

    .line 374
    .local v3, "span":Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;
    invoke-virtual {v3}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnCreate()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v4

    invoke-static {v4, v1}, Lio/sentry/android/core/InternalSentrySdk;->addTimeSpanToSerializedSpans(Lio/sentry/android/core/performance/TimeSpan;Ljava/util/List;)V

    .line 375
    invoke-virtual {v3}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnStart()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v4

    invoke-static {v4, v1}, Lio/sentry/android/core/InternalSentrySdk;->addTimeSpanToSerializedSpans(Lio/sentry/android/core/performance/TimeSpan;Ljava/util/List;)V

    .line 376
    .end local v3    # "span":Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;
    goto :goto_1

    .line 378
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 379
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "spans"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartType()Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 382
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestampMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "app_start_timestamp_ms"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_2
    return-object v2
.end method

.method public static getCurrentScope()Lio/sentry/IScope;
    .locals 4

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 59
    .local v0, "scopeRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/sentry/IScope;>;"
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v1

    sget-object v2, Lio/sentry/ScopeType;->COMBINED:Lio/sentry/ScopeType;

    new-instance v3, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 60
    invoke-virtual {v1, v2, v3}, Lio/sentry/ScopesAdapter;->configureScope(Lio/sentry/ScopeType;Lio/sentry/ScopeCallback;)V

    .line 65
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScope;

    return-object v1
.end method

.method static synthetic lambda$deleteCurrentSessionFile$3(Lio/sentry/SentryOptions;)V
    .locals 0
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 420
    invoke-static {p0}, Lio/sentry/android/core/InternalSentrySdk;->deleteCurrentSessionFile(Lio/sentry/SentryOptions;)V

    .line 421
    return-void
.end method

.method static synthetic lambda$getCurrentScope$0(Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/IScope;)V
    .locals 1
    .param p0, "scopeRef"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p1, "scope"    # Lio/sentry/IScope;

    .line 63
    invoke-interface {p1}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method static synthetic lambda$updateSession$4(Lio/sentry/Session$State;ZLio/sentry/IScope;Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/SentryOptions;Lio/sentry/Session;)V
    .locals 4
    .param p0, "status"    # Lio/sentry/Session$State;
    .param p1, "crashedOrErrored"    # Z
    .param p2, "scope"    # Lio/sentry/IScope;
    .param p3, "sessionRef"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p4, "options"    # Lio/sentry/SentryOptions;
    .param p5, "session"    # Lio/sentry/Session;

    .line 456
    if-eqz p5, :cond_2

    .line 457
    const/4 v0, 0x0

    invoke-virtual {p5, p0, v0, p1, v0}, Lio/sentry/Session;->update(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    .line 459
    .local v0, "updated":Z
    if-eqz v0, :cond_1

    .line 460
    invoke-virtual {p5}, Lio/sentry/Session;->getStatus()Lio/sentry/Session$State;

    move-result-object v1

    sget-object v2, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    if-ne v1, v2, :cond_0

    .line 461
    invoke-virtual {p5}, Lio/sentry/Session;->end()V

    .line 464
    invoke-interface {p2}, Lio/sentry/IScope;->clearSession()V

    .line 468
    :cond_0
    invoke-virtual {p5}, Lio/sentry/Session;->clone()Lio/sentry/Session;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 470
    .end local v0    # "updated":Z
    :cond_1
    goto :goto_0

    .line 471
    :cond_2
    invoke-virtual {p4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Session is null on updateSession"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    :goto_0
    return-void
.end method

.method static synthetic lambda$updateSession$5(Lio/sentry/Session$State;ZLjava/util/concurrent/atomic/AtomicReference;Lio/sentry/SentryOptions;Lio/sentry/IScope;)V
    .locals 6
    .param p0, "status"    # Lio/sentry/Session$State;
    .param p1, "crashedOrErrored"    # Z
    .param p2, "sessionRef"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p3, "options"    # Lio/sentry/SentryOptions;
    .param p4, "scope"    # Lio/sentry/IScope;

    .line 454
    new-instance v0, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda5;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v3, p4

    .end local p0    # "status":Lio/sentry/Session$State;
    .end local p1    # "crashedOrErrored":Z
    .end local p2    # "sessionRef":Ljava/util/concurrent/atomic/AtomicReference;
    .end local p3    # "options":Lio/sentry/SentryOptions;
    .end local p4    # "scope":Lio/sentry/IScope;
    .local v1, "status":Lio/sentry/Session$State;
    .local v2, "crashedOrErrored":Z
    .local v3, "scope":Lio/sentry/IScope;
    .local v4, "sessionRef":Ljava/util/concurrent/atomic/AtomicReference;
    .local v5, "options":Lio/sentry/SentryOptions;
    invoke-direct/range {v0 .. v5}, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda5;-><init>(Lio/sentry/Session$State;ZLio/sentry/IScope;Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/SentryOptions;)V

    invoke-interface {v3, v0}, Lio/sentry/IScope;->withSession(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;

    .line 474
    return-void
.end method

.method static synthetic lambda$updateSessionNonTerminating$1(Lio/sentry/SentryOptions;ZLio/sentry/Session;)V
    .locals 4
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "unhandled"    # Z
    .param p2, "session"    # Lio/sentry/Session;

    .line 300
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 301
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "Session is null on updateSessionNonTerminating"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    return-void

    .line 304
    :cond_0
    invoke-virtual {p2}, Lio/sentry/Session;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    nop

    .line 306
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    .line 307
    const-string v3, "Session already terminated, not recording the error."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    return-void

    .line 311
    :cond_1
    if-eqz p1, :cond_2

    .line 312
    invoke-virtual {p2}, Lio/sentry/Session;->recordNonTerminatingUnhandledError()Z

    move-result v0

    goto :goto_0

    .line 313
    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, v0, v1}, Lio/sentry/Session;->update(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    :goto_0
    nop

    .line 314
    .local v0, "recorded":Z
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object v1

    instance-of v1, v1, Lio/sentry/cache/EnvelopeCache;

    if-eqz v1, :cond_3

    .line 315
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object v1

    check-cast v1, Lio/sentry/cache/EnvelopeCache;

    invoke-virtual {v1, p2}, Lio/sentry/cache/EnvelopeCache;->persistCurrentSession(Lio/sentry/Session;)V

    .line 317
    :cond_3
    return-void
.end method

.method static synthetic lambda$updateSessionNonTerminating$2(Lio/sentry/SentryOptions;ZLio/sentry/IScope;)V
    .locals 1
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "unhandled"    # Z
    .param p2, "scope"    # Lio/sentry/IScope;

    .line 298
    new-instance v0, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda0;-><init>(Lio/sentry/SentryOptions;Z)V

    invoke-interface {p2, v0}, Lio/sentry/IScope;->withSession(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;

    return-void
.end method

.method private static readEnvelope(Lio/sentry/SentryOptions;[B)Lio/sentry/SentryEnvelope;
    .locals 4
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "envelopeData"    # [B

    .line 354
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .local v0, "envelopeInputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEnvelopeReader()Lio/sentry/IEnvelopeReader;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/sentry/IEnvelopeReader;->read(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 355
    return-object v1

    .line 354
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "options":Lio/sentry/SentryOptions;
    .end local p1    # "envelopeData":[B
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 356
    .end local v0    # "envelopeInputStream":Ljava/io/InputStream;
    .restart local p0    # "options":Lio/sentry/SentryOptions;
    .restart local p1    # "envelopeData":[B
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to read envelope"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    const/4 v1, 0x0

    return-object v1
.end method

.method public static serializeScope(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/IScope;)Ljava/util/Map;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p2, "scope"    # Lio/sentry/IScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/sentry/android/core/SentryAndroidOptions;",
            "Lio/sentry/IScope;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p2, :cond_0

    .line 86
    return-object v0

    .line 89
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    .line 90
    .local v1, "logger":Lio/sentry/ILogger;
    new-instance v2, Lio/sentry/util/MapObjectWriter;

    invoke-direct {v2, v0}, Lio/sentry/util/MapObjectWriter;-><init>(Ljava/util/Map;)V

    .line 92
    .local v2, "writer":Lio/sentry/ObjectWriter;
    invoke-static {p0, p1}, Lio/sentry/android/core/DeviceInfoUtil;->getInstance(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;

    move-result-object v3

    .line 93
    .local v3, "deviceInfoUtil":Lio/sentry/android/core/DeviceInfoUtil;
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Lio/sentry/android/core/DeviceInfoUtil;->collectDeviceInformation(ZZ)Lio/sentry/protocol/Device;

    move-result-object v4

    .line 94
    .local v4, "deviceInfo":Lio/sentry/protocol/Device;
    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/sentry/protocol/Contexts;->setDevice(Lio/sentry/protocol/Device;)V

    .line 95
    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v5

    invoke-virtual {v3}, Lio/sentry/android/core/DeviceInfoUtil;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/protocol/Contexts;->setOperatingSystem(Lio/sentry/protocol/OperatingSystem;)V

    .line 98
    invoke-interface {p2}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object v5

    .line 99
    .local v5, "user":Lio/sentry/protocol/User;
    if-nez v5, :cond_1

    .line 100
    new-instance v6, Lio/sentry/protocol/User;

    invoke-direct {v6}, Lio/sentry/protocol/User;-><init>()V

    move-object v5, v6

    .line 101
    invoke-interface {p2, v5}, Lio/sentry/IScope;->setUser(Lio/sentry/protocol/User;)V

    .line 103
    :cond_1
    invoke-virtual {v5}, Lio/sentry/protocol/User;->getId()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    .line 105
    :try_start_1
    invoke-static {p0}, Lio/sentry/android/core/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/protocol/User;->setId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception v6

    .line 107
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v8, "Could not retrieve installation ID"

    invoke-interface {v1, v7, v8, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v6

    .line 113
    .local v6, "app":Lio/sentry/protocol/App;
    if-nez v6, :cond_3

    .line 114
    new-instance v7, Lio/sentry/protocol/App;

    invoke-direct {v7}, Lio/sentry/protocol/App;-><init>()V

    move-object v6, v7

    .line 116
    :cond_3
    invoke-static {p0}, Lio/sentry/android/core/ContextUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/sentry/protocol/App;->setAppName(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v7

    invoke-virtual {v7, p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v7

    .line 120
    .local v7, "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    invoke-virtual {v7}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 121
    invoke-virtual {v7}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestamp()Lio/sentry/SentryDate;

    move-result-object v8

    invoke-static {v8}, Lio/sentry/DateUtils;->toUtilDate(Lio/sentry/SentryDate;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v8}, Lio/sentry/protocol/App;->setAppStartTime(Ljava/util/Date;)V

    .line 124
    :cond_4
    new-instance v8, Lio/sentry/android/core/BuildInfoProvider;

    .line 125
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v9

    invoke-direct {v8, v9}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 126
    .local v8, "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    nop

    .line 128
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v9

    .line 127
    const/16 v10, 0x1000

    invoke-static {p0, v10, v9, v8}, Lio/sentry/android/core/ContextUtils;->getPackageInfo(Landroid/content/Context;ILio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 129
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_5

    .line 130
    invoke-static {v9, v8, v3, v6}, Lio/sentry/android/core/ContextUtils;->setAppPackageInfo(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/DeviceInfoUtil;Lio/sentry/protocol/App;)V

    .line 132
    :cond_5
    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v10

    invoke-virtual {v10, v6}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    .line 134
    const-string v10, "user"

    invoke-interface {v2, v10}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v10

    invoke-interface {p2}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object v11

    invoke-interface {v10, v1, v11}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 135
    const-string v10, "contexts"

    invoke-interface {v2, v10}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v10

    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v11

    invoke-interface {v10, v1, v11}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 136
    const-string v10, "tags"

    invoke-interface {v2, v10}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v10

    invoke-interface {p2}, Lio/sentry/IScope;->getTags()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v10, v1, v11}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 137
    const-string v10, "extras"

    invoke-interface {v2, v10}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v10

    invoke-interface {p2}, Lio/sentry/IScope;->getExtras()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v10, v1, v11}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 138
    const-string v10, "fingerprint"

    invoke-interface {v2, v10}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v10

    invoke-interface {p2}, Lio/sentry/IScope;->getFingerprint()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v1, v11}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 139
    const-string v10, "level"

    invoke-interface {v2, v10}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v10

    invoke-interface {p2}, Lio/sentry/IScope;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v11

    invoke-interface {v10, v1, v11}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 140
    const-string v10, "breadcrumbs"

    invoke-interface {v2, v10}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v10

    invoke-interface {p2}, Lio/sentry/IScope;->getBreadcrumbs()Ljava/util/Queue;

    move-result-object v11

    invoke-interface {v10, v1, v11}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    nop

    .line 146
    .end local v1    # "logger":Lio/sentry/ILogger;
    .end local v2    # "writer":Lio/sentry/ObjectWriter;
    .end local v3    # "deviceInfoUtil":Lio/sentry/android/core/DeviceInfoUtil;
    .end local v4    # "deviceInfo":Lio/sentry/protocol/Device;
    .end local v5    # "user":Lio/sentry/protocol/User;
    .end local v6    # "app":Lio/sentry/protocol/App;
    .end local v7    # "appStartTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    .end local v8    # "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    return-object v0

    .line 141
    :catchall_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Could not serialize scope."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    return-object v2
.end method

.method public static setTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 2
    .param p0, "traceId"    # Ljava/lang/String;
    .param p1, "spanId"    # Ljava/lang/String;
    .param p2, "sampleRate"    # Ljava/lang/Double;
    .param p3, "sampleRand"    # Ljava/lang/Double;

    .line 492
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    .line 493
    invoke-static {p0, p1, p2, p3}, Lio/sentry/PropagationContext;->fromExistingTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lio/sentry/PropagationContext;

    move-result-object v1

    .line 491
    invoke-static {v0, v1}, Lio/sentry/util/TracingUtils;->setTrace(Lio/sentry/IScopes;Lio/sentry/PropagationContext;)V

    .line 494
    return-void
.end method

.method private static updateSession(Lio/sentry/IScopes;Lio/sentry/SentryOptions;Lio/sentry/Session$State;Z)Lio/sentry/Session;
    .locals 2
    .param p0, "scopes"    # Lio/sentry/IScopes;
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "status"    # Lio/sentry/Session$State;
    .param p3, "crashedOrErrored"    # Z

    .line 451
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 452
    .local v0, "sessionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/sentry/Session;>;"
    new-instance v1, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p3, v0, p1}, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda2;-><init>(Lio/sentry/Session$State;ZLjava/util/concurrent/atomic/AtomicReference;Lio/sentry/SentryOptions;)V

    invoke-interface {p0, v1}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 475
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Session;

    return-object v1
.end method

.method public static updateSessionForDroppedEventNonTerminating(Z)V
    .locals 0
    .param p0, "crashed"    # Z

    .line 281
    invoke-static {p0}, Lio/sentry/android/core/InternalSentrySdk;->updateSessionNonTerminating(Z)V

    .line 282
    return-void
.end method

.method private static updateSessionNonTerminating(Z)V
    .locals 3
    .param p0, "unhandled"    # Z

    .line 294
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    .line 295
    .local v0, "scopes":Lio/sentry/IScopes;
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 296
    .local v1, "options":Lio/sentry/SentryOptions;
    new-instance v2, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p0}, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda3;-><init>(Lio/sentry/SentryOptions;Z)V

    invoke-interface {v0, v2}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 318
    return-void
.end method
