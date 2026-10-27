.class public final Lio/sentry/protocol/FeatureFlags;
.super Ljava/lang/Object;
.source "FeatureFlags.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/FeatureFlags$JsonKeys;,
        Lio/sentry/protocol/FeatureFlags$Deserializer;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "flags"


# instance fields
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

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/protocol/FeatureFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/FeatureFlags;->values:Ljava/util/List;

    .line 27
    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/FeatureFlags;)V
    .locals 1
    .param p1, "featureFlags"    # Lio/sentry/protocol/FeatureFlags;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget-object v0, p1, Lio/sentry/protocol/FeatureFlags;->values:Ljava/util/List;

    iput-object v0, p0, Lio/sentry/protocol/FeatureFlags;->values:Ljava/util/List;

    .line 31
    iget-object v0, p1, Lio/sentry/protocol/FeatureFlags;->unknown:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/FeatureFlags;->unknown:Ljava/util/Map;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/FeatureFlag;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/FeatureFlag;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lio/sentry/protocol/FeatureFlags;->values:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 52
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 53
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    move-object v0, p1

    check-cast v0, Lio/sentry/protocol/FeatureFlags;

    .line 55
    .local v0, "flags":Lio/sentry/protocol/FeatureFlags;
    iget-object v1, p0, Lio/sentry/protocol/FeatureFlags;->values:Ljava/util/List;

    iget-object v2, v0, Lio/sentry/protocol/FeatureFlags;->values:Ljava/util/List;

    invoke-static {v1, v2}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 53
    .end local v0    # "flags":Lio/sentry/protocol/FeatureFlags;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
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

    .line 68
    iget-object v0, p0, Lio/sentry/protocol/FeatureFlags;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/FeatureFlag;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lio/sentry/protocol/FeatureFlags;->values:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 60
    iget-object v0, p0, Lio/sentry/protocol/FeatureFlags;->values:Ljava/util/List;

    filled-new-array {v0}, [Ljava/lang/Object;

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

    .line 83
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 85
    const-string v0, "values"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/FeatureFlags;->values:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 87
    iget-object v0, p0, Lio/sentry/protocol/FeatureFlags;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lio/sentry/protocol/FeatureFlags;->unknown:Ljava/util/Map;

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

    .line 89
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/protocol/FeatureFlags;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 90
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 91
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 93
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 94
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

    .line 73
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/FeatureFlags;->unknown:Ljava/util/Map;

    .line 74
    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/FeatureFlag;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/FeatureFlag;>;"
    iput-object p1, p0, Lio/sentry/protocol/FeatureFlags;->values:Ljava/util/List;

    .line 48
    return-void
.end method
