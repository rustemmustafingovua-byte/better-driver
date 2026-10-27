.class public final Lio/sentry/protocol/SdkVersion$Deserializer;
.super Ljava/lang/Object;
.source "SdkVersion.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SdkVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SdkVersion;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SdkVersion;
    .locals 8
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 205
    .local v1, "version":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryPackage;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v3, "integrations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 209
    .local v4, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 210
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v5, v6, :cond_3

    .line 211
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "nextName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v6, "integrations"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_1
    const-string v6, "packages"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_2
    const-string v6, "version"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :sswitch_3
    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_2

    :goto_1
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 233
    if-nez v4, :cond_1

    .line 234
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v4, v6

    goto :goto_3

    .line 227
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 228
    .local v6, "deserializedIntegrations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    .line 229
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 220
    .end local v6    # "deserializedIntegrations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    new-instance v6, Lio/sentry/protocol/SentryPackage$Deserializer;

    invoke-direct {v6}, Lio/sentry/protocol/SentryPackage$Deserializer;-><init>()V

    .line 221
    invoke-interface {p1, p2, v6}, Lio/sentry/ObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v6

    .line 222
    .local v6, "deserializedPackages":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryPackage;>;"
    if-eqz v6, :cond_2

    .line 223
    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 217
    .end local v6    # "deserializedPackages":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryPackage;>;"
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 218
    goto :goto_4

    .line 214
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 215
    goto :goto_4

    .line 236
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v4, v5}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 239
    .end local v5    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto :goto_0

    .line 240
    :cond_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 242
    if-eqz v0, :cond_5

    .line 248
    if-eqz v1, :cond_4

    .line 255
    new-instance v5, Lio/sentry/protocol/SdkVersion;

    invoke-direct {v5, v0, v1}, Lio/sentry/protocol/SdkVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v5, "sdkVersion":Lio/sentry/protocol/SdkVersion;
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v6, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v5, v6}, Lio/sentry/protocol/SdkVersion;->access$002(Lio/sentry/protocol/SdkVersion;Ljava/util/Set;)Ljava/util/Set;

    .line 257
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v6, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v5, v6}, Lio/sentry/protocol/SdkVersion;->access$102(Lio/sentry/protocol/SdkVersion;Ljava/util/Set;)Ljava/util/Set;

    .line 259
    invoke-virtual {v5, v4}, Lio/sentry/protocol/SdkVersion;->setUnknown(Ljava/util/Map;)V

    .line 260
    return-object v5

    .line 249
    .end local v5    # "sdkVersion":Lio/sentry/protocol/SdkVersion;
    :cond_4
    const-string v5, "Missing required field \"version\""

    .line 250
    .local v5, "message":Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 251
    .local v6, "exception":Ljava/lang/Exception;
    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v7, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    throw v6

    .line 243
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "exception":Ljava/lang/Exception;
    :cond_5
    const-string v5, "Missing required field \"name\""

    .line 244
    .restart local v5    # "message":Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 245
    .restart local v6    # "exception":Ljava/lang/Exception;
    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v7, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    throw v6

    :sswitch_data_0
    .sparse-switch
        0x337a8b -> :sswitch_3
        0x14f51cd8 -> :sswitch_2
        0x2cc154ed -> :sswitch_1
        0x58a2451f -> :sswitch_0
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

    .line 197
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SdkVersion$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SdkVersion;

    move-result-object p1

    return-object p1
.end method
