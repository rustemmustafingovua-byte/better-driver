.class public final Lio/sentry/rrweb/RRWebInteractionMoveEvent$Deserializer;
.super Ljava/lang/Object;
.source "RRWebInteractionMoveEvent.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebInteractionMoveEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/rrweb/RRWebInteractionMoveEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deserializeData(Lio/sentry/rrweb/RRWebInteractionMoveEvent;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)V
    .locals 4
    .param p1, "event"    # Lio/sentry/rrweb/RRWebInteractionMoveEvent;
    .param p2, "reader"    # Lio/sentry/ObjectReader;
    .param p3, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, "dataUnknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Deserializer;

    invoke-direct {v1}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Deserializer;-><init>()V

    .line 278
    .local v1, "baseEventDeserializer":Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Deserializer;
    invoke-interface {p2}, Lio/sentry/ObjectReader;->beginObject()V

    .line 279
    :goto_0
    invoke-interface {p2}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_3

    .line 280
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, "positions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_1
    const-string v3, "pointerId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 289
    invoke-virtual {v1, p1, v2, p2, p3}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Deserializer;->deserializeValue(Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 290
    if-nez v0, :cond_1

    .line 291
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    goto :goto_3

    .line 286
    :pswitch_0
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextInt()I

    move-result v3

    invoke-static {p1, v3}, Lio/sentry/rrweb/RRWebInteractionMoveEvent;->access$502(Lio/sentry/rrweb/RRWebInteractionMoveEvent;I)I

    .line 287
    goto :goto_4

    .line 283
    :pswitch_1
    new-instance v3, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position$Deserializer;

    invoke-direct {v3}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position$Deserializer;-><init>()V

    invoke-interface {p2, p3, v3}, Lio/sentry/ObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v3}, Lio/sentry/rrweb/RRWebInteractionMoveEvent;->access$402(Lio/sentry/rrweb/RRWebInteractionMoveEvent;Ljava/util/List;)Ljava/util/List;

    .line 284
    goto :goto_4

    .line 293
    :cond_1
    :goto_3
    invoke-interface {p2, p3, v0, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 297
    .end local v2    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto :goto_0

    .line 298
    :cond_3
    invoke-virtual {p1, v0}, Lio/sentry/rrweb/RRWebInteractionMoveEvent;->setDataUnknown(Ljava/util/Map;)V

    .line 299
    invoke-interface {p2}, Lio/sentry/ObjectReader;->endObject()V

    .line 300
    return-void

    :sswitch_data_0
    .sparse-switch
        0x5d48ac38 -> :sswitch_1
        0x65c08c6a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebInteractionMoveEvent;
    .locals 5
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 240
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 241
    const/4 v0, 0x0

    .line 243
    .local v0, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lio/sentry/rrweb/RRWebInteractionMoveEvent;

    invoke-direct {v1}, Lio/sentry/rrweb/RRWebInteractionMoveEvent;-><init>()V

    .line 244
    .local v1, "event":Lio/sentry/rrweb/RRWebInteractionMoveEvent;
    new-instance v2, Lio/sentry/rrweb/RRWebEvent$Deserializer;

    invoke-direct {v2}, Lio/sentry/rrweb/RRWebEvent$Deserializer;-><init>()V

    .line 246
    .local v2, "baseEventDeserializer":Lio/sentry/rrweb/RRWebEvent$Deserializer;
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v3, v4, :cond_3

    .line 247
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 248
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

    .line 253
    invoke-virtual {v2, v1, v3, p1, p2}, Lio/sentry/rrweb/RRWebEvent$Deserializer;->deserializeValue(Lio/sentry/rrweb/RRWebEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 254
    if-nez v0, :cond_1

    .line 255
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v0, v4

    goto :goto_3

    .line 250
    :pswitch_1
    invoke-direct {p0, v1, p1, p2}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Deserializer;->deserializeData(Lio/sentry/rrweb/RRWebInteractionMoveEvent;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)V

    .line 251
    goto :goto_4

    .line 257
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v0, v3}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 261
    .end local v3    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto :goto_0

    .line 263
    :cond_3
    invoke-virtual {v1, v0}, Lio/sentry/rrweb/RRWebInteractionMoveEvent;->setUnknown(Ljava/util/Map;)V

    .line 264
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 265
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

    .line 235
    invoke-virtual {p0, p1, p2}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebInteractionMoveEvent;

    move-result-object p1

    return-object p1
.end method
