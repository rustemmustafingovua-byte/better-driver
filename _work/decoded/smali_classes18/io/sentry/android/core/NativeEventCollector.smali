.class public final Lio/sentry/android/core/NativeEventCollector;
.super Ljava/lang/Object;
.source "NativeEventCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;,
        Lio/sentry/android/core/NativeEventCollector$NativeEventData;,
        Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;,
        Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;
    }
.end annotation


# static fields
.field private static final NATIVE_PLATFORM:Ljava/lang/String; = "native"


# instance fields
.field private collected:Z

.field private final nativeEnvelopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/NativeEventCollector;->nativeEnvelopes:Ljava/util/List;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/NativeEventCollector;->collected:Z

    .line 49
    iput-object p1, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 50
    return-void
.end method

.method static synthetic access$000(Ljava/io/InputStream;J)V
    .locals 0
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-static {p0, p1, p2}, Lio/sentry/android/core/NativeEventCollector;->skipBytes(Ljava/io/InputStream;J)V

    return-void
.end method

.method private extractMetadataFromEventPayload(Ljava/io/InputStream;ILjava/io/File;)Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;
    .locals 9
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "payloadLength"    # I
    .param p3, "file"    # Ljava/io/File;

    .line 308
    const/4 v0, 0x0

    .line 310
    .local v0, "result":Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;
    :try_start_0
    new-instance v1, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;

    invoke-direct {v1, p1, p2}, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 311
    .local v1, "boundedStream":Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 312
    .local v2, "reader":Ljava/io/Reader;
    :try_start_2
    new-instance v3, Lio/sentry/JsonObjectReader;

    invoke-direct {v3, v2}, Lio/sentry/JsonObjectReader;-><init>(Ljava/io/Reader;)V

    .line 314
    .local v3, "jsonReader":Lio/sentry/JsonObjectReader;
    const/4 v4, 0x0

    .line 315
    .local v4, "platform":Ljava/lang/String;
    const/4 v5, 0x0

    .line 317
    .local v5, "timestamp":Ljava/util/Date;
    invoke-virtual {v3}, Lio/sentry/JsonObjectReader;->beginObject()V

    .line 318
    :goto_0
    invoke-virtual {v3}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v6

    sget-object v7, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v6, v7, :cond_2

    .line 319
    invoke-virtual {v3}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v6

    .line 320
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v7, "platform"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    goto :goto_2

    :sswitch_1
    const-string v7, "timestamp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_2

    :goto_1
    const/4 v7, -0x1

    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 328
    invoke-virtual {v3}, Lio/sentry/JsonObjectReader;->skipValue()V

    goto :goto_3

    .line 325
    :pswitch_0
    iget-object v7, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v7}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v7

    invoke-virtual {v3, v7}, Lio/sentry/JsonObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v7

    .line 326
    .end local v5    # "timestamp":Ljava/util/Date;
    .local v7, "timestamp":Ljava/util/Date;
    move-object v5, v7

    goto :goto_3

    .line 322
    .end local v7    # "timestamp":Ljava/util/Date;
    .restart local v5    # "timestamp":Ljava/util/Date;
    :pswitch_1
    invoke-virtual {v3}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v7

    .line 323
    .end local v4    # "platform":Ljava/lang/String;
    .local v7, "platform":Ljava/lang/String;
    move-object v4, v7

    .line 331
    .end local v7    # "platform":Ljava/lang/String;
    .restart local v4    # "platform":Ljava/lang/String;
    :goto_3
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 332
    goto :goto_4

    .line 334
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 336
    :cond_2
    :goto_4
    const-string v6, "native"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 337
    new-instance v6, Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-direct {v6, p3, v7, v8}, Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;-><init>(Ljava/io/File;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v6

    .line 339
    .end local v3    # "jsonReader":Lio/sentry/JsonObjectReader;
    .end local v4    # "platform":Ljava/lang/String;
    .end local v5    # "timestamp":Ljava/util/Date;
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v2    # "reader":Ljava/io/Reader;
    :try_start_4
    invoke-virtual {v1}, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 343
    .end local v1    # "boundedStream":Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;
    goto :goto_7

    .line 310
    .restart local v1    # "boundedStream":Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;
    .restart local v2    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;
    .end local v1    # "boundedStream":Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "payloadLength":I
    .end local p3    # "file":Ljava/io/File;
    :goto_5
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2    # "reader":Ljava/io/Reader;
    .restart local v0    # "result":Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;
    .restart local v1    # "boundedStream":Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "payloadLength":I
    .restart local p3    # "file":Ljava/io/File;
    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "payloadLength":I
    .end local p3    # "file":Ljava/io/File;
    :goto_6
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 339
    .end local v1    # "boundedStream":Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;
    .restart local v0    # "result":Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "payloadLength":I
    .restart local p3    # "file":Ljava/io/File;
    :catchall_4
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 341
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 342
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Error parsing event JSON from: %s"

    invoke-interface {v2, v3, v1, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_7
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x3492916 -> :sswitch_1
        0x6fbd6873 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private extractNativeEnvelopeMetadata(Ljava/io/File;)Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .line 241
    const-wide/32 v0, 0xc800000

    .line 242
    .local v0, "maxEnvelopeSize":J
    const-wide/16 v2, 0x0

    .line 244
    .local v2, "bytesProcessed":J
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 246
    .local v5, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-direct {p0, v5}, Lio/sentry/android/core/NativeEventCollector;->skipLine(Ljava/io/InputStream;)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    .local v6, "headerBytes":I
    if-gez v6, :cond_0

    .line 248
    nop

    .line 288
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 248
    return-object v4

    .line 250
    :cond_0
    int-to-long v7, v6

    add-long/2addr v2, v7

    .line 252
    :goto_0
    const-wide/32 v7, 0xc800000

    cmp-long v7, v2, v7

    if-gez v7, :cond_7

    .line 253
    :try_start_3
    invoke-direct {p0, v5}, Lio/sentry/android/core/NativeEventCollector;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "itemHeaderLine":Ljava/lang/String;
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 256
    goto :goto_2

    .line 258
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    add-long/2addr v2, v8

    .line 260
    invoke-direct {p0, v7}, Lio/sentry/android/core/NativeEventCollector;->parseItemHeader(Ljava/lang/String;)Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;

    move-result-object v8

    .line 261
    .local v8, "headerInfo":Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;
    if-nez v8, :cond_2

    .line 262
    goto :goto_2

    .line 265
    :cond_2
    const-string v9, "event"

    iget-object v10, v8, Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 266
    iget v9, v8, Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;->length:I

    .line 267
    invoke-direct {p0, v5, v9, p1}, Lio/sentry/android/core/NativeEventCollector;->extractMetadataFromEventPayload(Ljava/io/InputStream;ILjava/io/File;)Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    .local v9, "metadata":Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;
    if-eqz v9, :cond_3

    .line 269
    nop

    .line 288
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 269
    return-object v9

    .line 271
    .end local v9    # "metadata":Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;
    :cond_3
    goto :goto_1

    .line 272
    :cond_4
    :try_start_5
    iget v9, v8, Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;->length:I

    int-to-long v9, v9

    invoke-static {v5, v9, v10}, Lio/sentry/android/core/NativeEventCollector;->skipBytes(Ljava/io/InputStream;J)V

    .line 274
    :goto_1
    iget v9, v8, Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;->length:I

    int-to-long v9, v9

    add-long/2addr v2, v9

    .line 277
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 278
    .local v9, "next":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    .line 279
    goto :goto_2

    .line 281
    :cond_5
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 282
    const/16 v10, 0xa

    if-eq v9, v10, :cond_6

    .line 285
    goto :goto_2

    .line 287
    .end local v7    # "itemHeaderLine":Ljava/lang/String;
    .end local v8    # "headerInfo":Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;
    .end local v9    # "next":I
    :cond_6
    goto :goto_0

    .line 288
    .end local v6    # "headerBytes":I
    :cond_7
    :goto_2
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 296
    .end local v5    # "stream":Ljava/io/InputStream;
    goto :goto_4

    .line 244
    .restart local v5    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v7

    :try_start_8
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "maxEnvelopeSize":J
    .end local v2    # "bytesProcessed":J
    .end local p1    # "file":Ljava/io/File;
    :goto_3
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 288
    .end local v5    # "stream":Ljava/io/InputStream;
    .restart local v0    # "maxEnvelopeSize":J
    .restart local v2    # "bytesProcessed":J
    .restart local p1    # "file":Ljava/io/File;
    :catchall_2
    move-exception v5

    .line 289
    .local v5, "e":Ljava/lang/Throwable;
    iget-object v6, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 290
    invoke-virtual {v6}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v6

    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 295
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 291
    const-string v9, "Error extracting metadata from envelope file: %s"

    invoke-interface {v6, v7, v5, v9, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_4
    return-object v4
.end method

.method private isRelevantFileName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .line 475
    if-eqz p1, :cond_0

    .line 476
    const-string v0, "session"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    const-string v0, "previous_session"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    const-string v0, "startup_crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 475
    :goto_0
    return v0
.end method

.method private loadFullNativeEventData(Ljava/io/File;)Lio/sentry/android/core/NativeEventCollector$NativeEventData;
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    .line 350
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 351
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_1
    iget-object v2, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getEnvelopeReader()Lio/sentry/IEnvelopeReader;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/sentry/IEnvelopeReader;->read(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 352
    .local v2, "envelope":Lio/sentry/SentryEnvelope;
    if-nez v2, :cond_0

    .line 353
    nop

    .line 371
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 353
    return-object v0

    .line 356
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/SentryEnvelopeItem;

    .line 357
    .local v4, "item":Lio/sentry/SentryEnvelopeItem;
    sget-object v5, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    invoke-virtual {v4}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 358
    goto :goto_0

    .line 361
    :cond_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    .line 363
    invoke-virtual {v4}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 364
    .local v5, "eventReader":Ljava/io/Reader;
    :try_start_4
    iget-object v6, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 365
    invoke-virtual {v6}, Lio/sentry/android/core/SentryAndroidOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v6

    const-class v7, Lio/sentry/SentryEvent;

    invoke-interface {v6, v5, v7}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/sentry/SentryEvent;

    .line 366
    .local v6, "event":Lio/sentry/SentryEvent;
    if-eqz v6, :cond_2

    const-string v7, "native"

    invoke-virtual {v6}, Lio/sentry/SentryEvent;->getPlatform()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 367
    new-instance v3, Lio/sentry/android/core/NativeEventCollector$NativeEventData;

    invoke-direct {v3, v6, p1, v2}, Lio/sentry/android/core/NativeEventCollector$NativeEventData;-><init>(Lio/sentry/SentryEvent;Ljava/io/File;Lio/sentry/SentryEnvelope;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 369
    :try_start_5
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 371
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 367
    return-object v3

    .line 369
    .end local v6    # "event":Lio/sentry/SentryEvent;
    :cond_2
    :try_start_7
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 370
    .end local v4    # "item":Lio/sentry/SentryEnvelopeItem;
    .end local v5    # "eventReader":Ljava/io/Reader;
    goto :goto_0

    .line 361
    .restart local v4    # "item":Lio/sentry/SentryEnvelopeItem;
    .restart local v5    # "eventReader":Ljava/io/Reader;
    :catchall_0
    move-exception v3

    :try_start_8
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    :try_start_9
    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "stream":Ljava/io/InputStream;
    .end local p1    # "file":Ljava/io/File;
    :goto_1
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 371
    .end local v2    # "envelope":Lio/sentry/SentryEnvelope;
    .end local v4    # "item":Lio/sentry/SentryEnvelopeItem;
    .end local v5    # "eventReader":Ljava/io/Reader;
    .restart local v1    # "stream":Ljava/io/InputStream;
    .restart local p1    # "file":Ljava/io/File;
    :cond_3
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 375
    .end local v1    # "stream":Ljava/io/InputStream;
    goto :goto_3

    .line 350
    .restart local v1    # "stream":Ljava/io/InputStream;
    :catchall_2
    move-exception v2

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    :try_start_c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "file":Ljava/io/File;
    :goto_2
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 371
    .end local v1    # "stream":Ljava/io/InputStream;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_4
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 373
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 374
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Error loading envelope file: %s"

    invoke-interface {v2, v3, v1, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_3
    return-object v0
.end method

.method private parseItemHeader(Ljava/lang/String;)Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;
    .locals 7
    .param p1, "headerLine"    # Ljava/lang/String;

    .line 392
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 393
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 394
    .local v1, "reader":Ljava/io/Reader;
    :try_start_1
    new-instance v2, Lio/sentry/JsonObjectReader;

    invoke-direct {v2, v1}, Lio/sentry/JsonObjectReader;-><init>(Ljava/io/Reader;)V

    .line 396
    .local v2, "jsonReader":Lio/sentry/JsonObjectReader;
    const/4 v3, 0x0

    .line 397
    .local v3, "type":Ljava/lang/String;
    const/4 v4, -0x1

    .line 399
    .local v4, "length":I
    invoke-virtual {v2}, Lio/sentry/JsonObjectReader;->beginObject()V

    .line 400
    :goto_0
    invoke-virtual {v2}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v5, v6, :cond_2

    .line 401
    invoke-virtual {v2}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v0

    goto :goto_2

    :sswitch_1
    const-string v6, "length"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :goto_1
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 410
    invoke-virtual {v2}, Lio/sentry/JsonObjectReader;->skipValue()V

    goto :goto_3

    .line 407
    :pswitch_0
    invoke-virtual {v2}, Lio/sentry/JsonObjectReader;->nextInt()I

    move-result v6

    .line 408
    .end local v4    # "length":I
    .local v6, "length":I
    move v4, v6

    goto :goto_3

    .line 404
    .end local v6    # "length":I
    .restart local v4    # "length":I
    :pswitch_1
    invoke-virtual {v2}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v6

    .line 405
    .end local v3    # "type":Ljava/lang/String;
    .local v6, "type":Ljava/lang/String;
    move-object v3, v6

    .line 414
    .end local v6    # "type":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    :goto_3
    if-eqz v3, :cond_1

    if-ltz v4, :cond_1

    .line 415
    goto :goto_4

    .line 417
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 419
    :cond_2
    :goto_4
    if-ltz v4, :cond_3

    .line 420
    new-instance v5, Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;

    invoke-direct {v5, v3, v4}, Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 420
    return-object v5

    .line 422
    .end local v2    # "jsonReader":Lio/sentry/JsonObjectReader;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "length":I
    :cond_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 424
    .end local v1    # "reader":Ljava/io/Reader;
    goto :goto_6

    .line 392
    .restart local v1    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "headerLine":Ljava/lang/String;
    :goto_5
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 422
    .end local v1    # "reader":Ljava/io/Reader;
    .restart local p1    # "headerLine":Ljava/lang/String;
    :catchall_2
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Error parsing item header"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_6
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x41f1c51a -> :sswitch_1
        0x368f3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .local v0, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "b":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 433
    const/16 v1, 0xa

    if-ne v2, v1, :cond_0

    .line 434
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 436
    :cond_0
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 438
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private static skipBytes(Ljava/io/InputStream;J)V
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    move-wide v0, p1

    .line 460
    .local v0, "remaining":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 461
    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 462
    .local v4, "skipped":J
    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    .line 464
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 467
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_1

    .line 465
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "Unexpected end of stream while skipping bytes"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 469
    :cond_1
    sub-long/2addr v0, v4

    .line 471
    .end local v4    # "skipped":J
    :goto_1
    goto :goto_0

    .line 472
    :cond_2
    return-void
.end method

.method private skipLine(Ljava/io/InputStream;)I
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    const/4 v0, 0x0

    .line 447
    .local v0, "count":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "b":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 448
    add-int/lit8 v0, v0, 0x1

    .line 449
    const/16 v1, 0xa

    if-ne v2, v1, :cond_0

    .line 450
    return v0

    .line 453
    :cond_1
    if-lez v0, :cond_2

    move v3, v0

    :cond_2
    return v3
.end method


# virtual methods
.method public collect()V
    .locals 12

    .line 105
    iget-boolean v0, p0, Lio/sentry/android/core/NativeEventCollector;->collected:Z

    if-eqz v0, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/android/core/NativeEventCollector;->collected:Z

    .line 110
    iget-object v0, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "outboxPath":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 112
    iget-object v2, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 113
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 114
    const-string v4, "Outbox path is null, skipping native event collection."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void

    .line 118
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "outboxDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 120
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_2

    .line 121
    iget-object v1, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 122
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    .line 123
    const-string v6, "Outbox path is not a directory or an I/O error occurred: %s"

    invoke-interface {v1, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    return-void

    .line 129
    :cond_2
    array-length v4, v3

    if-nez v4, :cond_3

    .line 130
    iget-object v4, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v6, "No envelope files found in outbox."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    return-void

    .line 134
    :cond_3
    iget-object v4, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 135
    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    array-length v6, v3

    .line 136
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Scanning %d files in outbox for native events."

    invoke-interface {v4, v5, v7, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_6

    aget-object v5, v3, v1

    .line 139
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lio/sentry/android/core/NativeEventCollector;->isRelevantFileName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 140
    goto :goto_1

    .line 143
    :cond_4
    invoke-direct {p0, v5}, Lio/sentry/android/core/NativeEventCollector;->extractNativeEnvelopeMetadata(Ljava/io/File;)Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;

    move-result-object v6

    .line 144
    .local v6, "metadata":Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;
    if-eqz v6, :cond_5

    .line 145
    iget-object v7, p0, Lio/sentry/android/core/NativeEventCollector;->nativeEnvelopes:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v7, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 147
    invoke-virtual {v7}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v7

    sget-object v8, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 151
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 152
    invoke-virtual {v6}, Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;->getTimestampMs()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 148
    const-string v10, "Found native event in outbox: %s (timestamp: %d)"

    invoke-interface {v7, v8, v10, v9}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "metadata":Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_6
    iget-object v1, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 157
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v5, p0, Lio/sentry/android/core/NativeEventCollector;->nativeEnvelopes:Ljava/util/List;

    .line 158
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Collected %d native events from outbox."

    invoke-interface {v1, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public deleteNativeEventFile(Lio/sentry/android/core/NativeEventCollector$NativeEventData;)Z
    .locals 7
    .param p1, "nativeEventData"    # Lio/sentry/android/core/NativeEventCollector$NativeEventData;

    .line 210
    invoke-virtual {p1}, Lio/sentry/android/core/NativeEventCollector$NativeEventData;->getFile()Ljava/io/File;

    move-result-object v0

    .line 212
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 214
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Deleted native event file from outbox: %s"

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    const/4 v1, 0x1

    return v1

    .line 218
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 219
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Failed to delete native event file: %s"

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 220
    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    return v1

    .line 226
    :catchall_0
    move-exception v2

    .line 227
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 228
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 229
    const-string v6, "Error deleting native event file: %s"

    invoke-interface {v3, v4, v2, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    return v1
.end method

.method public findAndRemoveMatchingNativeEvent(J)Lio/sentry/android/core/NativeEventCollector$NativeEventData;
    .locals 9
    .param p1, "tombstoneTimestampMs"    # J

    .line 174
    invoke-virtual {p0}, Lio/sentry/android/core/NativeEventCollector;->collect()V

    .line 176
    iget-object v0, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getTombstoneMergeTimeThresholdMillis()J

    move-result-wide v0

    .line 177
    .local v0, "thresholdMs":J
    iget-object v2, p0, Lio/sentry/android/core/NativeEventCollector;->nativeEnvelopes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;

    .line 178
    .local v3, "metadata":Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;
    invoke-virtual {v3}, Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;->getTimestampMs()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 179
    .local v4, "timeDiff":J
    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    .line 180
    iget-object v2, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 181
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 185
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 186
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 182
    const-string v8, "Matched native event by timestamp (diff: %d ms, threshold: %d ms)"

    invoke-interface {v2, v6, v8, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v2, p0, Lio/sentry/android/core/NativeEventCollector;->nativeEnvelopes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v3}, Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/sentry/android/core/NativeEventCollector;->loadFullNativeEventData(Ljava/io/File;)Lio/sentry/android/core/NativeEventCollector$NativeEventData;

    move-result-object v2

    return-object v2

    .line 191
    .end local v3    # "metadata":Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;
    .end local v4    # "timeDiff":J
    :cond_0
    goto :goto_0

    .line 193
    :cond_1
    iget-object v2, p0, Lio/sentry/android/core/NativeEventCollector;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 194
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 198
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 199
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 195
    const-string v5, "No native event matched the tombstone timestamp %d within %d ms."

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    const/4 v2, 0x0

    return-object v2
.end method
