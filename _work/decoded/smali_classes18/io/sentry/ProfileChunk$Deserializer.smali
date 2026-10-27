.class public final Lio/sentry/ProfileChunk$Deserializer;
.super Ljava/lang/Object;
.source "ProfileChunk.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/ProfileChunk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/ProfileChunk;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/ProfileChunk;
    .locals 6
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 302
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 303
    new-instance v0, Lio/sentry/ProfileChunk;

    invoke-direct {v0}, Lio/sentry/ProfileChunk;-><init>()V

    .line 304
    .local v0, "data":Lio/sentry/ProfileChunk;
    const/4 v1, 0x0

    .line 306
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_3

    .line 307
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "chunk_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "sampled_profile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_2

    :sswitch_2
    const-string v3, "platform"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto/16 :goto_2

    :sswitch_3
    const-string v3, "client_sdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_4
    const-string v3, "release"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_5
    const-string v3, "content_type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto :goto_2

    :sswitch_6
    const-string v3, "version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_7
    const-string v3, "profiler_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_8
    const-string v3, "timestamp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto :goto_2

    :sswitch_9
    const-string v3, "environment"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_a
    const-string v3, "profile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto :goto_2

    :sswitch_b
    const-string v3, "measurements"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_c
    const-string v3, "debug_meta"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 390
    if-nez v1, :cond_1

    .line 391
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v3

    goto/16 :goto_3

    .line 383
    :pswitch_0
    new-instance v3, Lio/sentry/protocol/profiling/SentryProfile$Deserializer;

    invoke-direct {v3}, Lio/sentry/protocol/profiling/SentryProfile$Deserializer;-><init>()V

    .line 384
    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/profiling/SentryProfile;

    .line 385
    .local v3, "sentryProfile":Lio/sentry/protocol/profiling/SentryProfile;
    if-eqz v3, :cond_2

    .line 386
    invoke-static {v0, v3}, Lio/sentry/ProfileChunk;->access$1202(Lio/sentry/ProfileChunk;Lio/sentry/protocol/profiling/SentryProfile;)Lio/sentry/protocol/profiling/SentryProfile;

    goto/16 :goto_4

    .line 377
    .end local v3    # "sentryProfile":Lio/sentry/protocol/profiling/SentryProfile;
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "contentType":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 379
    invoke-static {v0, v3}, Lio/sentry/ProfileChunk;->access$002(Lio/sentry/ProfileChunk;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 371
    .end local v3    # "contentType":Ljava/lang/String;
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v3

    .line 372
    .local v3, "timestamp":Ljava/lang/Double;
    if-eqz v3, :cond_2

    .line 373
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lio/sentry/ProfileChunk;->access$1102(Lio/sentry/ProfileChunk;D)D

    goto/16 :goto_4

    .line 365
    .end local v3    # "timestamp":Ljava/lang/Double;
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "sampledProfile":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 367
    invoke-static {v0, v3}, Lio/sentry/ProfileChunk;->access$1002(Lio/sentry/ProfileChunk;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 359
    .end local v3    # "sampledProfile":Ljava/lang/String;
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "version":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 361
    invoke-static {v0, v3}, Lio/sentry/ProfileChunk;->access$902(Lio/sentry/ProfileChunk;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 353
    .end local v3    # "version":Ljava/lang/String;
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "environment":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 355
    invoke-static {v0, v3}, Lio/sentry/ProfileChunk;->access$802(Lio/sentry/ProfileChunk;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 347
    .end local v3    # "environment":Ljava/lang/String;
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "release":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 349
    invoke-static {v0, v3}, Lio/sentry/ProfileChunk;->access$702(Lio/sentry/ProfileChunk;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 341
    .end local v3    # "release":Ljava/lang/String;
    :pswitch_7
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, "platform":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 343
    invoke-static {v0, v3}, Lio/sentry/ProfileChunk;->access$602(Lio/sentry/ProfileChunk;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 334
    .end local v3    # "platform":Ljava/lang/String;
    :pswitch_8
    new-instance v3, Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;

    invoke-direct {v3}, Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;-><init>()V

    .line 335
    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextMapOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/Map;

    move-result-object v3

    .line 336
    .local v3, "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/profilemeasurements/ProfileMeasurement;>;"
    if-eqz v3, :cond_2

    .line 337
    invoke-static {v0}, Lio/sentry/ProfileChunk;->access$500(Lio/sentry/ProfileChunk;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_4

    .line 328
    .end local v3    # "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/profilemeasurements/ProfileMeasurement;>;"
    :pswitch_9
    new-instance v3, Lio/sentry/protocol/SdkVersion$Deserializer;

    invoke-direct {v3}, Lio/sentry/protocol/SdkVersion$Deserializer;-><init>()V

    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/SdkVersion;

    .line 329
    .local v3, "clientSdk":Lio/sentry/protocol/SdkVersion;
    if-eqz v3, :cond_2

    .line 330
    invoke-static {v0, v3}, Lio/sentry/ProfileChunk;->access$402(Lio/sentry/ProfileChunk;Lio/sentry/protocol/SdkVersion;)Lio/sentry/protocol/SdkVersion;

    goto :goto_4

    .line 322
    .end local v3    # "clientSdk":Lio/sentry/protocol/SdkVersion;
    :pswitch_a
    new-instance v3, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v3}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/SentryId;

    .line 323
    .local v3, "chunkId":Lio/sentry/protocol/SentryId;
    if-eqz v3, :cond_2

    .line 324
    invoke-static {v0, v3}, Lio/sentry/ProfileChunk;->access$302(Lio/sentry/ProfileChunk;Lio/sentry/protocol/SentryId;)Lio/sentry/protocol/SentryId;

    goto :goto_4

    .line 316
    .end local v3    # "chunkId":Lio/sentry/protocol/SentryId;
    :pswitch_b
    new-instance v3, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v3}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/SentryId;

    .line 317
    .local v3, "profilerId":Lio/sentry/protocol/SentryId;
    if-eqz v3, :cond_2

    .line 318
    invoke-static {v0, v3}, Lio/sentry/ProfileChunk;->access$202(Lio/sentry/ProfileChunk;Lio/sentry/protocol/SentryId;)Lio/sentry/protocol/SentryId;

    goto :goto_4

    .line 310
    .end local v3    # "profilerId":Lio/sentry/protocol/SentryId;
    :pswitch_c
    new-instance v3, Lio/sentry/protocol/DebugMeta$Deserializer;

    invoke-direct {v3}, Lio/sentry/protocol/DebugMeta$Deserializer;-><init>()V

    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/DebugMeta;

    .line 311
    .local v3, "debugMeta":Lio/sentry/protocol/DebugMeta;
    if-eqz v3, :cond_2

    .line 312
    invoke-static {v0, v3}, Lio/sentry/ProfileChunk;->access$102(Lio/sentry/ProfileChunk;Lio/sentry/protocol/DebugMeta;)Lio/sentry/protocol/DebugMeta;

    goto :goto_4

    .line 393
    .end local v3    # "debugMeta":Lio/sentry/protocol/DebugMeta;
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 396
    .end local v2    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto/16 :goto_0

    .line 397
    :cond_3
    invoke-virtual {v0, v1}, Lio/sentry/ProfileChunk;->setUnknown(Ljava/util/Map;)V

    .line 398
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 399
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6db2cb8f -> :sswitch_c
        -0x159763c9 -> :sswitch_b
        -0x12717657 -> :sswitch_a
        -0x51ecded -> :sswitch_9
        0x3492916 -> :sswitch_8
        0xaa4d131 -> :sswitch_7
        0x14f51cd8 -> :sswitch_6
        0x3194f740 -> :sswitch_5
        0x41012807 -> :sswitch_4
        0x41bb01c6 -> :sswitch_3
        0x6fbd6873 -> :sswitch_2
        0x746ad664 -> :sswitch_1
        0x77839c2d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
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

    .line 297
    invoke-virtual {p0, p1, p2}, Lio/sentry/ProfileChunk$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/ProfileChunk;

    move-result-object p1

    return-object p1
.end method
