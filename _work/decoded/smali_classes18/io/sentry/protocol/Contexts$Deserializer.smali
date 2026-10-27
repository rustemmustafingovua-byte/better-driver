.class public final Lio/sentry/protocol/Contexts$Deserializer;
.super Ljava/lang/Object;
.source "Contexts.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/Contexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/Contexts;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Contexts;
    .locals 3
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 330
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    .line 331
    .local v0, "contexts":Lio/sentry/protocol/Contexts;
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 332
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_2

    .line 333
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "nextName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v2, "runtime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "browser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "trace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "flags"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto :goto_2

    :sswitch_4
    const-string v2, "gpu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_5
    const-string v2, "art"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_2

    :sswitch_6
    const-string v2, "app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_7
    const-string v2, "os"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_8
    const-string v2, "feedback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_9
    const-string v2, "profile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_2

    :sswitch_a
    const-string v2, "response"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto :goto_2

    :sswitch_b
    const-string v2, "spring"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto :goto_2

    :sswitch_c
    const-string v2, "device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 376
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v2

    .line 377
    .local v2, "object":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 378
    invoke-virtual {v0, v1, v2}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 373
    .end local v2    # "object":Ljava/lang/Object;
    :pswitch_0
    new-instance v2, Lio/sentry/protocol/FeatureFlags$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/FeatureFlags$Deserializer;-><init>()V

    invoke-virtual {v2, p1, p2}, Lio/sentry/protocol/FeatureFlags$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/FeatureFlags;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Contexts;->setFeatureFlags(Lio/sentry/protocol/FeatureFlags;)V

    .line 374
    goto/16 :goto_3

    .line 370
    :pswitch_1
    new-instance v2, Lio/sentry/protocol/ArtContext$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/ArtContext$Deserializer;-><init>()V

    invoke-virtual {v2, p1, p2}, Lio/sentry/protocol/ArtContext$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/ArtContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Contexts;->setArt(Lio/sentry/protocol/ArtContext;)V

    .line 371
    goto/16 :goto_3

    .line 367
    :pswitch_2
    new-instance v2, Lio/sentry/protocol/Spring$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/Spring$Deserializer;-><init>()V

    invoke-virtual {v2, p1, p2}, Lio/sentry/protocol/Spring$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Spring;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Contexts;->setSpring(Lio/sentry/protocol/Spring;)V

    .line 368
    goto/16 :goto_3

    .line 364
    :pswitch_3
    new-instance v2, Lio/sentry/protocol/Response$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/Response$Deserializer;-><init>()V

    invoke-virtual {v2, p1, p2}, Lio/sentry/protocol/Response$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Response;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Contexts;->setResponse(Lio/sentry/protocol/Response;)V

    .line 365
    goto/16 :goto_3

    .line 361
    :pswitch_4
    new-instance v2, Lio/sentry/ProfileContext$Deserializer;

    invoke-direct {v2}, Lio/sentry/ProfileContext$Deserializer;-><init>()V

    invoke-virtual {v2, p1, p2}, Lio/sentry/ProfileContext$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/ProfileContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Contexts;->setProfile(Lio/sentry/ProfileContext;)V

    .line 362
    goto :goto_3

    .line 358
    :pswitch_5
    new-instance v2, Lio/sentry/SpanContext$Deserializer;

    invoke-direct {v2}, Lio/sentry/SpanContext$Deserializer;-><init>()V

    invoke-virtual {v2, p1, p2}, Lio/sentry/SpanContext$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SpanContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    .line 359
    goto :goto_3

    .line 355
    :pswitch_6
    new-instance v2, Lio/sentry/protocol/Feedback$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/Feedback$Deserializer;-><init>()V

    invoke-virtual {v2, p1, p2}, Lio/sentry/protocol/Feedback$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Feedback;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Contexts;->setFeedback(Lio/sentry/protocol/Feedback;)V

    .line 356
    goto :goto_3

    .line 352
    :pswitch_7
    new-instance v2, Lio/sentry/protocol/SentryRuntime$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/SentryRuntime$Deserializer;-><init>()V

    invoke-virtual {v2, p1, p2}, Lio/sentry/protocol/SentryRuntime$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryRuntime;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Contexts;->setRuntime(Lio/sentry/protocol/SentryRuntime;)V

    .line 353
    goto :goto_3

    .line 348
    :pswitch_8
    new-instance v2, Lio/sentry/protocol/OperatingSystem$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/OperatingSystem$Deserializer;-><init>()V

    .line 349
    invoke-virtual {v2, p1, p2}, Lio/sentry/protocol/OperatingSystem$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/OperatingSystem;

    move-result-object v2

    .line 348
    invoke-virtual {v0, v2}, Lio/sentry/protocol/Contexts;->setOperatingSystem(Lio/sentry/protocol/OperatingSystem;)V

    .line 350
    goto :goto_3

    .line 345
    :pswitch_9
    new-instance v2, Lio/sentry/protocol/Gpu$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/Gpu$Deserializer;-><init>()V

    invoke-virtual {v2, p1, p2}, Lio/sentry/protocol/Gpu$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Gpu;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Contexts;->setGpu(Lio/sentry/protocol/Gpu;)V

    .line 346
    goto :goto_3

    .line 342
    :pswitch_a
    new-instance v2, Lio/sentry/protocol/Device$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/Device$Deserializer;-><init>()V

    invoke-virtual {v2, p1, p2}, Lio/sentry/protocol/Device$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Device;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Contexts;->setDevice(Lio/sentry/protocol/Device;)V

    .line 343
    goto :goto_3

    .line 339
    :pswitch_b
    new-instance v2, Lio/sentry/protocol/Browser$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/Browser$Deserializer;-><init>()V

    invoke-virtual {v2, p1, p2}, Lio/sentry/protocol/Browser$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Browser;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Contexts;->setBrowser(Lio/sentry/protocol/Browser;)V

    .line 340
    goto :goto_3

    .line 336
    :pswitch_c
    new-instance v2, Lio/sentry/protocol/App$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/App$Deserializer;-><init>()V

    invoke-virtual {v2, p1, p2}, Lio/sentry/protocol/App$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/App;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    .line 337
    nop

    .line 382
    .end local v1    # "nextName":Ljava/lang/String;
    :cond_1
    :goto_3
    goto/16 :goto_0

    .line 383
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 384
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f94e1aa -> :sswitch_c
        -0x3562fdf3 -> :sswitch_b
        -0x1448ebbf -> :sswitch_a
        -0x12717657 -> :sswitch_9
        -0xb6a147b -> :sswitch_8
        0xde4 -> :sswitch_7
        0x17a21 -> :sswitch_6
        0x17a63 -> :sswitch_5
        0x190ac -> :sswitch_4
        0x5cfee87 -> :sswitch_3
        0x697f145 -> :sswitch_2
        0x8ff2b28 -> :sswitch_1
        0x5c71cfd8 -> :sswitch_0
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
            0x1010,
            0x1010
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

    .line 325
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/Contexts$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Contexts;

    move-result-object p1

    return-object p1
.end method
