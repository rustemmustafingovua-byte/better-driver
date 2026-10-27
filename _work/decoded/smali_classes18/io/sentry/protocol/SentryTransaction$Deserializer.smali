.class public final Lio/sentry/protocol/SentryTransaction$Deserializer;
.super Ljava/lang/Object;
.source "SentryTransaction.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentryTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SentryTransaction;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryTransaction;
    .locals 8
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 249
    new-instance v0, Lio/sentry/protocol/SentryTransaction;

    .line 252
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Lio/sentry/protocol/TransactionInfo;

    sget-object v1, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    .line 256
    invoke-virtual {v1}, Lio/sentry/protocol/TransactionNameSource;->apiName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lio/sentry/protocol/TransactionInfo;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lio/sentry/protocol/SentryTransaction;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/util/Map;Lio/sentry/protocol/TransactionInfo;)V

    move-object v1, v0

    .line 257
    .local v1, "transaction":Lio/sentry/protocol/SentryTransaction;
    const/4 v0, 0x0

    .line 259
    .local v0, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Lio/sentry/SentryBaseEvent$Deserializer;

    invoke-direct {v2}, Lio/sentry/SentryBaseEvent$Deserializer;-><init>()V

    move-object v3, v0

    .line 261
    .end local v0    # "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v2, "baseEventDeserializer":Lio/sentry/SentryBaseEvent$Deserializer;
    .local v3, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v0, v4, :cond_7

    .line 262
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "nextName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v0, "transaction"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_1
    const-string v0, "transaction_info"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_2

    :sswitch_2
    const-string v0, "spans"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_3
    const-string v0, "timestamp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_4
    const-string v0, "type"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_5
    const-string v0, "measurements"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_2

    :sswitch_6
    const-string v0, "start_timestamp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_2

    :goto_1
    const/4 v0, -0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 315
    invoke-virtual {v2, v1, v4, p1, p2}, Lio/sentry/SentryBaseEvent$Deserializer;->deserializeValue(Lio/sentry/SentryBaseEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 316
    if-nez v3, :cond_5

    .line 317
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v3, v0

    goto/16 :goto_3

    .line 311
    :pswitch_0
    new-instance v0, Lio/sentry/protocol/TransactionInfo$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/TransactionInfo$Deserializer;-><init>()V

    .line 312
    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/TransactionInfo$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/TransactionInfo;

    move-result-object v0

    .line 311
    invoke-static {v1, v0}, Lio/sentry/protocol/SentryTransaction;->access$502(Lio/sentry/protocol/SentryTransaction;Lio/sentry/protocol/TransactionInfo;)Lio/sentry/protocol/TransactionInfo;

    .line 313
    goto/16 :goto_4

    .line 304
    :pswitch_1
    new-instance v0, Lio/sentry/protocol/MeasurementValue$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/MeasurementValue$Deserializer;-><init>()V

    .line 305
    invoke-interface {p1, p2, v0}, Lio/sentry/ObjectReader;->nextMapOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/Map;

    move-result-object v0

    .line 306
    .local v0, "deserializedMeasurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    if-eqz v0, :cond_6

    .line 307
    invoke-static {v1}, Lio/sentry/protocol/SentryTransaction;->access$400(Lio/sentry/protocol/SentryTransaction;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_4

    .line 301
    .end local v0    # "deserializedMeasurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextString()Ljava/lang/String;

    .line 302
    goto :goto_4

    .line 294
    :pswitch_3
    new-instance v0, Lio/sentry/protocol/SentrySpan$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SentrySpan$Deserializer;-><init>()V

    .line 295
    invoke-interface {p1, p2, v0}, Lio/sentry/ObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v0

    .line 296
    .local v0, "deserializedSpans":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentrySpan;>;"
    if-eqz v0, :cond_6

    .line 297
    invoke-static {v1}, Lio/sentry/protocol/SentryTransaction;->access$300(Lio/sentry/protocol/SentryTransaction;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 282
    .end local v0    # "deserializedSpans":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentrySpan;>;"
    :pswitch_4
    :try_start_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v0

    .line 283
    .local v0, "deserializedTimestamp":Ljava/lang/Double;
    if-eqz v0, :cond_1

    .line 284
    invoke-static {v1, v0}, Lio/sentry/protocol/SentryTransaction;->access$202(Lio/sentry/protocol/SentryTransaction;Ljava/lang/Double;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v0    # "deserializedTimestamp":Ljava/lang/Double;
    :cond_1
    goto :goto_4

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-interface {p1, p2}, Lio/sentry/ObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v5

    .line 288
    .local v5, "date":Ljava/util/Date;
    if-eqz v5, :cond_2

    .line 289
    invoke-static {v5}, Lio/sentry/DateUtils;->dateToSeconds(Ljava/util/Date;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v1, v6}, Lio/sentry/protocol/SentryTransaction;->access$202(Lio/sentry/protocol/SentryTransaction;Ljava/lang/Double;)Ljava/lang/Double;

    .line 292
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "date":Ljava/util/Date;
    :cond_2
    goto :goto_4

    .line 269
    :pswitch_5
    :try_start_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v0

    .line 270
    .local v0, "deserializedStartTimestamp":Ljava/lang/Double;
    if-eqz v0, :cond_3

    .line 271
    invoke-static {v1, v0}, Lio/sentry/protocol/SentryTransaction;->access$102(Lio/sentry/protocol/SentryTransaction;Ljava/lang/Double;)Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    .end local v0    # "deserializedStartTimestamp":Ljava/lang/Double;
    :cond_3
    goto :goto_4

    .line 273
    :catch_1
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-interface {p1, p2}, Lio/sentry/ObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v5

    .line 275
    .restart local v5    # "date":Ljava/util/Date;
    if-eqz v5, :cond_4

    .line 276
    invoke-static {v5}, Lio/sentry/DateUtils;->dateToSeconds(Ljava/util/Date;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v1, v6}, Lio/sentry/protocol/SentryTransaction;->access$102(Lio/sentry/protocol/SentryTransaction;Ljava/lang/Double;)Ljava/lang/Double;

    .line 279
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "date":Ljava/util/Date;
    :cond_4
    goto :goto_4

    .line 265
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/sentry/protocol/SentryTransaction;->access$002(Lio/sentry/protocol/SentryTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    goto :goto_4

    .line 319
    :cond_5
    :goto_3
    invoke-interface {p1, p2, v3, v4}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 323
    .end local v4    # "nextName":Ljava/lang/String;
    :cond_6
    :goto_4
    goto/16 :goto_0

    .line 324
    :cond_7
    invoke-virtual {v1, v3}, Lio/sentry/protocol/SentryTransaction;->setUnknown(Ljava/util/Map;)V

    .line 325
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 326
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x5b03aa87 -> :sswitch_6
        -0x159763c9 -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x3492916 -> :sswitch_3
        0x688f269 -> :sswitch_2
        0x1e52656f -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 240
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SentryTransaction$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryTransaction;

    move-result-object p1

    return-object p1
.end method
