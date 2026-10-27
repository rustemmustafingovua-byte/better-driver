.class public final Lio/sentry/profilemeasurements/ProfileMeasurementValue;
.super Ljava/lang/Object;
.source "ProfileMeasurementValue.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/profilemeasurements/ProfileMeasurementValue$JsonKeys;,
        Lio/sentry/profilemeasurements/ProfileMeasurementValue$Deserializer;
    }
.end annotation


# instance fields
.field private relativeStartNs:Ljava/lang/String;

.field private timestamp:D

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

.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 32
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;J)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Number;J)V
    .locals 2
    .param p1, "relativeStartNs"    # Ljava/lang/Long;
    .param p2, "value"    # Ljava/lang/Number;
    .param p3, "nanoTimestamp"    # J

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->relativeStartNs:Ljava/lang/String;

    .line 38
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->value:D

    .line 39
    invoke-static {p3, p4}, Lio/sentry/DateUtils;->nanosToSeconds(J)D

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->timestamp:D

    .line 40
    return-void
.end method

.method static synthetic access$002(Lio/sentry/profilemeasurements/ProfileMeasurementValue;D)D
    .locals 0
    .param p0, "x0"    # Lio/sentry/profilemeasurements/ProfileMeasurementValue;
    .param p1, "x1"    # D

    .line 23
    iput-wide p1, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->value:D

    return-wide p1
.end method

.method static synthetic access$102(Lio/sentry/profilemeasurements/ProfileMeasurementValue;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/profilemeasurements/ProfileMeasurementValue;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->relativeStartNs:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/profilemeasurements/ProfileMeasurementValue;D)D
    .locals 0
    .param p0, "x0"    # Lio/sentry/profilemeasurements/ProfileMeasurementValue;
    .param p1, "x1"    # D

    .line 23
    iput-wide p1, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->timestamp:D

    return-wide p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 56
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 57
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 58
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 59
    .local v2, "that":Lio/sentry/profilemeasurements/ProfileMeasurementValue;
    iget-object v3, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->unknown:Ljava/util/Map;

    iget-object v4, v2, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->unknown:Ljava/util/Map;

    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->relativeStartNs:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->relativeStartNs:Ljava/lang/String;

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->value:D

    iget-wide v5, v2, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->value:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->timestamp:D

    iget-wide v5, v2, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->timestamp:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 59
    :goto_0
    return v0

    .line 57
    .end local v2    # "that":Lio/sentry/profilemeasurements/ProfileMeasurementValue;
    :cond_3
    :goto_1
    return v1
.end method

.method public getRelativeStartNs()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->relativeStartNs:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()D
    .locals 2

    .line 43
    iget-wide v0, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->timestamp:D

    return-wide v0
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

    .line 98
    iget-object v0, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 47
    iget-wide v0, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 67
    iget-object v0, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->unknown:Ljava/util/Map;

    iget-object v1, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->relativeStartNs:Ljava/lang/String;

    iget-wide v2, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 82
    const-string v0, "value"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->value:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 83
    const-string v0, "elapsed_since_start_ns"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->relativeStartNs:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 84
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->timestamp:D

    invoke-static {v1, v2}, Lio/sentry/DateUtils;->doubleToBigDecimal(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 85
    iget-object v0, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 88
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 89
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 90
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 92
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 93
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

    .line 103
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->unknown:Ljava/util/Map;

    .line 104
    return-void
.end method
