.class public final Lio/sentry/protocol/Feedback;
.super Ljava/lang/Object;
.source "Feedback.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/Feedback$JsonKeys;,
        Lio/sentry/protocol/Feedback$Deserializer;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "feedback"


# instance fields
.field private associatedEventId:Lio/sentry/protocol/SentryId;

.field private contactEmail:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private replayId:Lio/sentry/protocol/SentryId;

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

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/sentry/protocol/Feedback;)V
    .locals 1
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p1, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    .line 42
    iget-object v0, p1, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    .line 43
    iget-object v0, p1, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lio/sentry/protocol/Feedback;->setMessage(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/Feedback;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Feedback;
    .param p1, "x1"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/Feedback;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Feedback;
    .param p1, "x1"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/Feedback;Lio/sentry/protocol/SentryId;)Lio/sentry/protocol/SentryId;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Feedback;
    .param p1, "x1"    # Lio/sentry/protocol/SentryId;

    .line 21
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/Feedback;Lio/sentry/protocol/SentryId;)Lio/sentry/protocol/SentryId;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Feedback;
    .param p1, "x1"    # Lio/sentry/protocol/SentryId;

    .line 21
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/protocol/Feedback;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Feedback;
    .param p1, "x1"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/protocol/Feedback;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Feedback;
    .param p1, "x1"    # Ljava/util/Map;

    .line 21
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 102
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 103
    :cond_0
    instance-of v1, p1, Lio/sentry/protocol/Feedback;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 104
    :cond_1
    move-object v1, p1

    check-cast v1, Lio/sentry/protocol/Feedback;

    .line 105
    .local v1, "feedback":Lio/sentry/protocol/Feedback;
    iget-object v3, p0, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    iget-object v4, v1, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    iget-object v4, v1, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    .line 106
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    iget-object v4, v1, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    .line 107
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    iget-object v4, v1, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    .line 108
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    iget-object v4, v1, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    .line 109
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    iget-object v4, v1, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    .line 110
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    iget-object v4, v1, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    .line 111
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 105
    :goto_0
    return v0
.end method

.method public getAssociatedEventId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getContactEmail()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReplayId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 72
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

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

    .line 158
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 140
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    iget-object v3, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    iget-object v4, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    iget-object v5, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    iget-object v6, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

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

    .line 171
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 172
    const-string v0, "message"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 173
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "contact_email"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 176
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 177
    const-string v0, "name"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 179
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    if-eqz v0, :cond_2

    .line 180
    const-string v0, "associated_event_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 181
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/SentryId;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 183
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    if-eqz v0, :cond_3

    .line 184
    const-string v0, "replay_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 185
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/SentryId;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 187
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 188
    const-string v0, "url"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 190
    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 191
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 193
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 194
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 196
    :cond_5
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 197
    return-void
.end method

.method public setAssociatedEventId(Lio/sentry/protocol/SentryId;)V
    .locals 0
    .param p1, "associatedEventId"    # Lio/sentry/protocol/SentryId;

    .line 68
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    .line 69
    return-void
.end method

.method public setContactEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactEmail"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_0
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    .line 98
    :goto_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setReplayId(Lio/sentry/protocol/SentryId;)V
    .locals 0
    .param p1, "replayId"    # Lio/sentry/protocol/SentryId;

    .line 76
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    .line 77
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

    .line 163
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    .line 164
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feedback{message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", contactEmail=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", associatedEventId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", replayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
