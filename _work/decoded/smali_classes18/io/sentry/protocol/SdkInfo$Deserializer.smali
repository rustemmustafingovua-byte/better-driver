.class public final Lio/sentry/protocol/SdkInfo$Deserializer;
.super Ljava/lang/Object;
.source "SdkInfo.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SdkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SdkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SdkInfo;
    .locals 4
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    new-instance v0, Lio/sentry/protocol/SdkInfo;

    invoke-direct {v0}, Lio/sentry/protocol/SdkInfo;-><init>()V

    .line 126
    .local v0, "sdkInfo":Lio/sentry/protocol/SdkInfo;
    const/4 v1, 0x0

    .line 128
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 129
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_2

    .line 130
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, "version_minor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_1
    const-string v3, "version_major"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_2
    const-string v3, "version_patchlevel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_3
    const-string v3, "sdk_name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 145
    if-nez v1, :cond_1

    .line 146
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    goto :goto_3

    .line 142
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SdkInfo;->access$302(Lio/sentry/protocol/SdkInfo;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 143
    goto :goto_4

    .line 139
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SdkInfo;->access$202(Lio/sentry/protocol/SdkInfo;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 140
    goto :goto_4

    .line 136
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SdkInfo;->access$102(Lio/sentry/protocol/SdkInfo;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 137
    goto :goto_4

    .line 133
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SdkInfo;->access$002(Lio/sentry/protocol/SdkInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    goto :goto_4

    .line 148
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 151
    .end local v2    # "nextName":Ljava/lang/String;
    :goto_4
    goto :goto_0

    .line 152
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 154
    invoke-virtual {v0, v1}, Lio/sentry/protocol/SdkInfo;->setUnknown(Ljava/util/Map;)V

    .line 155
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x101b0b70 -> :sswitch_3
        0x297daa03 -> :sswitch_2
        0x423c3392 -> :sswitch_1
        0x423fe58e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 120
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SdkInfo$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SdkInfo;

    move-result-object p1

    return-object p1
.end method
