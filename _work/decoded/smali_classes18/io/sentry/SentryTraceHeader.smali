.class public final Lio/sentry/SentryTraceHeader;
.super Ljava/lang/Object;
.source "SentryTraceHeader.java"


# static fields
.field private static final SENTRY_TRACEPARENT_HEADER_REGEX:Ljava/util/regex/Pattern;

.field public static final SENTRY_TRACE_HEADER:Ljava/lang/String; = "sentry-trace"


# instance fields
.field private final sampled:Ljava/lang/Boolean;

.field private final spanId:Lio/sentry/SpanId;

.field private final traceId:Lio/sentry/protocol/SentryId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    nop

    .line 20
    const-string v0, "^[ \\t]*([0-9a-f]{32})-([0-9a-f]{16})(-[01])?[ \\t]*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/SentryTraceHeader;->SENTRY_TRACEPARENT_HEADER_REGEX:Ljava/util/regex/Pattern;

    .line 19
    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;
    .param p2, "spanId"    # Lio/sentry/SpanId;
    .param p3, "sampled"    # Ljava/lang/Boolean;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lio/sentry/SentryTraceHeader;->traceId:Lio/sentry/protocol/SentryId;

    .line 28
    iput-object p2, p0, Lio/sentry/SentryTraceHeader;->spanId:Lio/sentry/SpanId;

    .line 29
    iput-object p3, p0, Lio/sentry/SentryTraceHeader;->sampled:Ljava/lang/Boolean;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/exception/InvalidSentryTraceHeaderException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lio/sentry/SentryTraceHeader;->SENTRY_TRACEPARENT_HEADER_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 34
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 36
    .local v1, "matchesExist":Z
    if-eqz v1, :cond_1

    .line 40
    new-instance v2, Lio/sentry/protocol/SentryId;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lio/sentry/protocol/SentryId;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lio/sentry/SentryTraceHeader;->traceId:Lio/sentry/protocol/SentryId;

    .line 41
    new-instance v2, Lio/sentry/SpanId;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lio/sentry/SpanId;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lio/sentry/SentryTraceHeader;->spanId:Lio/sentry/SpanId;

    .line 43
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "sampled":Ljava/lang/String;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const-string v4, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lio/sentry/SentryTraceHeader;->sampled:Ljava/lang/Boolean;

    .line 45
    return-void

    .line 37
    .end local v2    # "sampled":Ljava/lang/String;
    :cond_1
    new-instance v2, Lio/sentry/exception/InvalidSentryTraceHeaderException;

    invoke-direct {v2, p1}, Lio/sentry/exception/InvalidSentryTraceHeaderException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "sentry-trace"

    return-object v0
.end method

.method public getSpanId()Lio/sentry/SpanId;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/sentry/SentryTraceHeader;->spanId:Lio/sentry/SpanId;

    return-object v0
.end method

.method public getTraceId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/sentry/SentryTraceHeader;->traceId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .line 52
    iget-object v0, p0, Lio/sentry/SentryTraceHeader;->sampled:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lio/sentry/SentryTraceHeader;->traceId:Lio/sentry/protocol/SentryId;

    iget-object v1, p0, Lio/sentry/SentryTraceHeader;->spanId:Lio/sentry/SpanId;

    iget-object v2, p0, Lio/sentry/SentryTraceHeader;->sampled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s-%s-%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_1
    iget-object v0, p0, Lio/sentry/SentryTraceHeader;->traceId:Lio/sentry/protocol/SentryId;

    iget-object v1, p0, Lio/sentry/SentryTraceHeader;->spanId:Lio/sentry/SpanId;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s-%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSampled()Ljava/lang/Boolean;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/sentry/SentryTraceHeader;->sampled:Ljava/lang/Boolean;

    return-object v0
.end method
