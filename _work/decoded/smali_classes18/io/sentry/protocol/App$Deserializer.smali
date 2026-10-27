.class public final Lio/sentry/protocol/App$Deserializer;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/App;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/App;
    .locals 4
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 323
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 324
    new-instance v0, Lio/sentry/protocol/App;

    invoke-direct {v0}, Lio/sentry/protocol/App;-><init>()V

    .line 325
    .local v0, "app":Lio/sentry/protocol/App;
    const/4 v1, 0x0

    .line 326
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_3

    .line 327
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "is_split_apks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "app_build"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_2

    :sswitch_2
    const-string v3, "app_name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_2

    :sswitch_3
    const-string v3, "permissions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_4
    const-string v3, "app_start_time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_5
    const-string v3, "app_identifier"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_6
    const-string v3, "build_type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_7
    const-string v3, "in_foreground"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_8
    const-string v3, "app_version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_9
    const-string v3, "view_names"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto :goto_2

    :sswitch_a
    const-string v3, "start_type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto :goto_2

    :sswitch_b
    const-string v3, "device_app_hash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_c
    const-string v3, "split_names"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 377
    if-nez v1, :cond_1

    .line 378
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v3

    goto/16 :goto_3

    .line 371
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 372
    .local v3, "splitNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    .line 373
    invoke-virtual {v0, v3}, Lio/sentry/protocol/App;->setSplitNames(Ljava/util/List;)V

    goto/16 :goto_4

    .line 368
    .end local v3    # "splitNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/App;->access$1002(Lio/sentry/protocol/App;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 369
    goto/16 :goto_4

    .line 365
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/App;->access$902(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    goto :goto_4

    .line 359
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 360
    .local v3, "viewNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    .line 361
    invoke-virtual {v0, v3}, Lio/sentry/protocol/App;->setViewNames(Ljava/util/List;)V

    goto :goto_4

    .line 356
    .end local v3    # "viewNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/App;->access$802(Lio/sentry/protocol/App;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 357
    goto :goto_4

    .line 351
    :pswitch_5
    nop

    .line 353
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 352
    invoke-static {v3}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 351
    invoke-static {v0, v3}, Lio/sentry/protocol/App;->access$702(Lio/sentry/protocol/App;Ljava/util/Map;)Ljava/util/Map;

    .line 354
    goto :goto_4

    .line 348
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/App;->access$602(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    goto :goto_4

    .line 345
    :pswitch_7
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/App;->access$502(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    goto :goto_4

    .line 342
    :pswitch_8
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/App;->access$402(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    goto :goto_4

    .line 339
    :pswitch_9
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/App;->access$302(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    goto :goto_4

    .line 336
    :pswitch_a
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/App;->access$202(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    goto :goto_4

    .line 333
    :pswitch_b
    invoke-interface {p1, p2}, Lio/sentry/ObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/App;->access$102(Lio/sentry/protocol/App;Ljava/util/Date;)Ljava/util/Date;

    .line 334
    goto :goto_4

    .line 330
    :pswitch_c
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/App;->access$002(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    goto :goto_4

    .line 380
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 383
    .end local v2    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto/16 :goto_0

    .line 384
    :cond_3
    invoke-virtual {v0, v1}, Lio/sentry/protocol/App;->setUnknown(Ljava/util/Map;)V

    .line 385
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 386
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x743ce61d -> :sswitch_c
        -0x7121ffcb -> :sswitch_b
        -0x5dc40f09 -> :sswitch_a
        -0x5adfdad2 -> :sswitch_9
        -0x35c17346 -> :sswitch_8
        -0x26c68763 -> :sswitch_7
        -0x1c09a995 -> :sswitch_6
        0x2c7b9987 -> :sswitch_5
        0x2f2ea168 -> :sswitch_4
        0x4392f484 -> :sswitch_3
        0x4598e5e9 -> :sswitch_2
        0x6ce3c6d0 -> :sswitch_1
        0x751f9211 -> :sswitch_0
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

    .line 318
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/App$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/App;

    move-result-object p1

    return-object p1
.end method
