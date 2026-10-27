.class public final Lio/sentry/W3CTraceparentHeader;
.super Ljava/lang/Object;
.source "W3CTraceparentHeader.java"


# static fields
.field public static final TRACEPARENT_HEADER:Ljava/lang/String; = "traceparent"


# instance fields
.field private final sampled:Ljava/lang/Boolean;

.field private final spanId:Lio/sentry/SpanId;

.field private final traceId:Lio/sentry/protocol/SentryId;


# direct methods
.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;
    .param p2, "spanId"    # Lio/sentry/SpanId;
    .param p3, "sampled"    # Ljava/lang/Boolean;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/sentry/W3CTraceparentHeader;->traceId:Lio/sentry/protocol/SentryId;

    .line 20
    iput-object p2, p0, Lio/sentry/W3CTraceparentHeader;->spanId:Lio/sentry/SpanId;

    .line 21
    iput-object p3, p0, Lio/sentry/W3CTraceparentHeader;->sampled:Ljava/lang/Boolean;

    .line 22
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "traceparent"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .line 29
    iget-object v0, p0, Lio/sentry/W3CTraceparentHeader;->sampled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/W3CTraceparentHeader;->sampled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "01"

    goto :goto_0

    :cond_0
    const-string v0, "00"

    .line 30
    .local v0, "sampledFlag":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lio/sentry/W3CTraceparentHeader;->traceId:Lio/sentry/protocol/SentryId;

    iget-object v2, p0, Lio/sentry/W3CTraceparentHeader;->spanId:Lio/sentry/SpanId;

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "00-%s-%s-%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
