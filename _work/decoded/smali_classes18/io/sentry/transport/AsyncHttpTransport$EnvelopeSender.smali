.class final Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;
.super Ljava/lang/Object;
.source "AsyncHttpTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/AsyncHttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EnvelopeSender"
.end annotation


# instance fields
.field private final envelope:Lio/sentry/SentryEnvelope;

.field private final envelopeCache:Lio/sentry/cache/IEnvelopeCache;

.field private final failedResult:Lio/sentry/transport/TransportResult;

.field private final hint:Lio/sentry/Hint;

.field final synthetic this$0:Lio/sentry/transport/AsyncHttpTransport;


# direct methods
.method constructor <init>(Lio/sentry/transport/AsyncHttpTransport;Lio/sentry/SentryEnvelope;Lio/sentry/Hint;Lio/sentry/cache/IEnvelopeCache;)V
    .locals 0
    .param p2, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p3, "hint"    # Lio/sentry/Hint;
    .param p4, "envelopeCache"    # Lio/sentry/cache/IEnvelopeCache;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    invoke-static {}, Lio/sentry/transport/TransportResult;->error()Lio/sentry/transport/TransportResult;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->failedResult:Lio/sentry/transport/TransportResult;

    .line 237
    const-string p1, "Envelope is required."

    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryEnvelope;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    .line 238
    iput-object p3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    .line 239
    const-string p1, "EnvelopeCache is required."

    invoke-static {p4, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/cache/IEnvelopeCache;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelopeCache:Lio/sentry/cache/IEnvelopeCache;

    .line 240
    return-void
.end method

.method static synthetic access$500(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)Lio/sentry/Hint;
    .locals 1
    .param p0, "x0"    # Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;

    .line 227
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    return-object v0
.end method

.method static synthetic access$600(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)Lio/sentry/SentryEnvelope;
    .locals 1
    .param p0, "x0"    # Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;

    .line 227
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    return-object v0
.end method

.method private flush()Lio/sentry/transport/TransportResult;
    .locals 8

    .line 271
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->failedResult:Lio/sentry/transport/TransportResult;

    .line 273
    .local v0, "result":Lio/sentry/transport/TransportResult;
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    invoke-virtual {v1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/sentry/SentryEnvelopeHeader;->setSentAt(Ljava/util/Date;)V

    .line 274
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelopeCache:Lio/sentry/cache/IEnvelopeCache;

    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    invoke-interface {v1, v2, v3}, Lio/sentry/cache/IEnvelopeCache;->storeEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Z

    move-result v1

    .line 276
    .local v1, "cached":Z
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    const-class v3, Lio/sentry/hints/DiskFlushNotification;

    new-instance v4, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda0;-><init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)V

    invoke-static {v2, v3, v4}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 292
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v2}, Lio/sentry/transport/AsyncHttpTransport;->access$300(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/transport/ITransportGate;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/transport/ITransportGate;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 294
    invoke-static {v2}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    invoke-interface {v2, v3}, Lio/sentry/clientreport/IClientReportRecorder;->attachReportToEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/SentryEnvelope;

    move-result-object v2

    .line 297
    .local v2, "envelopeWithClientReport":Lio/sentry/SentryEnvelope;
    :try_start_0
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v3}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v3

    invoke-interface {v3}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v3

    .line 298
    .local v3, "now":Lio/sentry/SentryDate;
    nop

    .line 299
    invoke-virtual {v2}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v4

    .line 300
    invoke-virtual {v3}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Lio/sentry/DateUtils;->nanosToDate(J)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/sentry/SentryEnvelopeHeader;->setSentAt(Ljava/util/Date;)V

    .line 302
    iget-object v4, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v4}, Lio/sentry/transport/AsyncHttpTransport;->access$400(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/transport/HttpConnection;

    move-result-object v4

    invoke-virtual {v4, v2}, Lio/sentry/transport/HttpConnection;->send(Lio/sentry/SentryEnvelope;)Lio/sentry/transport/TransportResult;

    move-result-object v4

    move-object v0, v4

    .line 303
    invoke-virtual {v0}, Lio/sentry/transport/TransportResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    iget-object v4, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelopeCache:Lio/sentry/cache/IEnvelopeCache;

    iget-object v5, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    invoke-interface {v4, v5}, Lio/sentry/cache/IEnvelopeCache;->discard(Lio/sentry/SentryEnvelope;)V

    .line 341
    .end local v3    # "now":Lio/sentry/SentryDate;
    nop

    .line 342
    .end local v2    # "envelopeWithClientReport":Lio/sentry/SentryEnvelope;
    goto/16 :goto_0

    .line 306
    .restart local v2    # "envelopeWithClientReport":Lio/sentry/SentryEnvelope;
    .restart local v3    # "now":Lio/sentry/SentryDate;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The transport failed to send the envelope with response code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 308
    invoke-virtual {v0}, Lio/sentry/transport/TransportResult;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "message":Ljava/lang/String;
    iget-object v5, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v5}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v4, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    invoke-virtual {v0}, Lio/sentry/transport/TransportResult;->getResponseCode()I

    move-result v5

    const/16 v6, 0x190

    if-lt v5, v6, :cond_1

    .line 313
    iget-object v5, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelopeCache:Lio/sentry/cache/IEnvelopeCache;

    iget-object v6, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    invoke-interface {v5, v6}, Lio/sentry/cache/IEnvelopeCache;->discard(Lio/sentry/SentryEnvelope;)V

    .line 315
    invoke-virtual {v0}, Lio/sentry/transport/TransportResult;->getResponseCode()I

    move-result v5

    const/16 v6, 0x1ad

    if-eq v5, v6, :cond_1

    .line 316
    iget-object v5, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v5}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v5

    .line 317
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v5

    sget-object v6, Lio/sentry/clientreport/DiscardReason;->SEND_ERROR:Lio/sentry/clientreport/DiscardReason;

    .line 318
    invoke-interface {v5, v6, v2}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    .line 322
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "result":Lio/sentry/transport/TransportResult;
    .end local v1    # "cached":Z
    .end local v2    # "envelopeWithClientReport":Lio/sentry/SentryEnvelope;
    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v3    # "now":Lio/sentry/SentryDate;
    .end local v4    # "message":Ljava/lang/String;
    .restart local v0    # "result":Lio/sentry/transport/TransportResult;
    .restart local v1    # "cached":Z
    .restart local v2    # "envelopeWithClientReport":Lio/sentry/SentryEnvelope;
    :catch_0
    move-exception v3

    .line 326
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    const-class v5, Lio/sentry/hints/Retryable;

    new-instance v6, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda1;-><init>()V

    new-instance v7, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, v1, v2}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda2;-><init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;ZLio/sentry/SentryEnvelope;)V

    invoke-static {v4, v5, v6, v7}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;Lio/sentry/util/HintUtils$SentryHintFallback;)V

    .line 340
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Sending the event failed."

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 344
    .end local v2    # "envelopeWithClientReport":Lio/sentry/SentryEnvelope;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    const-class v3, Lio/sentry/hints/Retryable;

    new-instance v4, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda3;-><init>()V

    new-instance v5, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v1}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda4;-><init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;Z)V

    invoke-static {v2, v3, v4, v5}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;Lio/sentry/util/HintUtils$SentryHintFallback;)V

    .line 359
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$flush$2(Lio/sentry/hints/Retryable;)V
    .locals 1
    .param p0, "retryable"    # Lio/sentry/hints/Retryable;

    .line 330
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lio/sentry/hints/Retryable;->setRetry(Z)V

    .line 331
    return-void
.end method

.method static synthetic lambda$flush$4(Lio/sentry/hints/Retryable;)V
    .locals 1
    .param p0, "retryable"    # Lio/sentry/hints/Retryable;

    .line 348
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lio/sentry/hints/Retryable;->setRetry(Z)V

    .line 349
    return-void
.end method


# virtual methods
.method synthetic lambda$flush$1$io-sentry-transport-AsyncHttpTransport$EnvelopeSender(Lio/sentry/hints/DiskFlushNotification;)V
    .locals 4
    .param p1, "diskFlushNotification"    # Lio/sentry/hints/DiskFlushNotification;

    .line 280
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    invoke-virtual {v0}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/hints/DiskFlushNotification;->isFlushable(Lio/sentry/protocol/SentryId;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {p1}, Lio/sentry/hints/DiskFlushNotification;->markFlushed()V

    .line 282
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Disk flush envelope fired"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 286
    const-string v3, "Not firing envelope flush as there\'s an ongoing transaction"

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :goto_0
    return-void
.end method

.method synthetic lambda$flush$3$io-sentry-transport-AsyncHttpTransport$EnvelopeSender(ZLio/sentry/SentryEnvelope;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 2
    .param p1, "cached"    # Z
    .param p2, "envelopeWithClientReport"    # Lio/sentry/SentryEnvelope;
    .param p3, "hint"    # Ljava/lang/Object;
    .param p4, "clazz"    # Ljava/lang/Class;

    .line 333
    if-nez p1, :cond_0

    .line 334
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-static {p4, p3, v0}, Lio/sentry/util/LogUtils;->logNotInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 335
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    .line 337
    invoke-interface {v0, v1, p2}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    .line 339
    :cond_0
    return-void
.end method

.method synthetic lambda$flush$5$io-sentry-transport-AsyncHttpTransport$EnvelopeSender(ZLjava/lang/Object;Ljava/lang/Class;)V
    .locals 3
    .param p1, "cached"    # Z
    .param p2, "hint"    # Ljava/lang/Object;
    .param p3, "clazz"    # Ljava/lang/Class;

    .line 351
    if-nez p1, :cond_0

    .line 352
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lio/sentry/util/LogUtils;->logNotInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 353
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    .line 355
    invoke-interface {v0, v1, v2}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    .line 357
    :cond_0
    return-void
.end method

.method synthetic lambda$run$0$io-sentry-transport-AsyncHttpTransport$EnvelopeSender(Lio/sentry/transport/TransportResult;Lio/sentry/hints/SubmissionResult;)V
    .locals 4
    .param p1, "finalResult"    # Lio/sentry/transport/TransportResult;
    .param p2, "submissionResult"    # Lio/sentry/hints/SubmissionResult;

    .line 258
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 263
    invoke-virtual {p1}, Lio/sentry/transport/TransportResult;->isSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 260
    const-string v3, "Marking envelope submission result: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-virtual {p1}, Lio/sentry/transport/TransportResult;->isSuccess()Z

    move-result v0

    invoke-interface {p2, v0}, Lio/sentry/hints/SubmissionResult;->setResult(Z)V

    .line 265
    return-void
.end method

.method public run()V
    .locals 7

    .line 244
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v0, p0}, Lio/sentry/transport/AsyncHttpTransport;->access$102(Lio/sentry/transport/AsyncHttpTransport;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 245
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->failedResult:Lio/sentry/transport/TransportResult;

    .line 247
    .local v0, "result":Lio/sentry/transport/TransportResult;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->flush()Lio/sentry/transport/TransportResult;

    move-result-object v3

    move-object v0, v3

    .line 248
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v3}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Envelope flushed"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    move-object v1, v0

    .line 254
    .local v1, "finalResult":Lio/sentry/transport/TransportResult;
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    const-class v4, Lio/sentry/hints/SubmissionResult;

    new-instance v5, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v1}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda5;-><init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;Lio/sentry/transport/TransportResult;)V

    invoke-static {v3, v4, v5}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 266
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v3, v2}, Lio/sentry/transport/AsyncHttpTransport;->access$102(Lio/sentry/transport/AsyncHttpTransport;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 267
    .end local v1    # "finalResult":Lio/sentry/transport/TransportResult;
    nop

    .line 268
    return-void

    .line 249
    :catchall_0
    move-exception v3

    .line 250
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v4, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v4}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Envelope submission failed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v4, v5, v3, v6, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    nop

    .end local v0    # "result":Lio/sentry/transport/TransportResult;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v0    # "result":Lio/sentry/transport/TransportResult;
    :catchall_1
    move-exception v1

    move-object v3, v0

    .line 254
    .local v3, "finalResult":Lio/sentry/transport/TransportResult;
    iget-object v4, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    const-class v5, Lio/sentry/hints/SubmissionResult;

    new-instance v6, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v3}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda5;-><init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;Lio/sentry/transport/TransportResult;)V

    invoke-static {v4, v5, v6}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 266
    iget-object v4, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v4, v2}, Lio/sentry/transport/AsyncHttpTransport;->access$102(Lio/sentry/transport/AsyncHttpTransport;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 267
    .end local v3    # "finalResult":Lio/sentry/transport/TransportResult;
    throw v1
.end method
