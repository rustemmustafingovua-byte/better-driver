.class public final Lio/sentry/protocol/FeatureFlag;
.super Ljava/lang/Object;
.source "FeatureFlag.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/FeatureFlag$JsonKeys;,
        Lio/sentry/protocol/FeatureFlag$Deserializer;
    }
.end annotation


# static fields
.field public static final DATA_PREFIX:Ljava/lang/String; = "flag.evaluation."


# instance fields
.field private flag:Ljava/lang/String;

.field private result:Z

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
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "result"    # Z

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/FeatureFlag;->flag:Ljava/lang/String;

    .line 33
    iput-boolean p2, p0, Lio/sentry/protocol/FeatureFlag;->result:Z

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 55
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 56
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 57
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/sentry/protocol/FeatureFlag;

    .line 58
    .local v2, "otherFlag":Lio/sentry/protocol/FeatureFlag;
    iget-object v3, p0, Lio/sentry/protocol/FeatureFlag;->flag:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/FeatureFlag;->flag:Ljava/lang/String;

    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lio/sentry/protocol/FeatureFlag;->result:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Lio/sentry/protocol/FeatureFlag;->result:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 56
    .end local v2    # "otherFlag":Lio/sentry/protocol/FeatureFlag;
    :cond_3
    :goto_1
    return v1
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/sentry/protocol/FeatureFlag;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/Boolean;
    .locals 1

    .line 46
    iget-boolean v0, p0, Lio/sentry/protocol/FeatureFlag;->result:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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

    .line 71
    iget-object v0, p0, Lio/sentry/protocol/FeatureFlag;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 63
    iget-object v0, p0, Lio/sentry/protocol/FeatureFlag;->flag:Ljava/lang/String;

    iget-boolean v1, p0, Lio/sentry/protocol/FeatureFlag;->result:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

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

    .line 87
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 89
    const-string v0, "flag"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/FeatureFlag;->flag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 90
    const-string v0, "result"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/protocol/FeatureFlag;->result:Z

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Z)Lio/sentry/ObjectWriter;

    .line 91
    iget-object v0, p0, Lio/sentry/protocol/FeatureFlag;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lio/sentry/protocol/FeatureFlag;->unknown:Ljava/util/Map;

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

    .line 93
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/protocol/FeatureFlag;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 94
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 95
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 98
    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lio/sentry/protocol/FeatureFlag;->flag:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setResult(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/protocol/FeatureFlag;->result:Z

    .line 51
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

    .line 76
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/FeatureFlag;->unknown:Ljava/util/Map;

    .line 77
    return-void
.end method
