.class public final Lio/sentry/protocol/Spring;
.super Ljava/lang/Object;
.source "Spring.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/Spring$JsonKeys;,
        Lio/sentry/protocol/Spring$Deserializer;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "spring"


# instance fields
.field private activeProfiles:[Ljava/lang/String;

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
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/Spring;)V
    .locals 1
    .param p1, "spring"    # Lio/sentry/protocol/Spring;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iget-object v0, p1, Lio/sentry/protocol/Spring;->activeProfiles:[Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Spring;->activeProfiles:[Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lio/sentry/protocol/Spring;->unknown:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/Spring;->unknown:Ljava/util/Map;

    .line 36
    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/Spring;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Spring;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lio/sentry/protocol/Spring;->activeProfiles:[Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 59
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 60
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    move-object v0, p1

    check-cast v0, Lio/sentry/protocol/Spring;

    .line 62
    .local v0, "spring":Lio/sentry/protocol/Spring;
    iget-object v1, p0, Lio/sentry/protocol/Spring;->activeProfiles:[Ljava/lang/String;

    iget-object v2, v0, Lio/sentry/protocol/Spring;->activeProfiles:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 60
    .end local v0    # "spring":Lio/sentry/protocol/Spring;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveProfiles()[Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/sentry/protocol/Spring;->activeProfiles:[Ljava/lang/String;

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

    .line 49
    iget-object v0, p0, Lio/sentry/protocol/Spring;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 67
    iget-object v0, p0, Lio/sentry/protocol/Spring;->activeProfiles:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

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

    .line 77
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 78
    iget-object v0, p0, Lio/sentry/protocol/Spring;->activeProfiles:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "active_profiles"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Spring;->activeProfiles:[Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 81
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/Spring;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lio/sentry/protocol/Spring;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/protocol/Spring;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 84
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 85
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 86
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 88
    :cond_1
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 89
    return-void
.end method

.method public setActiveProfiles([Ljava/lang/String;)V
    .locals 0
    .param p1, "activeProfiles"    # [Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lio/sentry/protocol/Spring;->activeProfiles:[Ljava/lang/String;

    .line 44
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

    .line 54
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/Spring;->unknown:Ljava/util/Map;

    .line 55
    return-void
.end method
