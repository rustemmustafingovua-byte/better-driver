.class public final Lio/sentry/ProfilingTraceData$Deserializer;
.super Ljava/lang/Object;
.source "ProfilingTraceData.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/ProfilingTraceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/ProfilingTraceData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/ProfilingTraceData;
    .locals 5
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 471
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 472
    new-instance v0, Lio/sentry/ProfilingTraceData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/ProfilingTraceData;-><init>(Lio/sentry/ProfilingTraceData$1;)V

    .line 473
    .local v0, "data":Lio/sentry/ProfilingTraceData;
    const/4 v1, 0x0

    .line 475
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_3

    .line 476
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "transactions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "sampled_profile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x19

    goto/16 :goto_2

    :sswitch_2
    const-string v3, "platform"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_2

    :sswitch_3
    const-string v3, "trace_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x13

    goto/16 :goto_2

    :sswitch_4
    const-string v3, "truncation_reason"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x16

    goto/16 :goto_2

    :sswitch_5
    const-string v3, "device_os_version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_2

    :sswitch_6
    const-string v3, "transaction_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    goto/16 :goto_2

    :sswitch_7
    const-string v3, "architecture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_2

    :sswitch_8
    const-string v3, "device_os_name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto/16 :goto_2

    :sswitch_9
    const-string v3, "transaction_name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_2

    :sswitch_a
    const-string v3, "timestamp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x18

    goto/16 :goto_2

    :sswitch_b
    const-string v3, "environment"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x15

    goto/16 :goto_2

    :sswitch_c
    const-string v3, "version_name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    goto/16 :goto_2

    :sswitch_d
    const-string v3, "version_code"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    goto/16 :goto_2

    :sswitch_e
    const-string v3, "device_cpu_frequencies"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_2

    :sswitch_f
    const-string v3, "device_physical_memory_bytes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_2

    :sswitch_10
    const-string v3, "measurements"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x17

    goto :goto_2

    :sswitch_11
    const-string v3, "duration_ns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    goto :goto_2

    :sswitch_12
    const-string v3, "device_is_emulator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_13
    const-string v3, "device_model"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_14
    const-string v3, "device_os_build_number"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_15
    const-string v3, "profile_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14

    goto :goto_2

    :sswitch_16
    const-string v3, "device_locale"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_17
    const-string v3, "build_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto :goto_2

    :sswitch_18
    const-string v3, "android_api_level"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_19
    const-string v3, "device_manufacturer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 637
    if-nez v1, :cond_1

    .line 638
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v3

    goto/16 :goto_3

    .line 631
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 632
    .local v3, "sampledProfile":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 633
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$2602(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 625
    .end local v3    # "sampledProfile":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1, p2}, Lio/sentry/ObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v3

    .line 626
    .local v3, "timestamp":Ljava/util/Date;
    if-eqz v3, :cond_2

    .line 627
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$2502(Lio/sentry/ProfilingTraceData;Ljava/util/Date;)Ljava/util/Date;

    goto/16 :goto_4

    .line 618
    .end local v3    # "timestamp":Ljava/util/Date;
    :pswitch_2
    new-instance v3, Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;

    invoke-direct {v3}, Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;-><init>()V

    .line 619
    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextMapOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/Map;

    move-result-object v3

    .line 620
    .local v3, "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/profilemeasurements/ProfileMeasurement;>;"
    if-eqz v3, :cond_2

    .line 621
    invoke-static {v0}, Lio/sentry/ProfilingTraceData;->access$2400(Lio/sentry/ProfilingTraceData;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_4

    .line 612
    .end local v3    # "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/profilemeasurements/ProfileMeasurement;>;"
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, "truncationReason":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 614
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$2302(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 606
    .end local v3    # "truncationReason":Ljava/lang/String;
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, "environment":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 608
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$2202(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 600
    .end local v3    # "environment":Ljava/lang/String;
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 601
    .local v3, "profileId":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 602
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$2102(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 594
    .end local v3    # "profileId":Ljava/lang/String;
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, "traceId":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 596
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$2002(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 588
    .end local v3    # "traceId":Ljava/lang/String;
    :pswitch_7
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 589
    .local v3, "transactionId":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 590
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$1902(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 581
    .end local v3    # "transactionId":Ljava/lang/String;
    :pswitch_8
    new-instance v3, Lio/sentry/ProfilingTransactionData$Deserializer;

    invoke-direct {v3}, Lio/sentry/ProfilingTransactionData$Deserializer;-><init>()V

    .line 582
    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v3

    .line 583
    .local v3, "transactions":Ljava/util/List;, "Ljava/util/List<Lio/sentry/ProfilingTransactionData;>;"
    if-eqz v3, :cond_2

    .line 584
    invoke-static {v0}, Lio/sentry/ProfilingTraceData;->access$1800(Lio/sentry/ProfilingTraceData;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 575
    .end local v3    # "transactions":Ljava/util/List;, "Ljava/util/List<Lio/sentry/ProfilingTransactionData;>;"
    :pswitch_9
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 576
    .local v3, "versionName":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 577
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$1702(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 569
    .end local v3    # "versionName":Ljava/lang/String;
    :pswitch_a
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 570
    .local v3, "versionCode":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 571
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$1602(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 563
    .end local v3    # "versionCode":Ljava/lang/String;
    :pswitch_b
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 564
    .local v3, "durationNs":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 565
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$1502(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 557
    .end local v3    # "durationNs":Ljava/lang/String;
    :pswitch_c
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, "transactionName":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 559
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$1402(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 551
    .end local v3    # "transactionName":Ljava/lang/String;
    :pswitch_d
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "buildId":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 553
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$1302(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 545
    .end local v3    # "buildId":Ljava/lang/String;
    :pswitch_e
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 546
    .local v3, "platform":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 547
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$1202(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 539
    .end local v3    # "platform":Ljava/lang/String;
    :pswitch_f
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, "devicePhysicalMemoryBytes":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 541
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$1102(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 533
    .end local v3    # "devicePhysicalMemoryBytes":Ljava/lang/String;
    :pswitch_10
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 534
    .local v3, "deviceCpuFrequencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_2

    .line 535
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$1002(Lio/sentry/ProfilingTraceData;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_4

    .line 527
    .end local v3    # "deviceCpuFrequencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_11
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, "cpuArchitecture":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 529
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$902(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 521
    .end local v3    # "cpuArchitecture":Ljava/lang/String;
    :pswitch_12
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    .line 522
    .local v3, "deviceIsEmulator":Ljava/lang/Boolean;
    if-eqz v3, :cond_2

    .line 523
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v0, v4}, Lio/sentry/ProfilingTraceData;->access$802(Lio/sentry/ProfilingTraceData;Z)Z

    goto :goto_4

    .line 515
    .end local v3    # "deviceIsEmulator":Ljava/lang/Boolean;
    :pswitch_13
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 516
    .local v3, "deviceOsVersion":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 517
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$702(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 509
    .end local v3    # "deviceOsVersion":Ljava/lang/String;
    :pswitch_14
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 510
    .local v3, "deviceOsName":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 511
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$602(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 503
    .end local v3    # "deviceOsName":Ljava/lang/String;
    :pswitch_15
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, "deviceOsBuildNumber":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 505
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$502(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 497
    .end local v3    # "deviceOsBuildNumber":Ljava/lang/String;
    :pswitch_16
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, "deviceModel":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 499
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$402(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 491
    .end local v3    # "deviceModel":Ljava/lang/String;
    :pswitch_17
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, "deviceManufacturer":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 493
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$302(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 485
    .end local v3    # "deviceManufacturer":Ljava/lang/String;
    :pswitch_18
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, "deviceLocale":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 487
    invoke-static {v0, v3}, Lio/sentry/ProfilingTraceData;->access$202(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 479
    .end local v3    # "deviceLocale":Ljava/lang/String;
    :pswitch_19
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v3

    .line 480
    .local v3, "apiLevel":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 481
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v4}, Lio/sentry/ProfilingTraceData;->access$102(Lio/sentry/ProfilingTraceData;I)I

    goto :goto_4

    .line 640
    .end local v3    # "apiLevel":Ljava/lang/Integer;
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 643
    .end local v2    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto/16 :goto_0

    .line 644
    :cond_3
    invoke-virtual {v0, v1}, Lio/sentry/ProfilingTraceData;->setUnknown(Ljava/util/Map;)V

    .line 645
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 646
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7f2b14e6 -> :sswitch_19
        -0x761ad0b1 -> :sswitch_18
        -0x55461374 -> :sswitch_17
        -0x45ddbf9d -> :sswitch_16
        -0x41b8e48f -> :sswitch_15
        -0x2ab74f34 -> :sswitch_14
        -0x233b1c00 -> :sswitch_13
        -0x1e8c4ddf -> :sswitch_12
        -0x1c7eb3b0 -> :sswitch_11
        -0x159763c9 -> :sswitch_10
        -0x13d06b14 -> :sswitch_f
        -0xca6e506 -> :sswitch_e
        -0x6236f0c -> :sswitch_d
        -0x61ea26e -> :sswitch_c
        -0x51ecded -> :sswitch_b
        0x3492916 -> :sswitch_a
        0x1e547b4c -> :sswitch_9
        0x2f79431d -> :sswitch_8
        0x320c6953 -> :sswitch_7
        0x3c3c4a1c -> :sswitch_6
        0x3ebcb306 -> :sswitch_5
        0x4560227a -> :sswitch_4
        0x4bb73e55 -> :sswitch_3
        0x6fbd6873 -> :sswitch_2
        0x746ad664 -> :sswitch_1
        0x74798955 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

    .line 465
    invoke-virtual {p0, p1, p2}, Lio/sentry/ProfilingTraceData$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/ProfilingTraceData;

    move-result-object p1

    return-object p1
.end method
