.class public final Lio/sentry/OutboxSender;
.super Lio/sentry/DirectoryProcessor;
.source "OutboxSender.java"

# interfaces
.implements Lio/sentry/IEnvelopeSender;


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final envelopeReader:Lio/sentry/IEnvelopeReader;

.field private final logger:Lio/sentry/ILogger;

.field private final scopes:Lio/sentry/IScopes;

.field private final serializer:Lio/sentry/ISerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/OutboxSender;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lio/sentry/IScopes;Lio/sentry/IEnvelopeReader;Lio/sentry/ISerializer;Lio/sentry/ILogger;JI)V
    .locals 6
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "envelopeReader"    # Lio/sentry/IEnvelopeReader;
    .param p3, "serializer"    # Lio/sentry/ISerializer;
    .param p4, "logger"    # Lio/sentry/ILogger;
    .param p5, "flushTimeoutMillis"    # J
    .param p7, "maxQueueSize"    # I

    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-wide v3, p5

    move v5, p7

    .end local p1    # "scopes":Lio/sentry/IScopes;
    .end local p4    # "logger":Lio/sentry/ILogger;
    .end local p5    # "flushTimeoutMillis":J
    .end local p7    # "maxQueueSize":I
    .local v1, "scopes":Lio/sentry/IScopes;
    .local v2, "logger":Lio/sentry/ILogger;
    .local v3, "flushTimeoutMillis":J
    .local v5, "maxQueueSize":I
    invoke-direct/range {v0 .. v5}, Lio/sentry/DirectoryProcessor;-><init>(Lio/sentry/IScopes;Lio/sentry/ILogger;JI)V

    .line 52
    const-string p1, "Scopes are required."

    invoke-static {v1, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IScopes;

    iput-object p1, v0, Lio/sentry/OutboxSender;->scopes:Lio/sentry/IScopes;

    .line 53
    const-string p1, "Envelope reader is required."

    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IEnvelopeReader;

    iput-object p1, v0, Lio/sentry/OutboxSender;->envelopeReader:Lio/sentry/IEnvelopeReader;

    .line 54
    const-string p1, "Serializer is required."

    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISerializer;

    iput-object p1, v0, Lio/sentry/OutboxSender;->serializer:Lio/sentry/ISerializer;

    .line 55
    const-string p1, "Logger is required."

    invoke-static {v2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, v0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    .line 56
    return-void
.end method

.method private extractSamplingDecision(Lio/sentry/TraceContext;)Lio/sentry/TracesSamplingDecision;
    .locals 7
    .param p1, "traceContext"    # Lio/sentry/TraceContext;

    .line 236
    const/4 v0, 0x1

    .line 267
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 236
    if-eqz p1, :cond_2

    .line 237
    invoke-virtual {p1}, Lio/sentry/TraceContext;->getSampleRate()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "sampleRateString":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 240
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 241
    .local v2, "sampleRate":Ljava/lang/Double;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/sentry/util/SampleRateUtils;->isValidTracesSampleRate(Ljava/lang/Double;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 242
    iget-object v3, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Invalid sample rate parsed from TraceContext: %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    .end local v2    # "sampleRate":Ljava/lang/Double;
    goto :goto_0

    .line 247
    .restart local v2    # "sampleRate":Ljava/lang/Double;
    :cond_0
    invoke-virtual {p1}, Lio/sentry/TraceContext;->getSampleRand()Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, "sampleRandString":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 249
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 250
    .local v5, "sampleRand":Ljava/lang/Double;
    invoke-static {v5, v3}, Lio/sentry/util/SampleRateUtils;->isValidTracesSampleRate(Ljava/lang/Double;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    new-instance v3, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v3, v0, v2, v5}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;)V

    return-object v3

    .line 255
    .end local v5    # "sampleRand":Ljava/lang/Double;
    :cond_1
    new-instance v3, Lio/sentry/TracesSamplingDecision;

    .line 256
    invoke-direct {v3, v0, v2}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;)V

    .line 255
    invoke-static {v3}, Lio/sentry/util/SampleRateUtils;->backfilledSampleRand(Lio/sentry/TracesSamplingDecision;)Lio/sentry/TracesSamplingDecision;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 258
    .end local v2    # "sampleRate":Ljava/lang/Double;
    .end local v4    # "sampleRandString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Unable to parse sample rate from TraceContext: %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    .end local v1    # "sampleRateString":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    new-instance v1, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v1, v0}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    return-object v1
.end method

.method static synthetic lambda$processEnvelope$1(Lio/sentry/hints/Resettable;)V
    .locals 0
    .param p0, "resettable"    # Lio/sentry/hints/Resettable;

    .line 230
    invoke-interface {p0}, Lio/sentry/hints/Resettable;->reset()V

    return-void
.end method

.method private logEnvelopeItemNull(Lio/sentry/SentryEnvelopeItem;I)V
    .locals 4
    .param p1, "item"    # Lio/sentry/SentryEnvelopeItem;
    .param p2, "itemIndex"    # I

    .line 271
    iget-object v0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 274
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 275
    invoke-virtual {p1}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 271
    const-string v3, "Item %d of type %s returned null by the parser."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method private logItemCaptured(I)V
    .locals 4
    .param p1, "itemIndex"    # I

    .line 289
    iget-object v0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Item %d is being captured."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    return-void
.end method

.method private logTimeout(Lio/sentry/protocol/SentryId;)V
    .locals 4
    .param p1, "eventId"    # Lio/sentry/protocol/SentryId;

    .line 293
    iget-object v0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Timed out waiting for event id submission: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method private logUnexpectedEventId(Lio/sentry/SentryEnvelope;Lio/sentry/protocol/SentryId;I)V
    .locals 4
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "eventId"    # Lio/sentry/protocol/SentryId;
    .param p3, "itemIndex"    # I

    .line 280
    iget-object v0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 283
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 284
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    filled-new-array {v2, v3, p2}, [Ljava/lang/Object;

    move-result-object v2

    .line 280
    const-string v3, "Item %d of has a different event id (%s) to the envelope header (%s)"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    return-void
.end method

.method private processEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 9
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 121
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v2}, Lio/sentry/util/CollectionUtils;->size(Ljava/lang/Iterable;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 118
    const-string v3, "Processing Envelope with %d item(s)"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "currentItem":I
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/SentryEnvelopeItem;

    .line 125
    .local v2, "item":Lio/sentry/SentryEnvelopeItem;
    add-int/lit8 v0, v0, 0x1

    .line 127
    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v3

    if-nez v3, :cond_0

    .line 128
    iget-object v3, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Item %d has no header"

    invoke-interface {v3, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    goto :goto_0

    .line 131
    :cond_0
    sget-object v3, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Item failed to process."

    if-eqz v3, :cond_5

    .line 132
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 134
    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v7, Lio/sentry/OutboxSender;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 135
    .local v3, "eventReader":Ljava/io/Reader;
    :try_start_1
    iget-object v5, p0, Lio/sentry/OutboxSender;->serializer:Lio/sentry/ISerializer;

    const-class v6, Lio/sentry/SentryEvent;

    invoke-interface {v5, v3, v6}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/SentryEvent;

    .line 136
    .local v5, "event":Lio/sentry/SentryEvent;
    if-nez v5, :cond_1

    .line 137
    invoke-direct {p0, v2, v0}, Lio/sentry/OutboxSender;->logEnvelopeItemNull(Lio/sentry/SentryEnvelopeItem;I)V

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {v5}, Lio/sentry/SentryEvent;->getSdk()Lio/sentry/protocol/SdkVersion;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 140
    invoke-virtual {v5}, Lio/sentry/SentryEvent;->getSdk()Lio/sentry/protocol/SdkVersion;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/protocol/SdkVersion;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Lio/sentry/util/HintUtils;->setIsFromHybridSdk(Lio/sentry/Hint;Ljava/lang/String;)V

    .line 142
    :cond_2
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 143
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    invoke-virtual {v5}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 144
    invoke-virtual {v5}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    invoke-direct {p0, p1, v6, v0}, Lio/sentry/OutboxSender;->logUnexpectedEventId(Lio/sentry/SentryEnvelope;Lio/sentry/protocol/SentryId;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :try_start_2
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 145
    goto/16 :goto_0

    .line 147
    :cond_3
    :try_start_3
    iget-object v6, p0, Lio/sentry/OutboxSender;->scopes:Lio/sentry/IScopes;

    invoke-interface {v6, v5, p2}, Lio/sentry/IScopes;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 148
    invoke-direct {p0, v0}, Lio/sentry/OutboxSender;->logItemCaptured(I)V

    .line 150
    invoke-direct {p0, p2}, Lio/sentry/OutboxSender;->waitFlush(Lio/sentry/Hint;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 151
    invoke-virtual {v5}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    invoke-direct {p0, v6}, Lio/sentry/OutboxSender;->logTimeout(Lio/sentry/protocol/SentryId;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    :try_start_4
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 152
    goto/16 :goto_8

    .line 155
    .end local v5    # "event":Lio/sentry/SentryEvent;
    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 132
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "currentItem":I
    .end local v2    # "item":Lio/sentry/SentryEnvelopeItem;
    .end local p1    # "envelope":Lio/sentry/SentryEnvelope;
    .end local p2    # "hint":Lio/sentry/Hint;
    :goto_2
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 155
    .end local v3    # "eventReader":Ljava/io/Reader;
    .restart local v0    # "currentItem":I
    .restart local v2    # "item":Lio/sentry/SentryEnvelopeItem;
    .restart local p1    # "envelope":Lio/sentry/SentryEnvelope;
    .restart local p2    # "hint":Lio/sentry/Hint;
    :catchall_2
    move-exception v3

    .line 156
    .local v3, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v5, v6, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_3
    goto/16 :goto_7

    .line 158
    :cond_5
    sget-object v3, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v5

    invoke-virtual {v3, v5}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 159
    :try_start_7
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 161
    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v7, Lio/sentry/OutboxSender;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 163
    .local v3, "reader":Ljava/io/Reader;
    :try_start_8
    iget-object v5, p0, Lio/sentry/OutboxSender;->serializer:Lio/sentry/ISerializer;

    const-class v6, Lio/sentry/protocol/SentryTransaction;

    .line 164
    invoke-interface {v5, v3, v6}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/protocol/SentryTransaction;

    .line 165
    .local v5, "transaction":Lio/sentry/protocol/SentryTransaction;
    if-nez v5, :cond_6

    .line 166
    invoke-direct {p0, v2, v0}, Lio/sentry/OutboxSender;->logEnvelopeItemNull(Lio/sentry/SentryEnvelopeItem;I)V

    goto :goto_4

    .line 168
    :cond_6
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 169
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    invoke-virtual {v5}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 170
    invoke-virtual {v5}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    invoke-direct {p0, p1, v6, v0}, Lio/sentry/OutboxSender;->logUnexpectedEventId(Lio/sentry/SentryEnvelope;Lio/sentry/protocol/SentryId;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 192
    :try_start_9
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 171
    goto/16 :goto_0

    .line 175
    :cond_7
    :try_start_a
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SentryEnvelopeHeader;->getTraceContext()Lio/sentry/TraceContext;

    move-result-object v6

    .line 176
    .local v6, "traceContext":Lio/sentry/TraceContext;
    invoke-virtual {v5}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 179
    nop

    .line 180
    invoke-virtual {v5}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v7

    .line 181
    invoke-virtual {v7}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v7

    .line 182
    invoke-direct {p0, v6}, Lio/sentry/OutboxSender;->extractSamplingDecision(Lio/sentry/TraceContext;)Lio/sentry/TracesSamplingDecision;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/sentry/SpanContext;->setSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    .line 184
    :cond_8
    iget-object v7, p0, Lio/sentry/OutboxSender;->scopes:Lio/sentry/IScopes;

    invoke-interface {v7, v5, v6, p2}, Lio/sentry/IScopes;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 185
    invoke-direct {p0, v0}, Lio/sentry/OutboxSender;->logItemCaptured(I)V

    .line 187
    invoke-direct {p0, p2}, Lio/sentry/OutboxSender;->waitFlush(Lio/sentry/Hint;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 188
    invoke-virtual {v5}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v7

    invoke-direct {p0, v7}, Lio/sentry/OutboxSender;->logTimeout(Lio/sentry/protocol/SentryId;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 192
    :try_start_b
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 189
    goto/16 :goto_8

    .line 192
    .end local v5    # "transaction":Lio/sentry/protocol/SentryTransaction;
    .end local v6    # "traceContext":Lio/sentry/TraceContext;
    :cond_9
    :goto_4
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_6

    .line 159
    :catchall_3
    move-exception v5

    :try_start_c
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v6

    :try_start_d
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "currentItem":I
    .end local v2    # "item":Lio/sentry/SentryEnvelopeItem;
    .end local p1    # "envelope":Lio/sentry/SentryEnvelope;
    .end local p2    # "hint":Lio/sentry/Hint;
    :goto_5
    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 192
    .end local v3    # "reader":Ljava/io/Reader;
    .restart local v0    # "currentItem":I
    .restart local v2    # "item":Lio/sentry/SentryEnvelopeItem;
    .restart local p1    # "envelope":Lio/sentry/SentryEnvelope;
    .restart local p2    # "hint":Lio/sentry/Hint;
    :catchall_5
    move-exception v3

    .line 193
    .local v3, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v5, v6, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_6
    goto :goto_7

    .line 197
    :cond_a
    new-instance v3, Lio/sentry/SentryEnvelope;

    .line 199
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v4

    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryEnvelopeHeader;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/SentryEnvelopeItem;)V

    .line 200
    .local v3, "newEnvelope":Lio/sentry/SentryEnvelope;
    iget-object v4, p0, Lio/sentry/OutboxSender;->scopes:Lio/sentry/IScopes;

    invoke-interface {v4, v3, p2}, Lio/sentry/IScopes;->captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 201
    iget-object v4, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 204
    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SentryItemType;->getItemType()Ljava/lang/String;

    move-result-object v6

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 201
    const-string v7, "%s item %d is being captured."

    invoke-interface {v4, v5, v7, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-direct {p0, p2}, Lio/sentry/OutboxSender;->waitFlush(Lio/sentry/Hint;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 208
    iget-object v1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 211
    invoke-virtual {v2}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryItemType;->getItemType()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 208
    const-string v6, "Timed out waiting for item type submission: %s"

    invoke-interface {v1, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    goto :goto_8

    .line 216
    .end local v3    # "newEnvelope":Lio/sentry/SentryEnvelope;
    :cond_b
    :goto_7
    invoke-static {p2}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object v3

    .line 217
    .local v3, "sentrySdkHint":Ljava/lang/Object;
    instance-of v4, v3, Lio/sentry/hints/SubmissionResult;

    if-eqz v4, :cond_c

    .line 218
    move-object v4, v3

    check-cast v4, Lio/sentry/hints/SubmissionResult;

    invoke-interface {v4}, Lio/sentry/hints/SubmissionResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_c

    .line 221
    iget-object v1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 221
    const-string v6, "Envelope had a failed capture at item %d. No more items will be sent."

    invoke-interface {v1, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    goto :goto_8

    .line 230
    :cond_c
    const-class v4, Lio/sentry/hints/Resettable;

    new-instance v5, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p2, v4, v5}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 231
    .end local v2    # "item":Lio/sentry/SentryEnvelopeItem;
    .end local v3    # "sentrySdkHint":Ljava/lang/Object;
    goto/16 :goto_0

    .line 232
    :cond_d
    :goto_8
    return-void
.end method

.method private waitFlush(Lio/sentry/Hint;)Z
    .locals 3
    .param p1, "hint"    # Lio/sentry/Hint;

    .line 297
    invoke-static {p1}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "sentrySdkHint":Ljava/lang/Object;
    instance-of v1, v0, Lio/sentry/hints/Flushable;

    if-eqz v1, :cond_0

    .line 299
    move-object v1, v0

    check-cast v1, Lio/sentry/hints/Flushable;

    invoke-interface {v1}, Lio/sentry/hints/Flushable;->waitFlush()Z

    move-result v1

    return v1

    .line 301
    :cond_0
    const-class v1, Lio/sentry/hints/Flushable;

    iget-object v2, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    invoke-static {v1, v0, v2}, Lio/sentry/util/LogUtils;->logNotInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 303
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected isRelevantFileName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .line 102
    if-eqz p1, :cond_0

    .line 103
    const-string v0, "session"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const-string v0, "previous_session"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const-string v0, "startup_crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0
.end method

.method synthetic lambda$processFile$0$io-sentry-OutboxSender(Ljava/io/File;Lio/sentry/hints/Retryable;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "retryable"    # Lio/sentry/hints/Retryable;

    .line 86
    const-string v0, "Failed to delete: %s"

    invoke-interface {p2}, Lio/sentry/hints/Retryable;->isRetry()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v1, v0, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic processDirectory(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 33
    invoke-super {p0, p1}, Lio/sentry/DirectoryProcessor;->processDirectory(Ljava/io/File;)V

    return-void
.end method

.method public processEnvelopeFile(Ljava/lang/String;Lio/sentry/Hint;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 111
    const-string v0, "Path is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lio/sentry/OutboxSender;->processFile(Ljava/io/File;Lio/sentry/Hint;)V

    .line 114
    return-void
.end method

.method protected processFile(Ljava/io/File;Lio/sentry/Hint;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 60
    const-string v0, "File is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/OutboxSender;->isRelevantFileName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "File \'%s\' should be ignored."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    return-void

    .line 67
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 68
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_1
    iget-object v1, p0, Lio/sentry/OutboxSender;->envelopeReader:Lio/sentry/IEnvelopeReader;

    invoke-interface {v1, v0}, Lio/sentry/IEnvelopeReader;->read(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;

    move-result-object v1

    .line 69
    .local v1, "envelope":Lio/sentry/SentryEnvelope;
    if-nez v1, :cond_1

    .line 70
    iget-object v2, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Stream from path %s resulted in a null envelope."

    .line 73
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 70
    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-direct {p0, v1, p2}, Lio/sentry/OutboxSender;->processEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V

    .line 76
    iget-object v2, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "File \'%s\' is done."

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .end local v1    # "envelope":Lio/sentry/SentryEnvelope;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 81
    .end local v0    # "stream":Ljava/io/InputStream;
    const-class v0, Lio/sentry/hints/Retryable;

    iget-object v1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    new-instance v2, Lio/sentry/OutboxSender$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lio/sentry/OutboxSender$$ExternalSyntheticLambda1;-><init>(Lio/sentry/OutboxSender;Ljava/io/File;)V

    goto :goto_2

    .line 67
    .restart local v0    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "hint":Lio/sentry/Hint;
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 81
    .end local v0    # "stream":Ljava/io/InputStream;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "hint":Lio/sentry/Hint;
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    iget-object v1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error processing envelope."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    const-class v0, Lio/sentry/hints/Retryable;

    iget-object v1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    new-instance v2, Lio/sentry/OutboxSender$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lio/sentry/OutboxSender$$ExternalSyntheticLambda1;-><init>(Lio/sentry/OutboxSender;Ljava/io/File;)V

    :goto_2
    invoke-static {p2, v0, v1, v2}, Lio/sentry/util/HintUtils;->runIfHasTypeLogIfNot(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 96
    nop

    .line 97
    return-void

    .line 81
    :goto_3
    const-class v1, Lio/sentry/hints/Retryable;

    iget-object v2, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    new-instance v3, Lio/sentry/OutboxSender$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lio/sentry/OutboxSender$$ExternalSyntheticLambda1;-><init>(Lio/sentry/OutboxSender;Ljava/io/File;)V

    invoke-static {p2, v1, v2, v3}, Lio/sentry/util/HintUtils;->runIfHasTypeLogIfNot(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 96
    throw v0
.end method
