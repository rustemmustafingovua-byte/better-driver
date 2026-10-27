.class public final Lio/sentry/protocol/Device$Deserializer;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/Device;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Device;
    .locals 6
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 768
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 769
    new-instance v0, Lio/sentry/protocol/Device;

    invoke-direct {v0}, Lio/sentry/protocol/Device;-><init>()V

    .line 770
    .local v0, "device":Lio/sentry/protocol/Device;
    const/4 v1, 0x0

    .line 771
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_3

    .line 772
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 773
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "screen_height_pixels"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x15

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "free_storage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    goto/16 :goto_2

    :sswitch_2
    const-string v3, "external_free_storage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x13

    goto/16 :goto_2

    :sswitch_3
    const-string v3, "charging"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_2

    :sswitch_4
    const-string v3, "memory_size"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_2

    :sswitch_5
    const-string v3, "usable_memory"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    goto/16 :goto_2

    :sswitch_6
    const-string v3, "storage_size"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    goto/16 :goto_2

    :sswitch_7
    const-string v3, "external_storage_size"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    goto/16 :goto_2

    :sswitch_8
    const-string v3, "screen_width_pixels"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14

    goto/16 :goto_2

    :sswitch_9
    const-string v3, "chipset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x22

    goto/16 :goto_2

    :sswitch_a
    const-string v3, "connection_type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1b

    goto/16 :goto_2

    :sswitch_b
    const-string v3, "processor_frequency"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x20

    goto/16 :goto_2

    :sswitch_c
    const-string v3, "cpu_description"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x21

    goto/16 :goto_2

    :sswitch_d
    const-string v3, "model"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_2

    :sswitch_e
    const-string v3, "brand"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto/16 :goto_2

    :sswitch_f
    const-string v3, "archs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_2

    :sswitch_10
    const-string v3, "low_memory"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    goto/16 :goto_2

    :sswitch_11
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_2

    :sswitch_12
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1a

    goto/16 :goto_2

    :sswitch_13
    const-string v3, "connection_effective_type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1c

    goto/16 :goto_2

    :sswitch_14
    const-string v3, "free_memory"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_2

    :sswitch_15
    const-string v3, "screen_dpi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x17

    goto/16 :goto_2

    :sswitch_16
    const-string v3, "screen_density"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x16

    goto/16 :goto_2

    :sswitch_17
    const-string v3, "model_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto/16 :goto_2

    :sswitch_18
    const-string v3, "battery_level"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto/16 :goto_2

    :sswitch_19
    const-string v3, "online"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_2

    :sswitch_1a
    const-string v3, "locale"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1e

    goto :goto_2

    :sswitch_1b
    const-string v3, "family"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_1c
    const-string v3, "battery_temperature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1d

    goto :goto_2

    :sswitch_1d
    const-string v3, "orientation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto :goto_2

    :sswitch_1e
    const-string v3, "processor_count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1f

    goto :goto_2

    :sswitch_1f
    const-string v3, "manufacturer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_20
    const-string v3, "simulator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto :goto_2

    :sswitch_21
    const-string v3, "boot_time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x18

    goto :goto_2

    :sswitch_22
    const-string v3, "timezone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x19

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 887
    if-nez v1, :cond_1

    .line 888
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v3

    goto/16 :goto_3

    .line 884
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$3402(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    .line 885
    goto/16 :goto_4

    .line 881
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$3302(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    .line 882
    goto/16 :goto_4

    .line 878
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$3202(Lio/sentry/protocol/Device;Ljava/lang/Double;)Ljava/lang/Double;

    .line 879
    goto/16 :goto_4

    .line 875
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$3102(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 876
    goto/16 :goto_4

    .line 872
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$3002(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    .line 873
    goto/16 :goto_4

    .line 869
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextFloatOrNull()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$2902(Lio/sentry/protocol/Device;Ljava/lang/Float;)Ljava/lang/Float;

    .line 870
    goto/16 :goto_4

    .line 866
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$2802(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    .line 867
    goto/16 :goto_4

    .line 863
    :pswitch_7
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$2702(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    .line 864
    goto/16 :goto_4

    .line 860
    :pswitch_8
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$2602(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    .line 861
    goto/16 :goto_4

    .line 857
    :pswitch_9
    invoke-interface {p1, p2}, Lio/sentry/ObjectReader;->nextTimeZoneOrNull(Lio/sentry/ILogger;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$2502(Lio/sentry/protocol/Device;Ljava/util/TimeZone;)Ljava/util/TimeZone;

    .line 858
    goto/16 :goto_4

    .line 852
    :pswitch_a
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->STRING:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v3, v4, :cond_2

    .line 853
    invoke-interface {p1, p2}, Lio/sentry/ObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$2402(Lio/sentry/protocol/Device;Ljava/util/Date;)Ljava/util/Date;

    goto/16 :goto_4

    .line 849
    :pswitch_b
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$2302(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 850
    goto/16 :goto_4

    .line 846
    :pswitch_c
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextFloatOrNull()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$2202(Lio/sentry/protocol/Device;Ljava/lang/Float;)Ljava/lang/Float;

    .line 847
    goto/16 :goto_4

    .line 843
    :pswitch_d
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$2102(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 844
    goto/16 :goto_4

    .line 840
    :pswitch_e
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$2002(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 841
    goto/16 :goto_4

    .line 837
    :pswitch_f
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$1902(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    .line 838
    goto/16 :goto_4

    .line 834
    :pswitch_10
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$1802(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    .line 835
    goto/16 :goto_4

    .line 831
    :pswitch_11
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$1702(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    .line 832
    goto/16 :goto_4

    .line 828
    :pswitch_12
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$1602(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    .line 829
    goto/16 :goto_4

    .line 825
    :pswitch_13
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$1502(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 826
    goto/16 :goto_4

    .line 822
    :pswitch_14
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$1402(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    .line 823
    goto/16 :goto_4

    .line 819
    :pswitch_15
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$1302(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    .line 820
    goto/16 :goto_4

    .line 816
    :pswitch_16
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$1202(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    .line 817
    goto/16 :goto_4

    .line 813
    :pswitch_17
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$1102(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 814
    goto/16 :goto_4

    .line 810
    :pswitch_18
    new-instance v3, Lio/sentry/protocol/Device$DeviceOrientation$Deserializer;

    invoke-direct {v3}, Lio/sentry/protocol/Device$DeviceOrientation$Deserializer;-><init>()V

    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/Device$DeviceOrientation;

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$1002(Lio/sentry/protocol/Device;Lio/sentry/protocol/Device$DeviceOrientation;)Lio/sentry/protocol/Device$DeviceOrientation;

    .line 811
    goto :goto_4

    .line 807
    :pswitch_19
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$902(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 808
    goto :goto_4

    .line 804
    :pswitch_1a
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$802(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 805
    goto :goto_4

    .line 801
    :pswitch_1b
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextFloatOrNull()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$702(Lio/sentry/protocol/Device;Ljava/lang/Float;)Ljava/lang/Float;

    .line 802
    goto :goto_4

    .line 793
    :pswitch_1c
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 794
    .local v3, "archsList":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v3, :cond_2

    .line 795
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 796
    .local v4, "archsArray":[Ljava/lang/Object;
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 797
    move-object v5, v4

    check-cast v5, [Ljava/lang/String;

    invoke-static {v0, v5}, Lio/sentry/protocol/Device;->access$602(Lio/sentry/protocol/Device;[Ljava/lang/String;)[Ljava/lang/String;

    .line 798
    .end local v4    # "archsArray":[Ljava/lang/Object;
    goto :goto_4

    .line 790
    .end local v3    # "archsList":Ljava/util/List;, "Ljava/util/List<*>;"
    :pswitch_1d
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$502(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    .line 791
    goto :goto_4

    .line 787
    :pswitch_1e
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$402(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    .line 788
    goto :goto_4

    .line 784
    :pswitch_1f
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$302(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    .line 785
    goto :goto_4

    .line 781
    :pswitch_20
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$202(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    .line 782
    goto :goto_4

    .line 778
    :pswitch_21
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$102(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    .line 779
    goto :goto_4

    .line 775
    :pswitch_22
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->access$002(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    .line 776
    goto :goto_4

    .line 890
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 893
    .end local v2    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto/16 :goto_0

    .line 894
    :cond_3
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setUnknown(Ljava/util/Map;)V

    .line 895
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 896
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7bc0b807 -> :sswitch_22
        -0x77f42806 -> :sswitch_21
        -0x7618bbfc -> :sswitch_20
        -0x7561dc2f -> :sswitch_1f
        -0x5fd834de -> :sswitch_1e
        -0x55cd0a30 -> :sswitch_1d
        -0x5412d9be -> :sswitch_1c
        -0x4c67a49c -> :sswitch_1b
        -0x4169f1a6 -> :sswitch_1a
        -0x3c5549ad -> :sswitch_19
        -0x3449d12e -> :sswitch_18
        -0x24e5c60f -> :sswitch_17
        -0x21df2feb -> :sswitch_16
        -0x18dba0f6 -> :sswitch_15
        -0x8232dcc -> :sswitch_14
        -0x7bf59ad -> :sswitch_13
        0xd1b -> :sswitch_12
        0x337a8b -> :sswitch_11
        0x386704c -> :sswitch_10
        0x58c3add -> :sswitch_f
        0x59a4b87 -> :sswitch_e
        0x633fb29 -> :sswitch_d
        0x6e627e5 -> :sswitch_c
        0xe92bdef -> :sswitch_b
        0x2b9f63fb -> :sswitch_a
        0x2c7d3496 -> :sswitch_9
        0x30bf1c39 -> :sswitch_8
        0x311b7339 -> :sswitch_7
        0x357dab45 -> :sswitch_6
        0x4f5c8e28 -> :sswitch_5
        0x5490d47f -> :sswitch_4
        0x55996271 -> :sswitch_3
        0x56769b9c -> :sswitch_2
        0x5ad8d3a8 -> :sswitch_1
        0x5cc30632 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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

    .line 763
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/Device$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Device;

    move-result-object p1

    return-object p1
.end method
