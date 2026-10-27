.class public final Lio/sentry/SentryEnvelope;
.super Ljava/lang/Object;
.source "SentryEnvelope.java"


# instance fields
.field private final header:Lio/sentry/SentryEnvelopeHeader;

.field private final items:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lio/sentry/SentryEnvelopeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V
    .locals 1
    .param p1, "header"    # Lio/sentry/SentryEnvelopeHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryEnvelopeHeader;",
            "Ljava/lang/Iterable<",
            "Lio/sentry/SentryEnvelopeItem;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p2, "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/sentry/SentryEnvelopeItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "SentryEnvelopeHeader is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryEnvelopeHeader;

    iput-object v0, p0, Lio/sentry/SentryEnvelope;->header:Lio/sentry/SentryEnvelopeHeader;

    .line 36
    const-string v0, "SentryEnvelope items are required."

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iput-object v0, p0, Lio/sentry/SentryEnvelope;->items:Ljava/lang/Iterable;

    .line 37
    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/SentryEnvelopeItem;)V
    .locals 2
    .param p1, "eventId"    # Lio/sentry/protocol/SentryId;
    .param p2, "sdkVersion"    # Lio/sentry/protocol/SdkVersion;
    .param p3, "item"    # Lio/sentry/SentryEnvelopeItem;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "SentryEnvelopeItem is required."

    invoke-static {p3, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    new-instance v0, Lio/sentry/SentryEnvelopeHeader;

    invoke-direct {v0, p1, p2}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;)V

    iput-object v0, p0, Lio/sentry/SentryEnvelope;->header:Lio/sentry/SentryEnvelopeHeader;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelopeItem;>;"
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iput-object v0, p0, Lio/sentry/SentryEnvelope;->items:Ljava/lang/Iterable;

    .line 59
    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Ljava/lang/Iterable;)V
    .locals 1
    .param p1, "eventId"    # Lio/sentry/protocol/SentryId;
    .param p2, "sdkVersion"    # Lio/sentry/protocol/SdkVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/protocol/SentryId;",
            "Lio/sentry/protocol/SdkVersion;",
            "Ljava/lang/Iterable<",
            "Lio/sentry/SentryEnvelopeItem;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p3, "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/sentry/SentryEnvelopeItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lio/sentry/SentryEnvelopeHeader;

    invoke-direct {v0, p1, p2}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;)V

    iput-object v0, p0, Lio/sentry/SentryEnvelope;->header:Lio/sentry/SentryEnvelopeHeader;

    .line 45
    const-string v0, "SentryEnvelope items are required."

    invoke-static {p3, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iput-object v0, p0, Lio/sentry/SentryEnvelope;->items:Ljava/lang/Iterable;

    .line 46
    return-void
.end method

.method public static from(Lio/sentry/ISerializer;Lio/sentry/ProfilingTraceData;JLio/sentry/protocol/SdkVersion;)Lio/sentry/SentryEnvelope;
    .locals 3
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "profilingTraceData"    # Lio/sentry/ProfilingTraceData;
    .param p2, "maxTraceFileSize"    # J
    .param p4, "sdkVersion"    # Lio/sentry/protocol/SdkVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/exception/SentryEnvelopeException;
        }
    .end annotation

    .line 94
    const-string v0, "Serializer is required."

    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    const-string v0, "Profiling trace data is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    new-instance v0, Lio/sentry/SentryEnvelope;

    new-instance v1, Lio/sentry/protocol/SentryId;

    .line 98
    invoke-virtual {p1}, Lio/sentry/ProfilingTraceData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/sentry/protocol/SentryId;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-static {p1, p2, p3, p0}, Lio/sentry/SentryEnvelopeItem;->fromProfilingTrace(Lio/sentry/ProfilingTraceData;JLio/sentry/ISerializer;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v2

    invoke-direct {v0, v1, p4, v2}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/SentryEnvelopeItem;)V

    .line 97
    return-object v0
.end method

.method public static from(Lio/sentry/ISerializer;Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/SdkVersion;)Lio/sentry/SentryEnvelope;
    .locals 3
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .param p2, "sdkVersion"    # Lio/sentry/protocol/SdkVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    const-string v0, "Serializer is required."

    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    const-string v0, "item is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    new-instance v0, Lio/sentry/SentryEnvelope;

    .line 84
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    invoke-static {p0, p1}, Lio/sentry/SentryEnvelopeItem;->fromEvent(Lio/sentry/ISerializer;Lio/sentry/SentryBaseEvent;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/SentryEnvelopeItem;)V

    .line 83
    return-object v0
.end method

.method public static from(Lio/sentry/ISerializer;Lio/sentry/Session;Lio/sentry/protocol/SdkVersion;)Lio/sentry/SentryEnvelope;
    .locals 3
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "session"    # Lio/sentry/Session;
    .param p2, "sdkVersion"    # Lio/sentry/protocol/SdkVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const-string v0, "Serializer is required."

    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    const-string v0, "session is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    new-instance v0, Lio/sentry/SentryEnvelope;

    .line 71
    invoke-static {p0, p1}, Lio/sentry/SentryEnvelopeItem;->fromSession(Lio/sentry/ISerializer;Lio/sentry/Session;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, p2, v1}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/SentryEnvelopeItem;)V

    .line 70
    return-object v0
.end method


# virtual methods
.method public getHeader()Lio/sentry/SentryEnvelopeHeader;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/sentry/SentryEnvelope;->header:Lio/sentry/SentryEnvelopeHeader;

    return-object v0
.end method

.method public getItems()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lio/sentry/SentryEnvelopeItem;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lio/sentry/SentryEnvelope;->items:Ljava/lang/Iterable;

    return-object v0
.end method
