.class public final Lio/sentry/rrweb/RRWebInteractionEvent$Deserializer;
.super Ljava/lang/Object;
.source "RRWebInteractionEvent.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebInteractionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/rrweb/RRWebInteractionEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deserializeData(Lio/sentry/rrweb/RRWebInteractionEvent;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)V
    .locals 4
    .param p1, "event"    # Lio/sentry/rrweb/RRWebInteractionEvent;
    .param p2, "reader"    # Lio/sentry/ObjectReader;
    .param p3, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 230
    const/4 v0, 0x0

    .line 232
    .local v0, "dataUnknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Deserializer;

    invoke-direct {v1}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Deserializer;-><init>()V

    .line 235
    .local v1, "baseEventDeserializer":Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Deserializer;
    invoke-interface {p2}, Lio/sentry/ObjectReader;->beginObject()V

    .line 236
    :goto_0
    invoke-interface {p2}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_3

    .line 237
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, "pointerId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_1
    const-string v3, "pointerType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_2
    const-string v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_3
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_4
    const-string v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_5
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 258
    invoke-virtual {v1, p1, v2, p2, p3}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Deserializer;->deserializeValue(Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 259
    if-nez v0, :cond_1

    .line 260
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    goto :goto_3

    .line 255
    :pswitch_0
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextInt()I

    move-result v3

    invoke-static {p1, v3}, Lio/sentry/rrweb/RRWebInteractionEvent;->access$502(Lio/sentry/rrweb/RRWebInteractionEvent;I)I

    .line 256
    goto :goto_4

    .line 252
    :pswitch_1
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextInt()I

    move-result v3

    invoke-static {p1, v3}, Lio/sentry/rrweb/RRWebInteractionEvent;->access$402(Lio/sentry/rrweb/RRWebInteractionEvent;I)I

    .line 253
    goto :goto_4

    .line 249
    :pswitch_2
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextFloat()F

    move-result v3

    invoke-static {p1, v3}, Lio/sentry/rrweb/RRWebInteractionEvent;->access$302(Lio/sentry/rrweb/RRWebInteractionEvent;F)F

    .line 250
    goto :goto_4

    .line 246
    :pswitch_3
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextFloat()F

    move-result v3

    invoke-static {p1, v3}, Lio/sentry/rrweb/RRWebInteractionEvent;->access$202(Lio/sentry/rrweb/RRWebInteractionEvent;F)F

    .line 247
    goto :goto_4

    .line 243
    :pswitch_4
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextInt()I

    move-result v3

    invoke-static {p1, v3}, Lio/sentry/rrweb/RRWebInteractionEvent;->access$102(Lio/sentry/rrweb/RRWebInteractionEvent;I)I

    .line 244
    goto :goto_4

    .line 240
    :pswitch_5
    new-instance v3, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType$Deserializer;

    invoke-direct {v3}, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType$Deserializer;-><init>()V

    invoke-interface {p2, p3, v3}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    invoke-static {p1, v3}, Lio/sentry/rrweb/RRWebInteractionEvent;->access$002(Lio/sentry/rrweb/RRWebInteractionEvent;Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;)Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 241
    goto :goto_4

    .line 262
    :cond_1
    :goto_3
    invoke-interface {p2, p3, v0, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 266
    .end local v2    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto/16 :goto_0

    .line 267
    :cond_3
    invoke-virtual {p1, v0}, Lio/sentry/rrweb/RRWebInteractionEvent;->setDataUnknown(Ljava/util/Map;)V

    .line 268
    invoke-interface {p2}, Lio/sentry/ObjectReader;->endObject()V

    .line 269
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_5
        0x79 -> :sswitch_4
        0xd1b -> :sswitch_3
        0x368f3a -> :sswitch_2
        0x2dd3db17 -> :sswitch_1
        0x5d48ac38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebInteractionEvent;
    .locals 5
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lio/sentry/rrweb/RRWebInteractionEvent;

    invoke-direct {v1}, Lio/sentry/rrweb/RRWebInteractionEvent;-><init>()V

    .line 201
    .local v1, "event":Lio/sentry/rrweb/RRWebInteractionEvent;
    new-instance v2, Lio/sentry/rrweb/RRWebEvent$Deserializer;

    invoke-direct {v2}, Lio/sentry/rrweb/RRWebEvent$Deserializer;-><init>()V

    .line 203
    .local v2, "baseEventDeserializer":Lio/sentry/rrweb/RRWebEvent$Deserializer;
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v3, v4, :cond_3

    .line 204
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "nextName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_1

    .line 210
    invoke-virtual {v2, v1, v3, p1, p2}, Lio/sentry/rrweb/RRWebEvent$Deserializer;->deserializeValue(Lio/sentry/rrweb/RRWebEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 211
    if-nez v0, :cond_1

    .line 212
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v0, v4

    goto :goto_3

    .line 207
    :pswitch_1
    invoke-direct {p0, v1, p1, p2}, Lio/sentry/rrweb/RRWebInteractionEvent$Deserializer;->deserializeData(Lio/sentry/rrweb/RRWebInteractionEvent;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)V

    .line 208
    goto :goto_4

    .line 214
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v0, v3}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 218
    .end local v3    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto :goto_0

    .line 220
    :cond_3
    invoke-virtual {v1, v0}, Lio/sentry/rrweb/RRWebInteractionEvent;->setUnknown(Ljava/util/Map;)V

    .line 221
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 222
    return-object v1

    :pswitch_data_0
    .packed-switch 0x2eefaa
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    invoke-virtual {p0, p1, p2}, Lio/sentry/rrweb/RRWebInteractionEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebInteractionEvent;

    move-result-object p1

    return-object p1
.end method
