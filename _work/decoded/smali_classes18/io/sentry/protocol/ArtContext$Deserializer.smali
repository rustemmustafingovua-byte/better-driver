.class public final Lio/sentry/protocol/ArtContext$Deserializer;
.super Ljava/lang/Object;
.source "ArtContext.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/ArtContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/ArtContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/ArtContext;
    .locals 4
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 280
    new-instance v0, Lio/sentry/protocol/ArtContext;

    invoke-direct {v0}, Lio/sentry/protocol/ArtContext;-><init>()V

    .line 281
    .local v0, "artContext":Lio/sentry/protocol/ArtContext;
    const/4 v1, 0x0

    .line 282
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_2

    .line 283
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "memory.max"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "gc.total_count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_2
    const-string v3, "gc.blocking_count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_3
    const-string v3, "memory.free"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_4
    const-string v3, "gc.pre_oome_count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_5
    const-string v3, "memory.total"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto :goto_2

    :sswitch_6
    const-string v3, "memory.free_until_oome"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_7
    const-string v3, "gc.waiting_time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_8
    const-string v3, "gc.blocking_time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_9
    const-string v3, "memory.free_until_gc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_a
    const-string v3, "gc.total_time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 319
    if-nez v1, :cond_1

    .line 320
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v3

    goto :goto_3

    .line 316
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/ArtContext;->access$1002(Lio/sentry/protocol/ArtContext;Ljava/lang/Long;)Ljava/lang/Long;

    .line 317
    goto :goto_4

    .line 313
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/ArtContext;->access$902(Lio/sentry/protocol/ArtContext;Ljava/lang/Long;)Ljava/lang/Long;

    .line 314
    goto :goto_4

    .line 310
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/ArtContext;->access$802(Lio/sentry/protocol/ArtContext;Ljava/lang/Long;)Ljava/lang/Long;

    .line 311
    goto :goto_4

    .line 307
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/ArtContext;->access$702(Lio/sentry/protocol/ArtContext;Ljava/lang/Long;)Ljava/lang/Long;

    .line 308
    goto :goto_4

    .line 304
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/ArtContext;->access$602(Lio/sentry/protocol/ArtContext;Ljava/lang/Long;)Ljava/lang/Long;

    .line 305
    goto :goto_4

    .line 301
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/ArtContext;->access$502(Lio/sentry/protocol/ArtContext;Ljava/lang/Double;)Ljava/lang/Double;

    .line 302
    goto :goto_4

    .line 298
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/ArtContext;->access$402(Lio/sentry/protocol/ArtContext;Ljava/lang/Long;)Ljava/lang/Long;

    .line 299
    goto :goto_4

    .line 295
    :pswitch_7
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/ArtContext;->access$302(Lio/sentry/protocol/ArtContext;Ljava/lang/Double;)Ljava/lang/Double;

    .line 296
    goto :goto_4

    .line 292
    :pswitch_8
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/ArtContext;->access$202(Lio/sentry/protocol/ArtContext;Ljava/lang/Long;)Ljava/lang/Long;

    .line 293
    goto :goto_4

    .line 289
    :pswitch_9
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/ArtContext;->access$102(Lio/sentry/protocol/ArtContext;Ljava/lang/Double;)Ljava/lang/Double;

    .line 290
    goto :goto_4

    .line 286
    :pswitch_a
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/ArtContext;->access$002(Lio/sentry/protocol/ArtContext;Ljava/lang/Long;)Ljava/lang/Long;

    .line 287
    goto :goto_4

    .line 322
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 325
    .end local v2    # "nextName":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 326
    :cond_2
    invoke-virtual {v0, v1}, Lio/sentry/protocol/ArtContext;->setUnknown(Ljava/util/Map;)V

    .line 327
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 328
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7888b4c6 -> :sswitch_a
        -0x73e97c5d -> :sswitch_9
        -0x4fd970fb -> :sswitch_8
        -0x398dbeaf -> :sswitch_7
        -0x1f77fb81 -> :sswitch_6
        -0x1602ffe9 -> :sswitch_5
        0x1d8143f6 -> :sswitch_4
        0x51d88b39 -> :sswitch_3
        0x53be9bd7 -> :sswitch_2
        0x66856642 -> :sswitch_1
        0x7640e2f7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
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

    .line 275
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/ArtContext$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/ArtContext;

    move-result-object p1

    return-object p1
.end method
