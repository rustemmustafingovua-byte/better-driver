.class public final Lio/sentry/SentryEnvelopeItemHeader$Deserializer;
.super Ljava/lang/Object;
.source "SentryEnvelopeItemHeader.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryEnvelopeItemHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SentryEnvelopeItemHeader;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "logger"    # Lio/sentry/ILogger;

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing required field \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 304
    .local v1, "exception":Ljava/lang/Exception;
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    return-object v1
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryEnvelopeItemHeader;
    .locals 21
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0}, Lio/sentry/ObjectReader;->beginObject()V

    .line 244
    const/4 v2, 0x0

    .line 245
    .local v2, "contentType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 246
    .local v3, "fileName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 247
    .local v4, "type":Lio/sentry/SentryItemType;
    const/4 v5, 0x0

    .line 248
    .local v5, "length":I
    const/4 v6, 0x0

    .line 249
    .local v6, "attachmentType":Ljava/lang/String;
    const/4 v7, 0x0

    .line 250
    .local v7, "platform":Ljava/lang/String;
    const/4 v8, 0x0

    .line 251
    .local v8, "itemCount":Ljava/lang/Integer;
    const/4 v9, 0x0

    .line 252
    .local v9, "metaLength":Ljava/lang/Integer;
    const/4 v10, 0x0

    move-object v14, v2

    move-object v15, v3

    move-object v12, v4

    move v13, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    .line 254
    .end local v2    # "contentType":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "type":Lio/sentry/SentryItemType;
    .end local v5    # "length":I
    .end local v6    # "attachmentType":Ljava/lang/String;
    .end local v7    # "platform":Ljava/lang/String;
    .end local v8    # "itemCount":Ljava/lang/Integer;
    .end local v9    # "metaLength":Ljava/lang/Integer;
    .local v10, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v12, "type":Lio/sentry/SentryItemType;
    .local v13, "length":I
    .local v14, "contentType":Ljava/lang/String;
    .local v15, "fileName":Ljava/lang/String;
    .local v16, "attachmentType":Ljava/lang/String;
    .local v17, "platform":Ljava/lang/String;
    .local v18, "itemCount":Ljava/lang/Integer;
    .local v19, "metaLength":Ljava/lang/Integer;
    :goto_0
    invoke-interface {v0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v4, "type"

    if-ne v2, v3, :cond_2

    .line 255
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, "platform"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_1
    const-string v3, "content_type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_3
    const-string v3, "attachment_type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_4
    const-string v3, "filename"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_5
    const-string v3, "length"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_6
    const-string v3, "meta_length"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_7
    const-string v3, "item_count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 282
    if-nez v10, :cond_1

    .line 283
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v10, v3

    goto :goto_3

    .line 279
    :pswitch_0
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v3

    .line 280
    .end local v19    # "metaLength":Ljava/lang/Integer;
    .local v3, "metaLength":Ljava/lang/Integer;
    move-object/from16 v19, v3

    goto :goto_4

    .line 276
    .end local v3    # "metaLength":Ljava/lang/Integer;
    .restart local v19    # "metaLength":Ljava/lang/Integer;
    :pswitch_1
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v3

    .line 277
    .end local v18    # "itemCount":Ljava/lang/Integer;
    .local v3, "itemCount":Ljava/lang/Integer;
    move-object/from16 v18, v3

    goto :goto_4

    .line 273
    .end local v3    # "itemCount":Ljava/lang/Integer;
    .restart local v18    # "itemCount":Ljava/lang/Integer;
    :pswitch_2
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 274
    .end local v17    # "platform":Ljava/lang/String;
    .local v3, "platform":Ljava/lang/String;
    move-object/from16 v17, v3

    goto :goto_4

    .line 270
    .end local v3    # "platform":Ljava/lang/String;
    .restart local v17    # "platform":Ljava/lang/String;
    :pswitch_3
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 271
    .end local v16    # "attachmentType":Ljava/lang/String;
    .local v3, "attachmentType":Ljava/lang/String;
    move-object/from16 v16, v3

    goto :goto_4

    .line 267
    .end local v3    # "attachmentType":Ljava/lang/String;
    .restart local v16    # "attachmentType":Ljava/lang/String;
    :pswitch_4
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextInt()I

    move-result v3

    .line 268
    .end local v13    # "length":I
    .local v3, "length":I
    move v13, v3

    goto :goto_4

    .line 264
    .end local v3    # "length":I
    .restart local v13    # "length":I
    :pswitch_5
    new-instance v3, Lio/sentry/SentryItemType$Deserializer;

    invoke-direct {v3}, Lio/sentry/SentryItemType$Deserializer;-><init>()V

    invoke-interface {v0, v1, v3}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/SentryItemType;

    .line 265
    .end local v12    # "type":Lio/sentry/SentryItemType;
    .local v3, "type":Lio/sentry/SentryItemType;
    move-object v12, v3

    goto :goto_4

    .line 261
    .end local v3    # "type":Lio/sentry/SentryItemType;
    .restart local v12    # "type":Lio/sentry/SentryItemType;
    :pswitch_6
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 262
    .end local v15    # "fileName":Ljava/lang/String;
    .local v3, "fileName":Ljava/lang/String;
    move-object v15, v3

    goto :goto_4

    .line 258
    .end local v3    # "fileName":Ljava/lang/String;
    .restart local v15    # "fileName":Ljava/lang/String;
    :pswitch_7
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 259
    .end local v14    # "contentType":Ljava/lang/String;
    .local v3, "contentType":Ljava/lang/String;
    move-object v14, v3

    goto :goto_4

    .line 285
    .end local v3    # "contentType":Ljava/lang/String;
    .restart local v14    # "contentType":Ljava/lang/String;
    :cond_1
    :goto_3
    invoke-interface {v0, v1, v10, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 288
    .end local v2    # "nextName":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 289
    :cond_2
    if-eqz v12, :cond_3

    .line 292
    new-instance v11, Lio/sentry/SentryEnvelopeItemHeader;

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v20}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lio/sentry/SentryEnvelopeItemHeader$1;)V

    .line 295
    .local v11, "sentryEnvelopeItemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    invoke-virtual {v11, v10}, Lio/sentry/SentryEnvelopeItemHeader;->setUnknown(Ljava/util/Map;)V

    .line 296
    invoke-interface {v0}, Lio/sentry/ObjectReader;->endObject()V

    .line 297
    return-object v11

    .line 290
    .end local v11    # "sentryEnvelopeItemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    :cond_3
    move-object/from16 v2, p0

    invoke-direct {v2, v4, v1}, Lio/sentry/SentryEnvelopeItemHeader$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v3

    throw v3

    :sswitch_data_0
    .sparse-switch
        -0x753cab1d -> :sswitch_7
        -0x4ed3bda0 -> :sswitch_6
        -0x41f1c51a -> :sswitch_5
        -0x2bcbadf9 -> :sswitch_4
        -0x281cd32a -> :sswitch_3
        0x368f3a -> :sswitch_2
        0x3194f740 -> :sswitch_1
        0x6fbd6873 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 238
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryEnvelopeItemHeader$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object p1

    return-object p1
.end method
