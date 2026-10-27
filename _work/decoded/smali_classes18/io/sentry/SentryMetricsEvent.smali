.class public final Lio/sentry/SentryMetricsEvent;
.super Ljava/lang/Object;
.source "SentryMetricsEvent.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryMetricsEvent$JsonKeys;,
        Lio/sentry/SentryMetricsEvent$Deserializer;
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

.field private name:Ljava/lang/String;

.field private spanId:Lio/sentry/SpanId;

.field private timestamp:Ljava/lang/Double;

.field private traceId:Lio/sentry/protocol/SentryId;

.field private type:Ljava/lang/String;

.field private unit:Ljava/lang/String;

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

.field private value:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/SentryDate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 8
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;
    .param p2, "timestamp"    # Lio/sentry/SentryDate;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Double;

    .line 53
    invoke-virtual {p2}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->nanosToSeconds(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "traceId":Lio/sentry/protocol/SentryId;
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "type":Ljava/lang/String;
    .end local p5    # "value":Ljava/lang/Double;
    .local v3, "traceId":Lio/sentry/protocol/SentryId;
    .local v5, "name":Ljava/lang/String;
    .local v6, "type":Ljava/lang/String;
    .local v7, "value":Ljava/lang/Double;
    invoke-direct/range {v2 .. v7}, Lio/sentry/SentryMetricsEvent;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;
    .param p2, "timestamp"    # Ljava/lang/Double;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Double;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lio/sentry/SentryMetricsEvent;->traceId:Lio/sentry/protocol/SentryId;

    .line 63
    iput-object p2, p0, Lio/sentry/SentryMetricsEvent;->timestamp:Ljava/lang/Double;

    .line 64
    iput-object p3, p0, Lio/sentry/SentryMetricsEvent;->name:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lio/sentry/SentryMetricsEvent;->type:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lio/sentry/SentryMetricsEvent;->value:Ljava/lang/Double;

    .line 67
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

    .line 127
    iget-object v0, p0, Lio/sentry/SentryMetricsEvent;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/sentry/SentryMetricsEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSpanId()Lio/sentry/SpanId;
    .locals 1

    .line 103
    iget-object v0, p0, Lio/sentry/SentryMetricsEvent;->spanId:Lio/sentry/SpanId;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Double;
    .locals 1

    .line 71
    iget-object v0, p0, Lio/sentry/SentryMetricsEvent;->timestamp:Ljava/lang/Double;

    return-object v0
.end method

.method public getTraceId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 111
    iget-object v0, p0, Lio/sentry/SentryMetricsEvent;->traceId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lio/sentry/SentryMetricsEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lio/sentry/SentryMetricsEvent;->unit:Ljava/lang/String;

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

    .line 188
    iget-object v0, p0, Lio/sentry/SentryMetricsEvent;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 1

    .line 119
    iget-object v0, p0, Lio/sentry/SentryMetricsEvent;->value:Ljava/lang/Double;

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

    .line 161
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 162
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryMetricsEvent;->timestamp:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lio/sentry/DateUtils;->doubleToBigDecimal(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 163
    const-string v0, "type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryMetricsEvent;->type:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 164
    const-string v0, "name"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryMetricsEvent;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 165
    const-string v0, "value"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryMetricsEvent;->value:Ljava/lang/Double;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 166
    const-string v0, "trace_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryMetricsEvent;->traceId:Lio/sentry/protocol/SentryId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 167
    iget-object v0, p0, Lio/sentry/SentryMetricsEvent;->spanId:Lio/sentry/SpanId;

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "span_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryMetricsEvent;->spanId:Lio/sentry/SpanId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 170
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryMetricsEvent;->unit:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 171
    const-string v0, "unit"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryMetricsEvent;->unit:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 173
    :cond_1
    iget-object v0, p0, Lio/sentry/SentryMetricsEvent;->attributes:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 174
    const-string v0, "attributes"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryMetricsEvent;->attributes:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 177
    :cond_2
    iget-object v0, p0, Lio/sentry/SentryMetricsEvent;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lio/sentry/SentryMetricsEvent;->unknown:Ljava/util/Map;

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

    .line 179
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/SentryMetricsEvent;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 180
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 181
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 183
    :cond_3
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 184
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lio/sentry/SentryLogEventAttributeValue;

    .line 136
    if-nez p1, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryMetricsEvent;->attributes:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryMetricsEvent;->attributes:Ljava/util/Map;

    .line 142
    :cond_1
    iget-object v0, p0, Lio/sentry/SentryMetricsEvent;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
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

    .line 131
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;>;"
    iput-object p1, p0, Lio/sentry/SentryMetricsEvent;->attributes:Ljava/util/Map;

    .line 132
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lio/sentry/SentryMetricsEvent;->name:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setSpanId(Lio/sentry/SpanId;)V
    .locals 0
    .param p1, "spanId"    # Lio/sentry/SpanId;

    .line 107
    iput-object p1, p0, Lio/sentry/SentryMetricsEvent;->spanId:Lio/sentry/SpanId;

    .line 108
    return-void
.end method

.method public setTimestamp(Ljava/lang/Double;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/Double;

    .line 75
    iput-object p1, p0, Lio/sentry/SentryMetricsEvent;->timestamp:Ljava/lang/Double;

    .line 76
    return-void
.end method

.method public setTraceId(Lio/sentry/protocol/SentryId;)V
    .locals 0
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;

    .line 115
    iput-object p1, p0, Lio/sentry/SentryMetricsEvent;->traceId:Lio/sentry/protocol/SentryId;

    .line 116
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lio/sentry/SentryMetricsEvent;->type:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lio/sentry/SentryMetricsEvent;->unit:Ljava/lang/String;

    .line 100
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

    .line 193
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/SentryMetricsEvent;->unknown:Ljava/util/Map;

    .line 194
    return-void
.end method

.method public setValue(Ljava/lang/Double;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Double;

    .line 123
    iput-object p1, p0, Lio/sentry/SentryMetricsEvent;->value:Ljava/lang/Double;

    .line 124
    return-void
.end method
