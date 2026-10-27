.class public final Lio/sentry/SentryLogEvent;
.super Ljava/lang/Object;
.source "SentryLogEvent.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryLogEvent$JsonKeys;,
        Lio/sentry/SentryLogEvent$Deserializer;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/SentryLogEventAttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field private body:Ljava/lang/String;

.field private level:Lio/sentry/SentryLogLevel;

.field private severityNumber:Ljava/lang/Integer;

.field private spanId:Lio/sentry/SpanId;

.field private timestamp:Ljava/lang/Double;

.field private traceId:Lio/sentry/protocol/SentryId;

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
.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/SentryDate;Ljava/lang/String;Lio/sentry/SentryLogLevel;)V
    .locals 2
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;
    .param p2, "timestamp"    # Lio/sentry/SentryDate;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "level"    # Lio/sentry/SentryLogLevel;

    .line 30
    invoke-virtual {p2}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->nanosToSeconds(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lio/sentry/SentryLogEvent;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/SentryLogLevel;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/SentryLogLevel;)V
    .locals 0
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;
    .param p2, "timestamp"    # Ljava/lang/Double;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "level"    # Lio/sentry/SentryLogLevel;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lio/sentry/SentryLogEvent;->traceId:Lio/sentry/protocol/SentryId;

    .line 39
    iput-object p2, p0, Lio/sentry/SentryLogEvent;->timestamp:Ljava/lang/Double;

    .line 40
    iput-object p3, p0, Lio/sentry/SentryLogEvent;->body:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lio/sentry/SentryLogEvent;->level:Lio/sentry/SentryLogLevel;

    .line 42
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/SentryLogEventAttributeValue;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Lio/sentry/SentryLogLevel;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->level:Lio/sentry/SentryLogLevel;

    return-object v0
.end method

.method public getSeverityNumber()Ljava/lang/Integer;
    .locals 1

    .line 89
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->severityNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSpanId()Lio/sentry/SpanId;
    .locals 1

    .line 97
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->spanId:Lio/sentry/SpanId;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Double;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->timestamp:Ljava/lang/Double;

    return-object v0
.end method

.method public getTraceId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 105
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->traceId:Lio/sentry/protocol/SentryId;

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

    .line 153
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->unknown:Ljava/util/Map;

    return-object v0
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

    .line 127
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 128
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryLogEvent;->timestamp:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lio/sentry/DateUtils;->doubleToBigDecimal(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 129
    const-string v0, "trace_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryLogEvent;->traceId:Lio/sentry/protocol/SentryId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 130
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->spanId:Lio/sentry/SpanId;

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "span_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryLogEvent;->spanId:Lio/sentry/SpanId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 133
    :cond_0
    const-string v0, "body"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryLogEvent;->body:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 134
    const-string v0, "level"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryLogEvent;->level:Lio/sentry/SentryLogLevel;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 135
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->severityNumber:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 136
    const-string v0, "severity_number"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryLogEvent;->severityNumber:Ljava/lang/Integer;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 138
    :cond_1
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->attributes:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 139
    const-string v0, "attributes"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryLogEvent;->attributes:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 142
    :cond_2
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/SentryLogEvent;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 145
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 146
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 148
    :cond_3
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 149
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lio/sentry/SentryLogEventAttributeValue;

    .line 79
    if-nez p1, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->attributes:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryLogEvent;->attributes:Ljava/util/Map;

    .line 85
    :cond_1
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/SentryLogEventAttributeValue;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;>;"
    iput-object p1, p0, Lio/sentry/SentryLogEvent;->attributes:Ljava/util/Map;

    .line 75
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lio/sentry/SentryLogEvent;->body:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setLevel(Lio/sentry/SentryLogLevel;)V
    .locals 0
    .param p1, "level"    # Lio/sentry/SentryLogLevel;

    .line 66
    iput-object p1, p0, Lio/sentry/SentryLogEvent;->level:Lio/sentry/SentryLogLevel;

    .line 67
    return-void
.end method

.method public setSeverityNumber(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "severityNumber"    # Ljava/lang/Integer;

    .line 93
    iput-object p1, p0, Lio/sentry/SentryLogEvent;->severityNumber:Ljava/lang/Integer;

    .line 94
    return-void
.end method

.method public setSpanId(Lio/sentry/SpanId;)V
    .locals 0
    .param p1, "spanId"    # Lio/sentry/SpanId;

    .line 101
    iput-object p1, p0, Lio/sentry/SentryLogEvent;->spanId:Lio/sentry/SpanId;

    .line 102
    return-void
.end method

.method public setTimestamp(Ljava/lang/Double;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/Double;

    .line 50
    iput-object p1, p0, Lio/sentry/SentryLogEvent;->timestamp:Ljava/lang/Double;

    .line 51
    return-void
.end method

.method public setTraceId(Lio/sentry/protocol/SentryId;)V
    .locals 0
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;

    .line 109
    iput-object p1, p0, Lio/sentry/SentryLogEvent;->traceId:Lio/sentry/protocol/SentryId;

    .line 110
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

    .line 158
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/SentryLogEvent;->unknown:Ljava/util/Map;

    .line 159
    return-void
.end method
