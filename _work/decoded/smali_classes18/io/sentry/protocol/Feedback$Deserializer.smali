.class public final Lio/sentry/protocol/Feedback$Deserializer;
.super Ljava/lang/Object;
.source "Feedback.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/Feedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/Feedback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Feedback;
    .locals 10
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "message":Ljava/lang/String;
    const/4 v1, 0x0

    .line 207
    .local v1, "contactEmail":Ljava/lang/String;
    const/4 v2, 0x0

    .line 208
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 209
    .local v3, "associatedEventId":Lio/sentry/protocol/SentryId;
    const/4 v4, 0x0

    .line 210
    .local v4, "replayId":Lio/sentry/protocol/SentryId;
    const/4 v5, 0x0

    .line 211
    .local v5, "url":Ljava/lang/String;
    const/4 v6, 0x0

    .line 213
    .local v6, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 214
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v7

    sget-object v8, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v7, v8, :cond_2

    .line 215
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "nextName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v8, "message"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    goto :goto_2

    :sswitch_1
    const-string v8, "contact_email"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :sswitch_2
    const-string v8, "name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    goto :goto_2

    :sswitch_3
    const-string v8, "url"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    goto :goto_2

    :sswitch_4
    const-string v8, "replay_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    goto :goto_2

    :sswitch_5
    const-string v8, "associated_event_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    goto :goto_2

    :goto_1
    const/4 v8, -0x1

    :goto_2
    packed-switch v8, :pswitch_data_0

    .line 236
    if-nez v6, :cond_1

    .line 237
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v6, v8

    goto :goto_3

    .line 233
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v5

    .line 234
    goto :goto_4

    .line 230
    :pswitch_1
    new-instance v8, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v8}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-virtual {v8, p1, p2}, Lio/sentry/protocol/SentryId$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryId;

    move-result-object v4

    .line 231
    goto :goto_4

    .line 227
    :pswitch_2
    new-instance v8, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v8}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-virtual {v8, p1, p2}, Lio/sentry/protocol/SentryId$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryId;

    move-result-object v3

    .line 228
    goto :goto_4

    .line 224
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    .line 225
    goto :goto_4

    .line 221
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    .line 222
    goto :goto_4

    .line 218
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    .line 219
    goto :goto_4

    .line 239
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v6, v7}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 242
    .end local v7    # "nextName":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 243
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 245
    if-eqz v0, :cond_3

    .line 252
    new-instance v7, Lio/sentry/protocol/Feedback;

    invoke-direct {v7, v0}, Lio/sentry/protocol/Feedback;-><init>(Ljava/lang/String;)V

    .line 253
    .local v7, "feedback":Lio/sentry/protocol/Feedback;
    invoke-static {v7, v1}, Lio/sentry/protocol/Feedback;->access$002(Lio/sentry/protocol/Feedback;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    invoke-static {v7, v2}, Lio/sentry/protocol/Feedback;->access$102(Lio/sentry/protocol/Feedback;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    invoke-static {v7, v3}, Lio/sentry/protocol/Feedback;->access$202(Lio/sentry/protocol/Feedback;Lio/sentry/protocol/SentryId;)Lio/sentry/protocol/SentryId;

    .line 256
    invoke-static {v7, v4}, Lio/sentry/protocol/Feedback;->access$302(Lio/sentry/protocol/Feedback;Lio/sentry/protocol/SentryId;)Lio/sentry/protocol/SentryId;

    .line 257
    invoke-static {v7, v5}, Lio/sentry/protocol/Feedback;->access$402(Lio/sentry/protocol/Feedback;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    invoke-static {v7, v6}, Lio/sentry/protocol/Feedback;->access$502(Lio/sentry/protocol/Feedback;Ljava/util/Map;)Ljava/util/Map;

    .line 259
    return-object v7

    .line 246
    .end local v7    # "feedback":Lio/sentry/protocol/Feedback;
    :cond_3
    const-string v7, "Missing required field \"message\""

    .line 247
    .local v7, "errorMessage":Ljava/lang/String;
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 248
    .local v8, "exception":Ljava/lang/Exception;
    sget-object v9, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v9, v7, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    throw v8

    :sswitch_data_0
    .sparse-switch
        -0x39809c07 -> :sswitch_5
        -0x1b1b338d -> :sswitch_4
        0x1c56f -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x38723abd -> :sswitch_1
        0x38eb0007 -> :sswitch_0
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

    .line 201
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/Feedback$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Feedback;

    move-result-object p1

    return-object p1
.end method
