.class public Lio/sentry/SpanContext;
.super Ljava/lang/Object;
.source "SpanContext.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SpanContext$JsonKeys;,
        Lio/sentry/SpanContext$Deserializer;
    }
.end annotation


# static fields
.field public static final DEFAULT_ORIGIN:Ljava/lang/String; = "manual"

.field public static final TYPE:Ljava/lang/String; = "trace"


# instance fields
.field protected baggage:Lio/sentry/Baggage;

.field protected data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected description:Ljava/lang/String;

.field protected featureFlags:Lio/sentry/featureflags/IFeatureFlagBuffer;

.field private instrumenter:Lio/sentry/Instrumenter;

.field protected op:Ljava/lang/String;

.field protected origin:Ljava/lang/String;

.field private parentSpanId:Lio/sentry/SpanId;

.field private profilerId:Lio/sentry/protocol/SentryId;

.field private transient samplingDecision:Lio/sentry/TracesSamplingDecision;

.field private final spanId:Lio/sentry/SpanId;

.field protected status:Lio/sentry/SpanStatus;

.field protected tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final traceId:Lio/sentry/protocol/SentryId;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SpanContext;)V
    .locals 3
    .param p1, "spanContext"    # Lio/sentry/SpanContext;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SpanContext;->tags:Ljava/util/Map;

    .line 53
    const-string v0, "manual"

    iput-object v0, p0, Lio/sentry/SpanContext;->origin:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SpanContext;->data:Ljava/util/Map;

    .line 59
    sget-object v0, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    iput-object v0, p0, Lio/sentry/SpanContext;->instrumenter:Lio/sentry/Instrumenter;

    .line 63
    invoke-static {}, Lio/sentry/featureflags/SpanFeatureFlagBuffer;->create()Lio/sentry/featureflags/IFeatureFlagBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SpanContext;->featureFlags:Lio/sentry/featureflags/IFeatureFlagBuffer;

    .line 69
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/SpanContext;->profilerId:Lio/sentry/protocol/SentryId;

    .line 125
    iget-object v0, p1, Lio/sentry/SpanContext;->traceId:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/SpanContext;->traceId:Lio/sentry/protocol/SentryId;

    .line 126
    iget-object v0, p1, Lio/sentry/SpanContext;->spanId:Lio/sentry/SpanId;

    iput-object v0, p0, Lio/sentry/SpanContext;->spanId:Lio/sentry/SpanId;

    .line 127
    iget-object v0, p1, Lio/sentry/SpanContext;->parentSpanId:Lio/sentry/SpanId;

    iput-object v0, p0, Lio/sentry/SpanContext;->parentSpanId:Lio/sentry/SpanId;

    .line 128
    iget-object v0, p1, Lio/sentry/SpanContext;->samplingDecision:Lio/sentry/TracesSamplingDecision;

    invoke-virtual {p0, v0}, Lio/sentry/SpanContext;->setSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    .line 129
    iget-object v0, p1, Lio/sentry/SpanContext;->op:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/SpanContext;->op:Ljava/lang/String;

    .line 130
    iget-object v0, p1, Lio/sentry/SpanContext;->description:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/SpanContext;->description:Ljava/lang/String;

    .line 131
    iget-object v0, p1, Lio/sentry/SpanContext;->status:Lio/sentry/SpanStatus;

    iput-object v0, p0, Lio/sentry/SpanContext;->status:Lio/sentry/SpanStatus;

    .line 132
    iget-object v0, p1, Lio/sentry/SpanContext;->tags:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 133
    .local v0, "copiedTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 134
    iput-object v0, p0, Lio/sentry/SpanContext;->tags:Ljava/util/Map;

    .line 136
    :cond_0
    iget-object v1, p1, Lio/sentry/SpanContext;->unknown:Ljava/util/Map;

    .line 137
    invoke-static {v1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 138
    .local v1, "copiedUnknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    .line 139
    iput-object v1, p0, Lio/sentry/SpanContext;->unknown:Ljava/util/Map;

    .line 141
    :cond_1
    iget-object v2, p1, Lio/sentry/SpanContext;->baggage:Lio/sentry/Baggage;

    iput-object v2, p0, Lio/sentry/SpanContext;->baggage:Lio/sentry/Baggage;

    .line 142
    iget-object v2, p1, Lio/sentry/SpanContext;->data:Ljava/util/Map;

    invoke-static {v2}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 143
    .local v2, "copiedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_2

    .line 144
    iput-object v2, p0, Lio/sentry/SpanContext;->data:Ljava/util/Map;

    .line 146
    :cond_2
    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;Lio/sentry/SpanStatus;Ljava/lang/String;)V
    .locals 4
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;
    .param p2, "spanId"    # Lio/sentry/SpanId;
    .param p3, "parentSpanId"    # Lio/sentry/SpanId;
    .param p4, "operation"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "samplingDecision"    # Lio/sentry/TracesSamplingDecision;
    .param p7, "status"    # Lio/sentry/SpanStatus;
    .param p8, "origin"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SpanContext;->tags:Ljava/util/Map;

    .line 53
    const-string v0, "manual"

    iput-object v0, p0, Lio/sentry/SpanContext;->origin:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SpanContext;->data:Ljava/util/Map;

    .line 59
    sget-object v0, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    iput-object v0, p0, Lio/sentry/SpanContext;->instrumenter:Lio/sentry/Instrumenter;

    .line 63
    invoke-static {}, Lio/sentry/featureflags/SpanFeatureFlagBuffer;->create()Lio/sentry/featureflags/IFeatureFlagBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SpanContext;->featureFlags:Lio/sentry/featureflags/IFeatureFlagBuffer;

    .line 69
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/SpanContext;->profilerId:Lio/sentry/protocol/SentryId;

    .line 104
    const-string v0, "traceId is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/SpanContext;->traceId:Lio/sentry/protocol/SentryId;

    .line 105
    const-string v0, "spanId is required"

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SpanId;

    iput-object v0, p0, Lio/sentry/SpanContext;->spanId:Lio/sentry/SpanId;

    .line 106
    const-string v0, "operation is required"

    invoke-static {p4, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/SpanContext;->op:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lio/sentry/SpanContext;->parentSpanId:Lio/sentry/SpanId;

    .line 108
    iput-object p5, p0, Lio/sentry/SpanContext;->description:Ljava/lang/String;

    .line 109
    iput-object p7, p0, Lio/sentry/SpanContext;->status:Lio/sentry/SpanStatus;

    .line 110
    iput-object p8, p0, Lio/sentry/SpanContext;->origin:Ljava/lang/String;

    .line 111
    invoke-virtual {p0, p6}, Lio/sentry/SpanContext;->setSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    .line 113
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/ScopesAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    move-result-object v0

    .line 114
    .local v0, "threadChecker":Lio/sentry/util/thread/IThreadChecker;
    iget-object v1, p0, Lio/sentry/SpanContext;->data:Ljava/util/Map;

    .line 115
    invoke-interface {v0}, Lio/sentry/util/thread/IThreadChecker;->currentThreadSystemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 114
    const-string v3, "thread.id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lio/sentry/SpanContext;->data:Ljava/util/Map;

    const-string v2, "thread.name"

    invoke-interface {v0}, Lio/sentry/util/thread/IThreadChecker;->getCurrentThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;)V
    .locals 9
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;
    .param p2, "spanId"    # Lio/sentry/SpanId;
    .param p3, "operation"    # Ljava/lang/String;
    .param p4, "parentSpanId"    # Lio/sentry/SpanId;
    .param p5, "samplingDecision"    # Lio/sentry/TracesSamplingDecision;

    .line 91
    const/4 v7, 0x0

    const-string v8, "manual"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v3, p4

    move-object v6, p5

    .end local p1    # "traceId":Lio/sentry/protocol/SentryId;
    .end local p2    # "spanId":Lio/sentry/SpanId;
    .end local p3    # "operation":Ljava/lang/String;
    .end local p4    # "parentSpanId":Lio/sentry/SpanId;
    .end local p5    # "samplingDecision":Lio/sentry/TracesSamplingDecision;
    .local v1, "traceId":Lio/sentry/protocol/SentryId;
    .local v2, "spanId":Lio/sentry/SpanId;
    .local v3, "parentSpanId":Lio/sentry/SpanId;
    .local v4, "operation":Ljava/lang/String;
    .local v6, "samplingDecision":Lio/sentry/TracesSamplingDecision;
    invoke-direct/range {v0 .. v8}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;Lio/sentry/SpanStatus;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "operation"    # Ljava/lang/String;

    .line 82
    new-instance v1, Lio/sentry/protocol/SentryId;

    invoke-direct {v1}, Lio/sentry/protocol/SentryId;-><init>()V

    new-instance v2, Lio/sentry/SpanId;

    invoke-direct {v2}, Lio/sentry/SpanId;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    .end local p1    # "operation":Ljava/lang/String;
    .local v3, "operation":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V
    .locals 6
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "samplingDecision"    # Lio/sentry/TracesSamplingDecision;

    .line 73
    new-instance v1, Lio/sentry/protocol/SentryId;

    invoke-direct {v1}, Lio/sentry/protocol/SentryId;-><init>()V

    new-instance v2, Lio/sentry/SpanId;

    invoke-direct {v2}, Lio/sentry/SpanId;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    .end local p1    # "operation":Ljava/lang/String;
    .end local p2    # "samplingDecision":Lio/sentry/TracesSamplingDecision;
    .local v3, "operation":Ljava/lang/String;
    .local v5, "samplingDecision":Lio/sentry/TracesSamplingDecision;
    invoke-direct/range {v0 .. v5}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;)V

    .line 74
    return-void
.end method


# virtual methods
.method public addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Boolean;

    .line 332
    iget-object v0, p0, Lio/sentry/SpanContext;->featureFlags:Lio/sentry/featureflags/IFeatureFlagBuffer;

    invoke-interface {v0, p1, p2}, Lio/sentry/featureflags/IFeatureFlagBuffer;->add(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 333
    return-void
.end method

.method public copyForChild(Ljava/lang/String;Lio/sentry/SpanId;Lio/sentry/SpanId;)Lio/sentry/SpanContext;
    .locals 9
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "parentSpanId"    # Lio/sentry/SpanId;
    .param p3, "spanId"    # Lio/sentry/SpanId;

    .line 291
    new-instance v0, Lio/sentry/SpanContext;

    iget-object v1, p0, Lio/sentry/SpanContext;->traceId:Lio/sentry/protocol/SentryId;

    .line 293
    if-nez p3, :cond_0

    new-instance v2, Lio/sentry/SpanId;

    invoke-direct {v2}, Lio/sentry/SpanId;-><init>()V

    goto :goto_0

    :cond_0
    move-object v2, p3

    :goto_0
    iget-object v6, p0, Lio/sentry/SpanContext;->samplingDecision:Lio/sentry/TracesSamplingDecision;

    const/4 v7, 0x0

    const-string v8, "manual"

    const/4 v5, 0x0

    move-object v4, p1

    move-object v3, p2

    .end local p1    # "operation":Ljava/lang/String;
    .end local p2    # "parentSpanId":Lio/sentry/SpanId;
    .local v3, "parentSpanId":Lio/sentry/SpanId;
    .local v4, "operation":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;Lio/sentry/SpanStatus;Ljava/lang/String;)V

    .line 291
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 304
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 305
    :cond_0
    instance-of v1, p1, Lio/sentry/SpanContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 306
    :cond_1
    move-object v1, p1

    check-cast v1, Lio/sentry/SpanContext;

    .line 307
    .local v1, "that":Lio/sentry/SpanContext;
    iget-object v3, p0, Lio/sentry/SpanContext;->traceId:Lio/sentry/protocol/SentryId;

    iget-object v4, v1, Lio/sentry/SpanContext;->traceId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v3, v4}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/SpanContext;->spanId:Lio/sentry/SpanId;

    iget-object v4, v1, Lio/sentry/SpanContext;->spanId:Lio/sentry/SpanId;

    .line 308
    invoke-virtual {v3, v4}, Lio/sentry/SpanId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/SpanContext;->parentSpanId:Lio/sentry/SpanId;

    iget-object v4, v1, Lio/sentry/SpanContext;->parentSpanId:Lio/sentry/SpanId;

    .line 309
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/SpanContext;->op:Ljava/lang/String;

    iget-object v4, v1, Lio/sentry/SpanContext;->op:Ljava/lang/String;

    .line 310
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/SpanContext;->description:Ljava/lang/String;

    iget-object v4, v1, Lio/sentry/SpanContext;->description:Ljava/lang/String;

    .line 311
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    invoke-virtual {p0}, Lio/sentry/SpanContext;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v3

    invoke-virtual {v1}, Lio/sentry/SpanContext;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 307
    :goto_0
    return v0
.end method

.method public getBaggage()Lio/sentry/Baggage;
    .locals 1

    .line 268
    iget-object v0, p0, Lio/sentry/SpanContext;->baggage:Lio/sentry/Baggage;

    return-object v0
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lio/sentry/SpanContext;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lio/sentry/SpanContext;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureFlagBuffer()Lio/sentry/featureflags/IFeatureFlagBuffer;
    .locals 1

    .line 337
    iget-object v0, p0, Lio/sentry/SpanContext;->featureFlags:Lio/sentry/featureflags/IFeatureFlagBuffer;

    return-object v0
.end method

.method public getInstrumenter()Lio/sentry/Instrumenter;
    .locals 1

    .line 260
    iget-object v0, p0, Lio/sentry/SpanContext;->instrumenter:Lio/sentry/Instrumenter;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lio/sentry/SpanContext;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lio/sentry/SpanContext;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getParentSpanId()Lio/sentry/SpanId;
    .locals 1

    .line 184
    iget-object v0, p0, Lio/sentry/SpanContext;->parentSpanId:Lio/sentry/SpanId;

    return-object v0
.end method

.method public getProfileSampled()Ljava/lang/Boolean;
    .locals 1

    .line 216
    iget-object v0, p0, Lio/sentry/SpanContext;->samplingDecision:Lio/sentry/TracesSamplingDecision;

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x0

    return-object v0

    .line 220
    :cond_0
    iget-object v0, p0, Lio/sentry/SpanContext;->samplingDecision:Lio/sentry/TracesSamplingDecision;

    invoke-virtual {v0}, Lio/sentry/TracesSamplingDecision;->getProfileSampled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getProfilerId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 322
    iget-object v0, p0, Lio/sentry/SpanContext;->profilerId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getSampled()Ljava/lang/Boolean;
    .locals 1

    .line 208
    iget-object v0, p0, Lio/sentry/SpanContext;->samplingDecision:Lio/sentry/TracesSamplingDecision;

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x0

    return-object v0

    .line 212
    :cond_0
    iget-object v0, p0, Lio/sentry/SpanContext;->samplingDecision:Lio/sentry/TracesSamplingDecision;

    invoke-virtual {v0}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSamplingDecision()Lio/sentry/TracesSamplingDecision;
    .locals 1

    .line 204
    iget-object v0, p0, Lio/sentry/SpanContext;->samplingDecision:Lio/sentry/TracesSamplingDecision;

    return-object v0
.end method

.method public getSpanId()Lio/sentry/SpanId;
    .locals 1

    .line 178
    iget-object v0, p0, Lio/sentry/SpanContext;->spanId:Lio/sentry/SpanId;

    return-object v0
.end method

.method public getStatus()Lio/sentry/SpanStatus;
    .locals 1

    .line 196
    iget-object v0, p0, Lio/sentry/SpanContext;->status:Lio/sentry/SpanStatus;

    return-object v0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lio/sentry/SpanContext;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getTraceId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 173
    iget-object v0, p0, Lio/sentry/SpanContext;->traceId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lio/sentry/SpanContext;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 317
    iget-object v0, p0, Lio/sentry/SpanContext;->traceId:Lio/sentry/protocol/SentryId;

    iget-object v1, p0, Lio/sentry/SpanContext;->spanId:Lio/sentry/SpanId;

    iget-object v2, p0, Lio/sentry/SpanContext;->parentSpanId:Lio/sentry/SpanId;

    iget-object v3, p0, Lio/sentry/SpanContext;->op:Ljava/lang/String;

    iget-object v4, p0, Lio/sentry/SpanContext;->description:Ljava/lang/String;

    invoke-virtual {p0}, Lio/sentry/SpanContext;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 4
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 358
    const-string v0, "trace_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 359
    iget-object v0, p0, Lio/sentry/SpanContext;->traceId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/SentryId;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 360
    const-string v0, "span_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 361
    iget-object v0, p0, Lio/sentry/SpanContext;->spanId:Lio/sentry/SpanId;

    invoke-virtual {v0, p1, p2}, Lio/sentry/SpanId;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 362
    iget-object v0, p0, Lio/sentry/SpanContext;->parentSpanId:Lio/sentry/SpanId;

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "parent_span_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 364
    iget-object v0, p0, Lio/sentry/SpanContext;->parentSpanId:Lio/sentry/SpanId;

    invoke-virtual {v0, p1, p2}, Lio/sentry/SpanId;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 366
    :cond_0
    const-string v0, "op"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SpanContext;->op:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 367
    iget-object v0, p0, Lio/sentry/SpanContext;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 368
    const-string v0, "description"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SpanContext;->description:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 370
    :cond_1
    invoke-virtual {p0}, Lio/sentry/SpanContext;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 371
    const-string v0, "status"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    invoke-virtual {p0}, Lio/sentry/SpanContext;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 373
    :cond_2
    iget-object v0, p0, Lio/sentry/SpanContext;->origin:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 374
    const-string v0, "origin"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SpanContext;->origin:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 376
    :cond_3
    iget-object v0, p0, Lio/sentry/SpanContext;->tags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 377
    const-string v0, "tags"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SpanContext;->tags:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 379
    :cond_4
    iget-object v0, p0, Lio/sentry/SpanContext;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 380
    const-string v0, "data"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SpanContext;->data:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 382
    :cond_5
    iget-object v0, p0, Lio/sentry/SpanContext;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 383
    iget-object v0, p0, Lio/sentry/SpanContext;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 384
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/SpanContext;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 385
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 386
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 388
    :cond_6
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 389
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 276
    if-nez p1, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    if-nez p2, :cond_1

    .line 280
    iget-object v0, p0, Lio/sentry/SpanContext;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lio/sentry/SpanContext;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :goto_0
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lio/sentry/SpanContext;->description:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setInstrumenter(Lio/sentry/Instrumenter;)V
    .locals 0
    .param p1, "instrumenter"    # Lio/sentry/Instrumenter;

    .line 264
    iput-object p1, p0, Lio/sentry/SpanContext;->instrumenter:Lio/sentry/Instrumenter;

    .line 265
    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;

    .line 149
    const-string v0, "operation is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/SpanContext;->op:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .line 256
    iput-object p1, p0, Lio/sentry/SpanContext;->origin:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setProfilerId(Lio/sentry/protocol/SentryId;)V
    .locals 0
    .param p1, "profilerId"    # Lio/sentry/protocol/SentryId;

    .line 327
    iput-object p1, p0, Lio/sentry/SpanContext;->profilerId:Lio/sentry/protocol/SentryId;

    .line 328
    return-void
.end method

.method public setSampled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "sampled"    # Ljava/lang/Boolean;

    .line 225
    if-nez p1, :cond_0

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/sentry/SpanContext;->setSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    goto :goto_0

    .line 228
    :cond_0
    new-instance v0, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v0, p1}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lio/sentry/SpanContext;->setSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    .line 230
    :goto_0
    return-void
.end method

.method public setSampled(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "sampled"    # Ljava/lang/Boolean;
    .param p2, "profileSampled"    # Ljava/lang/Boolean;

    .line 234
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 235
    invoke-virtual {p0, v0}, Lio/sentry/SpanContext;->setSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    goto :goto_0

    .line 236
    :cond_0
    if-nez p2, :cond_1

    .line 237
    new-instance v0, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v0, p1}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lio/sentry/SpanContext;->setSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    goto :goto_0

    .line 239
    :cond_1
    new-instance v1, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v1, p1, v0, p2, v0}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    invoke-virtual {p0, v1}, Lio/sentry/SpanContext;->setSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    .line 241
    :goto_0
    return-void
.end method

.method public setSamplingDecision(Lio/sentry/TracesSamplingDecision;)V
    .locals 2
    .param p1, "samplingDecision"    # Lio/sentry/TracesSamplingDecision;

    .line 245
    iput-object p1, p0, Lio/sentry/SpanContext;->samplingDecision:Lio/sentry/TracesSamplingDecision;

    .line 246
    iget-object v0, p0, Lio/sentry/SpanContext;->baggage:Lio/sentry/Baggage;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lio/sentry/SpanContext;->baggage:Lio/sentry/Baggage;

    iget-object v1, p0, Lio/sentry/SpanContext;->samplingDecision:Lio/sentry/TracesSamplingDecision;

    invoke-virtual {v0, v1}, Lio/sentry/Baggage;->setValuesFromSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    .line 249
    :cond_0
    return-void
.end method

.method public setStatus(Lio/sentry/SpanStatus;)V
    .locals 0
    .param p1, "status"    # Lio/sentry/SpanStatus;

    .line 168
    iput-object p1, p0, Lio/sentry/SpanContext;->status:Lio/sentry/SpanStatus;

    .line 169
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 153
    if-nez p1, :cond_0

    .line 154
    return-void

    .line 156
    :cond_0
    if-nez p2, :cond_1

    .line 157
    iget-object v0, p0, Lio/sentry/SpanContext;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lio/sentry/SpanContext;->tags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :goto_0
    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 399
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/SpanContext;->unknown:Ljava/util/Map;

    .line 400
    return-void
.end method
