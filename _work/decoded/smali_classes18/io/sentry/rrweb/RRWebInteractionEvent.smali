.class public final Lio/sentry/rrweb/RRWebInteractionEvent;
.super Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;
.source "RRWebInteractionEvent.java"

# interfaces
.implements Lio/sentry/JsonSerializable;
.implements Lio/sentry/JsonUnknown;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;,
        Lio/sentry/rrweb/RRWebInteractionEvent$JsonKeys;,
        Lio/sentry/rrweb/RRWebInteractionEvent$Deserializer;
    }
.end annotation


# static fields
.field private static final POINTER_TYPE_TOUCH:I = 0x2


# instance fields
.field private dataUnknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private interactionType:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

.field private pointerId:I

.field private pointerType:I

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

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    sget-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->MouseInteraction:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    invoke-direct {p0, v0}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;-><init>(Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;)V

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerType:I

    .line 73
    return-void
.end method

.method static synthetic access$002(Lio/sentry/rrweb/RRWebInteractionEvent;Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;)Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;
    .locals 0
    .param p0, "x0"    # Lio/sentry/rrweb/RRWebInteractionEvent;
    .param p1, "x1"    # Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 17
    iput-object p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->interactionType:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/rrweb/RRWebInteractionEvent;I)I
    .locals 0
    .param p0, "x0"    # Lio/sentry/rrweb/RRWebInteractionEvent;
    .param p1, "x1"    # I

    .line 17
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->id:I

    return p1
.end method

.method static synthetic access$202(Lio/sentry/rrweb/RRWebInteractionEvent;F)F
    .locals 0
    .param p0, "x0"    # Lio/sentry/rrweb/RRWebInteractionEvent;
    .param p1, "x1"    # F

    .line 17
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->x:F

    return p1
.end method

.method static synthetic access$302(Lio/sentry/rrweb/RRWebInteractionEvent;F)F
    .locals 0
    .param p0, "x0"    # Lio/sentry/rrweb/RRWebInteractionEvent;
    .param p1, "x1"    # F

    .line 17
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->y:F

    return p1
.end method

.method static synthetic access$402(Lio/sentry/rrweb/RRWebInteractionEvent;I)I
    .locals 0
    .param p0, "x0"    # Lio/sentry/rrweb/RRWebInteractionEvent;
    .param p1, "x1"    # I

    .line 17
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerType:I

    return p1
.end method

.method static synthetic access$502(Lio/sentry/rrweb/RRWebInteractionEvent;I)I
    .locals 0
    .param p0, "x0"    # Lio/sentry/rrweb/RRWebInteractionEvent;
    .param p1, "x1"    # I

    .line 17
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerId:I

    return p1
.end method

.method private serializeData(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 175
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Serializer;

    invoke-direct {v0}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Serializer;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Serializer;->serialize(Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 176
    const-string v0, "type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->interactionType:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 177
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->id:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 178
    const-string v0, "x"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->x:F

    float-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(D)Lio/sentry/ObjectWriter;

    .line 179
    const-string v0, "y"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->y:F

    float-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(D)Lio/sentry/ObjectWriter;

    .line 180
    const-string v0, "pointerType"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerType:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 181
    const-string v0, "pointerId"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerId:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 182
    iget-object v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->dataUnknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->dataUnknown:Ljava/util/Map;

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

    .line 184
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->dataUnknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 185
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 186
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 187
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 189
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 190
    return-void
.end method


# virtual methods
.method public getDataUnknown()Ljava/util/Map;
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

    .line 126
    iget-object v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->dataUnknown:Ljava/util/Map;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 85
    iget v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->id:I

    return v0
.end method

.method public getInteractionType()Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;
    .locals 1

    .line 77
    iget-object v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->interactionType:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    return-object v0
.end method

.method public getPointerId()I
    .locals 1

    .line 117
    iget v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerId:I

    return v0
.end method

.method public getPointerType()I
    .locals 1

    .line 109
    iget v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerType:I

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

    .line 135
    iget-object v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 93
    iget v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 101
    iget v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->y:F

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

    .line 158
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 159
    new-instance v0, Lio/sentry/rrweb/RRWebEvent$Serializer;

    invoke-direct {v0}, Lio/sentry/rrweb/RRWebEvent$Serializer;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/rrweb/RRWebEvent$Serializer;->serialize(Lio/sentry/rrweb/RRWebEvent;Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 160
    const-string v0, "data"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 161
    invoke-direct {p0, p1, p2}, Lio/sentry/rrweb/RRWebInteractionEvent;->serializeData(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 162
    iget-object v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->unknown:Ljava/util/Map;

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

    .line 164
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 165
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 166
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 167
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 169
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 170
    return-void
.end method

.method public setDataUnknown(Ljava/util/Map;)V
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

    .line 130
    .local p1, "dataUnknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->dataUnknown:Ljava/util/Map;

    .line 131
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 89
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->id:I

    .line 90
    return-void
.end method

.method public setInteractionType(Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;)V
    .locals 0
    .param p1, "type"    # Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 81
    iput-object p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->interactionType:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 82
    return-void
.end method

.method public setPointerId(I)V
    .locals 0
    .param p1, "pointerId"    # I

    .line 121
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerId:I

    .line 122
    return-void
.end method

.method public setPointerType(I)V
    .locals 0
    .param p1, "pointerType"    # I

    .line 113
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerType:I

    .line 114
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

    .line 140
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->unknown:Ljava/util/Map;

    .line 141
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .line 97
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->x:F

    .line 98
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .line 105
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->y:F

    .line 106
    return-void
.end method
