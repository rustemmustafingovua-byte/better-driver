.class public final Lio/sentry/SentryReplayEvent;
.super Lio/sentry/SentryBaseEvent;
.source "SentryReplayEvent.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryReplayEvent$ReplayType;,
        Lio/sentry/SentryReplayEvent$JsonKeys;,
        Lio/sentry/SentryReplayEvent$Deserializer;
    }
.end annotation


# static fields
.field public static final REPLAY_EVENT_TYPE:Ljava/lang/String; = "replay_event"

.field public static final REPLAY_VIDEO_MAX_SIZE:J = 0xa00000L


# instance fields
.field private errorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private replayId:Lio/sentry/protocol/SentryId;

.field private replayStartTimestamp:Ljava/util/Date;

.field private replayType:Lio/sentry/SentryReplayEvent$ReplayType;

.field private segmentId:I

.field private segmentNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:Ljava/util/Date;

.field private traceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lio/sentry/SentryBaseEvent;-><init>()V

    .line 57
    new-instance v0, Lio/sentry/protocol/SentryId;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryReplayEvent;->replayId:Lio/sentry/protocol/SentryId;

    .line 58
    const-string v0, "replay_event"

    iput-object v0, p0, Lio/sentry/SentryReplayEvent;->type:Ljava/lang/String;

    .line 59
    sget-object v0, Lio/sentry/SentryReplayEvent$ReplayType;->SESSION:Lio/sentry/SentryReplayEvent$ReplayType;

    iput-object v0, p0, Lio/sentry/SentryReplayEvent;->replayType:Lio/sentry/SentryReplayEvent$ReplayType;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryReplayEvent;->errorIds:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryReplayEvent;->traceIds:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryReplayEvent;->segmentNames:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryReplayEvent;->urls:Ljava/util/List;

    .line 64
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryReplayEvent;->timestamp:Ljava/util/Date;

    .line 65
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 167
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 168
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 169
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/sentry/SentryReplayEvent;

    .line 170
    .local v2, "that":Lio/sentry/SentryReplayEvent;
    iget v3, p0, Lio/sentry/SentryReplayEvent;->segmentId:I

    iget v4, v2, Lio/sentry/SentryReplayEvent;->segmentId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lio/sentry/SentryReplayEvent;->type:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/SentryReplayEvent;->type:Ljava/lang/String;

    .line 171
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/SentryReplayEvent;->replayType:Lio/sentry/SentryReplayEvent$ReplayType;

    iget-object v4, v2, Lio/sentry/SentryReplayEvent;->replayType:Lio/sentry/SentryReplayEvent$ReplayType;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lio/sentry/SentryReplayEvent;->replayId:Lio/sentry/protocol/SentryId;

    iget-object v4, v2, Lio/sentry/SentryReplayEvent;->replayId:Lio/sentry/protocol/SentryId;

    .line 173
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/SentryReplayEvent;->urls:Ljava/util/List;

    iget-object v4, v2, Lio/sentry/SentryReplayEvent;->urls:Ljava/util/List;

    .line 174
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/SentryReplayEvent;->errorIds:Ljava/util/List;

    iget-object v4, v2, Lio/sentry/SentryReplayEvent;->errorIds:Ljava/util/List;

    .line 175
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/SentryReplayEvent;->traceIds:Ljava/util/List;

    iget-object v4, v2, Lio/sentry/SentryReplayEvent;->traceIds:Ljava/util/List;

    .line 176
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/SentryReplayEvent;->segmentNames:Ljava/util/List;

    iget-object v4, v2, Lio/sentry/SentryReplayEvent;->segmentNames:Ljava/util/List;

    .line 177
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 170
    :goto_0
    return v0

    .line 168
    .end local v2    # "that":Lio/sentry/SentryReplayEvent;
    :cond_3
    :goto_1
    return v1
.end method

.method public getErrorIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->errorIds:Ljava/util/List;

    return-object v0
.end method

.method public getReplayId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 87
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->replayId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getReplayStartTimestamp()Ljava/util/Date;
    .locals 1

    .line 113
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->replayStartTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getReplayType()Lio/sentry/SentryReplayEvent$ReplayType;
    .locals 1

    .line 158
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->replayType:Lio/sentry/SentryReplayEvent$ReplayType;

    return-object v0
.end method

.method public getSegmentId()I
    .locals 1

    .line 95
    iget v0, p0, Lio/sentry/SentryReplayEvent;->segmentId:I

    return v0
.end method

.method public getSegmentNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->segmentNames:Ljava/util/List;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 104
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTraceIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->traceIds:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->type:Ljava/lang/String;

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

    .line 241
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->urls:Ljava/util/List;

    return-object v0
.end method

.method public getVideoFile()Ljava/io/File;
    .locals 1

    .line 69
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->videoFile:Ljava/io/File;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .line 182
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->type:Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/SentryReplayEvent;->replayType:Lio/sentry/SentryReplayEvent$ReplayType;

    iget-object v2, p0, Lio/sentry/SentryReplayEvent;->replayId:Lio/sentry/protocol/SentryId;

    iget v3, p0, Lio/sentry/SentryReplayEvent;->segmentId:I

    .line 183
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lio/sentry/SentryReplayEvent;->urls:Ljava/util/List;

    iget-object v5, p0, Lio/sentry/SentryReplayEvent;->errorIds:Ljava/util/List;

    iget-object v6, p0, Lio/sentry/SentryReplayEvent;->traceIds:Ljava/util/List;

    iget-object v7, p0, Lio/sentry/SentryReplayEvent;->segmentNames:Ljava/util/List;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 182
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

    .line 204
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 205
    const-string v0, "type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryReplayEvent;->type:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 206
    const-string v0, "replay_type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryReplayEvent;->replayType:Lio/sentry/SentryReplayEvent$ReplayType;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 207
    const-string v0, "segment_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/SentryReplayEvent;->segmentId:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 208
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryReplayEvent;->timestamp:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 209
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->replayId:Lio/sentry/protocol/SentryId;

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "replay_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryReplayEvent;->replayId:Lio/sentry/protocol/SentryId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 212
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->replayStartTimestamp:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 213
    const-string v0, "replay_start_timestamp"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryReplayEvent;->replayStartTimestamp:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 215
    :cond_1
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->urls:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 216
    const-string v0, "urls"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryReplayEvent;->urls:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 218
    :cond_2
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->errorIds:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 219
    const-string v0, "error_ids"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryReplayEvent;->errorIds:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 221
    :cond_3
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->traceIds:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 222
    const-string v0, "trace_ids"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryReplayEvent;->traceIds:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 224
    :cond_4
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->segmentNames:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 225
    const-string v0, "segment_names"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryReplayEvent;->segmentNames:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 228
    :cond_5
    new-instance v0, Lio/sentry/SentryBaseEvent$Serializer;

    invoke-direct {v0}, Lio/sentry/SentryBaseEvent$Serializer;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/SentryBaseEvent$Serializer;->serialize(Lio/sentry/SentryBaseEvent;Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 230
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 231
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/SentryReplayEvent;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 233
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 234
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 236
    :cond_6
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 237
    return-void
.end method

.method public setErrorIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p1, "errorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/sentry/SentryReplayEvent;->errorIds:Ljava/util/List;

    .line 136
    return-void
.end method

.method public setReplayId(Lio/sentry/protocol/SentryId;)V
    .locals 0
    .param p1, "replayId"    # Lio/sentry/protocol/SentryId;

    .line 91
    iput-object p1, p0, Lio/sentry/SentryReplayEvent;->replayId:Lio/sentry/protocol/SentryId;

    .line 92
    return-void
.end method

.method public setReplayStartTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "replayStartTimestamp"    # Ljava/util/Date;

    .line 117
    iput-object p1, p0, Lio/sentry/SentryReplayEvent;->replayStartTimestamp:Ljava/util/Date;

    .line 118
    return-void
.end method

.method public setReplayType(Lio/sentry/SentryReplayEvent$ReplayType;)V
    .locals 0
    .param p1, "replayType"    # Lio/sentry/SentryReplayEvent$ReplayType;

    .line 162
    iput-object p1, p0, Lio/sentry/SentryReplayEvent;->replayType:Lio/sentry/SentryReplayEvent$ReplayType;

    .line 163
    return-void
.end method

.method public setSegmentId(I)V
    .locals 0
    .param p1, "segmentId"    # I

    .line 99
    iput p1, p0, Lio/sentry/SentryReplayEvent;->segmentId:I

    .line 100
    return-void
.end method

.method public setSegmentNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p1, "segmentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/sentry/SentryReplayEvent;->segmentNames:Ljava/util/List;

    .line 154
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .line 108
    iput-object p1, p0, Lio/sentry/SentryReplayEvent;->timestamp:Ljava/util/Date;

    .line 109
    return-void
.end method

.method public setTraceIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p1, "traceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/sentry/SentryReplayEvent;->traceIds:Ljava/util/List;

    .line 145
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lio/sentry/SentryReplayEvent;->type:Ljava/lang/String;

    .line 83
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

    .line 246
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/SentryReplayEvent;->unknown:Ljava/util/Map;

    .line 247
    return-void
.end method

.method public setUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/sentry/SentryReplayEvent;->urls:Ljava/util/List;

    .line 127
    return-void
.end method

.method public setVideoFile(Ljava/io/File;)V
    .locals 0
    .param p1, "videoFile"    # Ljava/io/File;

    .line 73
    iput-object p1, p0, Lio/sentry/SentryReplayEvent;->videoFile:Ljava/io/File;

    .line 74
    return-void
.end method
