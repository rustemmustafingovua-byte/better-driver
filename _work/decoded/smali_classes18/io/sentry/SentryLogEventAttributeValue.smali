.class public final Lio/sentry/SentryLogEventAttributeValue;
.super Ljava/lang/Object;
.source "SentryLogEventAttributeValue.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryLogEventAttributeValue$JsonKeys;,
        Lio/sentry/SentryLogEventAttributeValue$Deserializer;
    }
.end annotation


# instance fields
.field private type:Ljava/lang/String;

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

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # Lio/sentry/SentryAttributeType;
    .param p2, "value"    # Ljava/lang/Object;

    .line 27
    invoke-virtual {p1}, Lio/sentry/SentryAttributeType;->apiName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/sentry/SentryLogEventAttributeValue;->type:Ljava/lang/String;

    .line 18
    if-eqz p2, :cond_0

    const-string v0, "string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryLogEventAttributeValue;->value:Ljava/lang/Object;

    goto :goto_0

    .line 21
    :cond_0
    iput-object p2, p0, Lio/sentry/SentryLogEventAttributeValue;->value:Ljava/lang/Object;

    .line 23
    :goto_0
    return-void
.end method

.method public static fromAttribute(Lio/sentry/SentryAttribute;)Lio/sentry/SentryLogEventAttributeValue;
    .locals 3
    .param p0, "attribute"    # Lio/sentry/SentryAttribute;

    .line 39
    invoke-virtual {p0}, Lio/sentry/SentryAttribute;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lio/sentry/SentryAttribute;->getType()Lio/sentry/SentryAttributeType;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lio/sentry/SentryAttributeType;->inferFrom(Ljava/lang/Object;)Lio/sentry/SentryAttributeType;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryAttribute;->getType()Lio/sentry/SentryAttributeType;

    move-result-object v1

    .line 42
    .local v1, "type":Lio/sentry/SentryAttributeType;
    :goto_0
    new-instance v2, Lio/sentry/SentryLogEventAttributeValue;

    invoke-direct {v2, v1, v0}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/sentry/SentryLogEventAttributeValue;->type:Ljava/lang/String;

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

    .line 78
    iget-object v0, p0, Lio/sentry/SentryLogEventAttributeValue;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/sentry/SentryLogEventAttributeValue;->value:Ljava/lang/Object;

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

    .line 63
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 64
    const-string v0, "type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryLogEventAttributeValue;->type:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 65
    const-string v0, "value"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryLogEventAttributeValue;->value:Ljava/lang/Object;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 67
    iget-object v0, p0, Lio/sentry/SentryLogEventAttributeValue;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lio/sentry/SentryLogEventAttributeValue;->unknown:Ljava/util/Map;

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

    .line 69
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/SentryLogEventAttributeValue;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 70
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 71
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 74
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

    .line 83
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/SentryLogEventAttributeValue;->unknown:Ljava/util/Map;

    .line 84
    return-void
.end method
