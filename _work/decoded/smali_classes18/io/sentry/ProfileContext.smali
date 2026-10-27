.class public final Lio/sentry/ProfileContext;
.super Ljava/lang/Object;
.source "ProfileContext.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/ProfileContext$JsonKeys;,
        Lio/sentry/ProfileContext$Deserializer;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "profile"


# instance fields
.field private profilerId:Lio/sentry/protocol/SentryId;

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
    .locals 1

    .line 22
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-direct {p0, v0}, Lio/sentry/ProfileContext;-><init>(Lio/sentry/protocol/SentryId;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lio/sentry/ProfileContext;)V
    .locals 1
    .param p1, "profileContext"    # Lio/sentry/ProfileContext;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget-object v0, p1, Lio/sentry/ProfileContext;->profilerId:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/ProfileContext;->profilerId:Lio/sentry/protocol/SentryId;

    .line 36
    iget-object v0, p1, Lio/sentry/ProfileContext;->unknown:Ljava/util/Map;

    .line 37
    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 38
    .local v0, "copiedUnknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 39
    iput-object v0, p0, Lio/sentry/ProfileContext;->unknown:Ljava/util/Map;

    .line 41
    :cond_0
    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;)V
    .locals 0
    .param p1, "profilerId"    # Lio/sentry/protocol/SentryId;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lio/sentry/ProfileContext;->profilerId:Lio/sentry/protocol/SentryId;

    .line 27
    return-void
.end method

.method static synthetic access$002(Lio/sentry/ProfileContext;Lio/sentry/protocol/SentryId;)Lio/sentry/protocol/SentryId;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfileContext;
    .param p1, "x1"    # Lio/sentry/protocol/SentryId;

    .line 13
    iput-object p1, p0, Lio/sentry/ProfileContext;->profilerId:Lio/sentry/protocol/SentryId;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 45
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 46
    :cond_0
    instance-of v0, p1, Lio/sentry/ProfileContext;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 47
    :cond_1
    move-object v0, p1

    check-cast v0, Lio/sentry/ProfileContext;

    .line 48
    .local v0, "that":Lio/sentry/ProfileContext;
    iget-object v1, p0, Lio/sentry/ProfileContext;->profilerId:Lio/sentry/protocol/SentryId;

    iget-object v2, v0, Lio/sentry/ProfileContext;->profilerId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v1, v2}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getProfilerId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 77
    iget-object v0, p0, Lio/sentry/ProfileContext;->profilerId:Lio/sentry/protocol/SentryId;

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

    .line 83
    iget-object v0, p0, Lio/sentry/ProfileContext;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 53
    iget-object v0, p0, Lio/sentry/ProfileContext;->profilerId:Lio/sentry/protocol/SentryId;

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

    .line 65
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 66
    const-string v0, "profiler_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfileContext;->profilerId:Lio/sentry/protocol/SentryId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 67
    iget-object v0, p0, Lio/sentry/ProfileContext;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lio/sentry/ProfileContext;->unknown:Ljava/util/Map;

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
    iget-object v2, p0, Lio/sentry/ProfileContext;->unknown:Ljava/util/Map;

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

    .line 88
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/ProfileContext;->unknown:Ljava/util/Map;

    .line 89
    return-void
.end method
