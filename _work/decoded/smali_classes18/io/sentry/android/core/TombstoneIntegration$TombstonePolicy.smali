.class public Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;
.super Ljava/lang/Object;
.source "TombstoneIntegration.java"

# interfaces
.implements Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/TombstoneIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TombstonePolicy"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final nativeEventCollector:Lio/sentry/android/core/NativeEventCollector;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p2, "context"    # Landroid/content/Context;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 125
    new-instance v0, Lio/sentry/android/core/NativeEventCollector;

    invoke-direct {v0, p1}, Lio/sentry/android/core/NativeEventCollector;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    iput-object v0, p0, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->nativeEventCollector:Lio/sentry/android/core/NativeEventCollector;

    .line 126
    iput-object p2, p0, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->context:Landroid/content/Context;

    .line 127
    return-void
.end method

.method private addNativeAttachmentsToTombstoneHint(Lio/sentry/android/core/NativeEventCollector$NativeEventData;Lio/sentry/Hint;)V
    .locals 10
    .param p1, "matchingNativeEvent"    # Lio/sentry/android/core/NativeEventCollector$NativeEventData;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 269
    invoke-virtual {p1}, Lio/sentry/android/core/NativeEventCollector$NativeEventData;->getEnvelope()Lio/sentry/SentryEnvelope;

    move-result-object v1

    .line 270
    .local v1, "nativeEnvelope":Lio/sentry/SentryEnvelope;
    invoke-virtual {v1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/sentry/SentryEnvelopeItem;

    .line 272
    .local v3, "item":Lio/sentry/SentryEnvelopeItem;
    :try_start_0
    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryEnvelopeItemHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 273
    .local v6, "attachmentFileName":Ljava/lang/String;
    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    if-ne v0, v4, :cond_1

    if-nez v6, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    new-instance v4, Lio/sentry/Attachment;

    .line 279
    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v5

    .line 281
    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryEnvelopeItemHeader;->getContentType()Ljava/lang/String;

    move-result-object v7

    .line 282
    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryEnvelopeItemHeader;->getAttachmentType()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lio/sentry/Attachment;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 277
    invoke-virtual {p2, v4}, Lio/sentry/Hint;->addAttachment(Lio/sentry/Attachment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    .end local v6    # "attachmentFileName":Ljava/lang/String;
    goto :goto_2

    .line 275
    .restart local v6    # "attachmentFileName":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_0

    .line 284
    .end local v6    # "attachmentFileName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 286
    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 287
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Failed to process envelope item: %s"

    invoke-interface {v4, v5, v7, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "item":Lio/sentry/SentryEnvelopeItem;
    :goto_2
    goto :goto_0

    .line 290
    :cond_2
    return-void
.end method

.method private mergeNativeCrashes(Lio/sentry/SentryEvent;Lio/sentry/SentryEvent;)V
    .locals 6
    .param p1, "nativeEvent"    # Lio/sentry/SentryEvent;
    .param p2, "tombstoneEvent"    # Lio/sentry/SentryEvent;

    .line 301
    invoke-virtual {p2}, Lio/sentry/SentryEvent;->getExceptions()Ljava/util/List;

    move-result-object v0

    .line 302
    .local v0, "tombstoneExceptions":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryException;>;"
    invoke-virtual {p2}, Lio/sentry/SentryEvent;->getDebugMeta()Lio/sentry/protocol/DebugMeta;

    move-result-object v1

    .line 303
    .local v1, "tombstoneDebugMeta":Lio/sentry/protocol/DebugMeta;
    invoke-virtual {p2}, Lio/sentry/SentryEvent;->getThreads()Ljava/util/List;

    move-result-object v2

    .line 304
    .local v2, "tombstoneThreads":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryThread;>;"
    if-eqz v0, :cond_3

    .line 305
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 309
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/SentryException;

    .line 310
    .local v3, "exception":Lio/sentry/protocol/SentryException;
    invoke-virtual {v3}, Lio/sentry/protocol/SentryException;->getMechanism()Lio/sentry/protocol/Mechanism;

    move-result-object v4

    .line 311
    .local v4, "mechanism":Lio/sentry/protocol/Mechanism;
    if-eqz v4, :cond_0

    .line 312
    sget-object v5, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->TOMBSTONE_MERGED:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    invoke-virtual {v5}, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    .line 316
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getMessage()Lio/sentry/protocol/Message;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 317
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getMessage()Lio/sentry/protocol/Message;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/protocol/Message;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 318
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getMessage()Lio/sentry/protocol/Message;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/protocol/Message;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 319
    :cond_1
    invoke-virtual {p2}, Lio/sentry/SentryEvent;->getMessage()Lio/sentry/protocol/Message;

    move-result-object v5

    invoke-virtual {p1, v5}, Lio/sentry/SentryEvent;->setMessage(Lio/sentry/protocol/Message;)V

    .line 322
    :cond_2
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setExceptions(Ljava/util/List;)V

    .line 323
    invoke-virtual {p1, v1}, Lio/sentry/SentryEvent;->setDebugMeta(Lio/sentry/protocol/DebugMeta;)V

    .line 324
    invoke-virtual {p1, v2}, Lio/sentry/SentryEvent;->setThreads(Ljava/util/List;)V

    .line 326
    .end local v3    # "exception":Lio/sentry/protocol/SentryException;
    .end local v4    # "mechanism":Lio/sentry/protocol/Mechanism;
    :cond_3
    return-void
.end method

.method private mergeWithMatchingNativeEvents(JLio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 6
    .param p1, "tombstoneTimestamp"    # J
    .param p3, "tombstoneEvent"    # Lio/sentry/SentryEvent;
    .param p4, "hint"    # Lio/sentry/Hint;

    .line 240
    iget-object v0, p0, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->nativeEventCollector:Lio/sentry/android/core/NativeEventCollector;

    .line 241
    invoke-virtual {v0, p1, p2}, Lio/sentry/android/core/NativeEventCollector;->findAndRemoveMatchingNativeEvent(J)Lio/sentry/android/core/NativeEventCollector$NativeEventData;

    move-result-object v0

    .line 243
    .local v0, "matchingNativeEvent":Lio/sentry/android/core/NativeEventCollector$NativeEventData;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 245
    return-object v1

    .line 248
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 249
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 253
    invoke-virtual {v0}, Lio/sentry/android/core/NativeEventCollector$NativeEventData;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 250
    const-string v5, "Found matching native event for tombstone, removing from outbox: %s"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iget-object v2, p0, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->nativeEventCollector:Lio/sentry/android/core/NativeEventCollector;

    invoke-virtual {v2, v0}, Lio/sentry/android/core/NativeEventCollector;->deleteNativeEventFile(Lio/sentry/android/core/NativeEventCollector$NativeEventData;)Z

    move-result v2

    .line 258
    .local v2, "deletionSuccess":Z
    if-eqz v2, :cond_1

    .line 259
    invoke-virtual {v0}, Lio/sentry/android/core/NativeEventCollector$NativeEventData;->getEvent()Lio/sentry/SentryEvent;

    move-result-object v1

    .line 260
    .local v1, "nativeEvent":Lio/sentry/SentryEvent;
    invoke-direct {p0, v1, p3}, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->mergeNativeCrashes(Lio/sentry/SentryEvent;Lio/sentry/SentryEvent;)V

    .line 261
    invoke-direct {p0, v0, p4}, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->addNativeAttachmentsToTombstoneHint(Lio/sentry/android/core/NativeEventCollector$NativeEventData;Lio/sentry/Hint;)V

    .line 262
    return-object v1

    .line 264
    .end local v1    # "nativeEvent":Lio/sentry/SentryEvent;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public buildReport(Landroid/app/ApplicationExitInfo;Z)Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;
    .locals 16
    .param p1, "exitInfo"    # Landroid/app/ApplicationExitInfo;
    .param p2, "enrich"    # Z

    .line 160
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 162
    .local v2, "rawTombstone":[B
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachRawTombstone()Z

    move-result v0

    move v4, v0

    .line 163
    .local v4, "attachRaw":Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v5, v0

    .line 164
    .local v5, "tombstoneInputStream":Ljava/io/InputStream;
    if-nez v5, :cond_1

    .line 165
    :try_start_1
    iget-object v0, v1, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 166
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v6, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v7, "No tombstone InputStream available for ApplicationExitInfo from %s"

    sget-object v8, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v9

    .line 170
    invoke-virtual {v8, v9}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 167
    invoke-interface {v0, v6, v7, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    nop

    .line 189
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 172
    :cond_0
    return-object v3

    .line 163
    :catchall_0
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    goto/16 :goto_3

    .line 175
    :cond_1
    if-eqz v4, :cond_2

    .line 176
    :try_start_3
    invoke-static {v5}, Lio/sentry/android/core/internal/util/NativeEventUtils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    move-object v2, v0

    .line 180
    :cond_2
    if-eqz v4, :cond_3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    :cond_3
    move-object v0, v5

    :goto_0
    move-object v6, v0

    .line 181
    .local v6, "parserInput":Ljava/io/InputStream;
    new-instance v0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;

    iget-object v7, v1, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 184
    invoke-virtual {v7}, Lio/sentry/android/core/SentryAndroidOptions;->getInAppIncludes()Ljava/util/List;

    move-result-object v7

    iget-object v8, v1, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 185
    invoke-virtual {v8}, Lio/sentry/android/core/SentryAndroidOptions;->getInAppExcludes()Ljava/util/List;

    move-result-object v8

    iget-object v9, v1, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->context:Landroid/content/Context;

    .line 186
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, v6, v7, v8, v9}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;-><init>(Ljava/io/InputStream;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v7, v0

    .line 187
    .local v7, "parser":Lio/sentry/android/core/internal/tombstone/TombstoneParser;
    :try_start_4
    invoke-virtual {v7}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->parse()Lio/sentry/SentryEvent;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v8, v0

    .line 188
    .local v8, "event":Lio/sentry/SentryEvent;
    :try_start_5
    invoke-virtual {v7}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 189
    .end local v6    # "parserInput":Ljava/io/InputStream;
    .end local v7    # "parser":Lio/sentry/android/core/internal/tombstone/TombstoneParser;
    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 199
    .end local v4    # "attachRaw":Z
    .end local v5    # "tombstoneInputStream":Ljava/io/InputStream;
    :cond_4
    nop

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v13

    .line 202
    .local v13, "tombstoneTimestamp":J
    invoke-static {v13, v14}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v8, v0}, Lio/sentry/SentryEvent;->setTimestamp(Ljava/util/Date;)V

    .line 204
    new-instance v9, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;

    iget-object v0, v1, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 206
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getFlushTimeoutMillis()J

    move-result-wide v10

    iget-object v0, v1, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v12

    move/from16 v15, p2

    invoke-direct/range {v9 .. v15}, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;-><init>(JLio/sentry/ILogger;JZ)V

    .line 207
    .local v9, "tombstoneHint":Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;
    invoke-static {v9}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object v3

    .line 209
    .local v3, "hint":Lio/sentry/Hint;
    if-eqz v2, :cond_5

    .line 210
    invoke-static {v2}, Lio/sentry/Attachment;->fromTombstone([B)Lio/sentry/Attachment;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/sentry/Hint;->setTombstone(Lio/sentry/Attachment;)V

    .line 214
    :cond_5
    nop

    .line 215
    :try_start_7
    invoke-direct {v1, v13, v14, v8, v3}, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->mergeWithMatchingNativeEvents(JLio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 216
    .local v0, "mergedEvent":Lio/sentry/SentryEvent;
    if-eqz v0, :cond_6

    .line 217
    move-object v8, v0

    .line 226
    .end local v0    # "mergedEvent":Lio/sentry/SentryEvent;
    :cond_6
    goto :goto_1

    .line 219
    :catchall_1
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v4, v1, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 221
    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 225
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 222
    const-string v7, "Failed to merge native event with tombstone, continuing without merge: %s"

    invoke-interface {v4, v5, v7, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    new-instance v0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;

    invoke-direct {v0, v8, v3, v9}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;-><init>(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/hints/BlockingFlushHint;)V

    return-object v0

    .line 181
    .end local v3    # "hint":Lio/sentry/Hint;
    .end local v8    # "event":Lio/sentry/SentryEvent;
    .end local v9    # "tombstoneHint":Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;
    .end local v13    # "tombstoneTimestamp":J
    .restart local v4    # "attachRaw":Z
    .restart local v5    # "tombstoneInputStream":Ljava/io/InputStream;
    .restart local v6    # "parserInput":Ljava/io/InputStream;
    .restart local v7    # "parser":Lio/sentry/android/core/internal/tombstone/TombstoneParser;
    :catchall_2
    move-exception v0

    move-object v8, v0

    :try_start_8
    invoke-virtual {v7}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "rawTombstone":[B
    .end local v4    # "attachRaw":Z
    .end local v5    # "tombstoneInputStream":Ljava/io/InputStream;
    .end local p1    # "exitInfo":Landroid/app/ApplicationExitInfo;
    .end local p2    # "enrich":Z
    :goto_2
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 163
    .end local v7    # "parser":Lio/sentry/android/core/internal/tombstone/TombstoneParser;
    .restart local v4    # "attachRaw":Z
    .restart local v5    # "tombstoneInputStream":Ljava/io/InputStream;
    .local v6, "rawTombstone":[B
    .restart local p1    # "exitInfo":Landroid/app/ApplicationExitInfo;
    .restart local p2    # "enrich":Z
    :goto_3
    if-eqz v5, :cond_7

    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_b
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "rawTombstone":[B
    .end local p1    # "exitInfo":Landroid/app/ApplicationExitInfo;
    .end local p2    # "enrich":Z
    :cond_7
    :goto_4
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 190
    .end local v4    # "attachRaw":Z
    .end local v5    # "tombstoneInputStream":Ljava/io/InputStream;
    .restart local v6    # "rawTombstone":[B
    .restart local p1    # "exitInfo":Landroid/app/ApplicationExitInfo;
    .restart local p2    # "enrich":Z
    :catchall_5
    move-exception v0

    move-object v2, v6

    goto :goto_5

    .end local v6    # "rawTombstone":[B
    .restart local v2    # "rawTombstone":[B
    :catchall_6
    move-exception v0

    .line 191
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_5
    iget-object v4, v1, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 192
    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    sget-object v6, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 193
    const-string v7, "Failed to parse tombstone from %s: %s"

    invoke-interface {v4, v5, v7, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    return-object v3
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 131
    const-string v0, "Tombstone"

    return-object v0
.end method

.method public getLastReportedTimestamp()Ljava/lang/Long;
    .locals 1

    .line 147
    iget-object v0, p0, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->lastReportedTombstone(Lio/sentry/SentryOptions;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public markReported(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .line 152
    iget-object v0, p0, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, p1, p2}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->markTombstoneReported(Lio/sentry/SentryOptions;J)V

    .line 153
    return-void
.end method

.method public matches(Landroid/app/ApplicationExitInfo;)Z
    .locals 2
    .param p1, "exitInfo"    # Landroid/app/ApplicationExitInfo;

    .line 137
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldReportHistorical()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isReportHistoricalTombstones()Z

    move-result v0

    return v0
.end method
