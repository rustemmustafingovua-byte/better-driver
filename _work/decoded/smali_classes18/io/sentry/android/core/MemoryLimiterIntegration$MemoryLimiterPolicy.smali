.class final Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;
.super Ljava/lang/Object;
.source "MemoryLimiterIntegration.java"

# interfaces
.implements Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/MemoryLimiterIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemoryLimiterPolicy"
.end annotation


# instance fields
.field private final options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method private constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 183
    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/MemoryLimiterIntegration$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p2, "x1"    # Lio/sentry/android/core/MemoryLimiterIntegration$1;

    .line 177
    invoke-direct {p0, p1}, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method private buildException(Landroid/app/ApplicationExitInfo;ZILjava/lang/String;Ljava/lang/String;)Lio/sentry/protocol/SentryException;
    .locals 3
    .param p1, "exitInfo"    # Landroid/app/ApplicationExitInfo;
    .param p2, "shouldEnrich"    # Z
    .param p3, "processImportance"    # I
    .param p4, "memoryLimit"    # Ljava/lang/String;
    .param p5, "messageText"    # Ljava/lang/String;

    .line 275
    new-instance v0, Lio/sentry/protocol/Mechanism;

    invoke-direct {v0}, Lio/sentry/protocol/Mechanism;-><init>()V

    .line 276
    .local v0, "mechanism":Lio/sentry/protocol/Mechanism;
    if-eqz p2, :cond_0

    const-string v1, "AppExitInfo"

    goto :goto_0

    :cond_0
    const-string v1, "HistoricalAppExitInfo"

    :goto_0
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setDescription(Ljava/lang/String;)V

    .line 278
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setHandled(Ljava/lang/Boolean;)V

    .line 279
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setSynthetic(Ljava/lang/Boolean;)V

    .line 280
    invoke-direct {p0, p3, p4}, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;->buildMechanismData(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setData(Ljava/util/Map;)V

    .line 282
    new-instance v1, Lio/sentry/protocol/SentryException;

    invoke-direct {v1}, Lio/sentry/protocol/SentryException;-><init>()V

    .line 283
    .local v1, "sentryException":Lio/sentry/protocol/SentryException;
    const-string v2, "MemoryLimitExceeded"

    invoke-virtual {v1, v2}, Lio/sentry/protocol/SentryException;->setType(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v1, p5}, Lio/sentry/protocol/SentryException;->setValue(Ljava/lang/String;)V

    .line 285
    const-string v2, "io.sentry.android.core"

    invoke-virtual {v1, v2}, Lio/sentry/protocol/SentryException;->setModule(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v1, v0}, Lio/sentry/protocol/SentryException;->setMechanism(Lio/sentry/protocol/Mechanism;)V

    .line 287
    return-object v1
.end method

.method private buildMechanismData(ILjava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "processImportance"    # I
    .param p2, "memoryLimit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 293
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "process_importance"

    invoke-direct {p0, p1}, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;->toImportanceDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v1, "memory_limit_class"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    return-object v0
.end method

.method private toImportanceDescription(I)Ljava/lang/String;
    .locals 2
    .param p1, "processImportance"    # I

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;->toImportanceLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toImportanceLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "processImportance"    # I

    .line 345
    sparse-switch p1, :sswitch_data_0

    .line 365
    const-string v0, "unknown"

    return-object v0

    .line 355
    :sswitch_0
    const-string v0, "gone"

    return-object v0

    .line 347
    :sswitch_1
    const-string v0, "cached"

    return-object v0

    .line 349
    :sswitch_2
    const-string v0, "cant_save_state"

    return-object v0

    .line 361
    :sswitch_3
    const-string v0, "top_sleeping"

    return-object v0

    .line 359
    :sswitch_4
    const-string v0, "service"

    return-object v0

    .line 357
    :sswitch_5
    const-string v0, "perceptible"

    return-object v0

    .line 363
    :sswitch_6
    const-string v0, "visible"

    return-object v0

    .line 353
    :sswitch_7
    const-string v0, "foreground_service"

    return-object v0

    .line 351
    :sswitch_8
    const-string v0, "foreground"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_8
        0x7d -> :sswitch_7
        0xc8 -> :sswitch_6
        0xe6 -> :sswitch_5
        0x12c -> :sswitch_4
        0x145 -> :sswitch_3
        0x15e -> :sswitch_2
        0x190 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method private toMemoryLimitClass(I)Ljava/lang/String;
    .locals 1
    .param p1, "processImportance"    # I

    .line 308
    sparse-switch p1, :sswitch_data_0

    .line 329
    const-string v0, "cached"

    return-object v0

    .line 324
    :sswitch_0
    const-string v0, "not_visible"

    return-object v0

    .line 317
    :sswitch_1
    const-string v0, "visible"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x7d -> :sswitch_0
        0xc8 -> :sswitch_1
        0xe6 -> :sswitch_0
        0x12c -> :sswitch_0
        0x145 -> :sswitch_1
        0x15e -> :sswitch_0
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method private toMessage(I)Ljava/lang/String;
    .locals 2
    .param p1, "processImportance"    # I

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android process killed by MemoryLimiter (importance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 336
    invoke-direct {p0, p1}, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;->toImportanceLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    return-object v0
.end method


# virtual methods
.method public buildReport(Landroid/app/ApplicationExitInfo;Z)Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;
    .locals 12
    .param p1, "exitInfo"    # Landroid/app/ApplicationExitInfo;
    .param p2, "shouldEnrich"    # Z

    .line 238
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v4

    .line 240
    .local v4, "timestamp":J
    new-instance v0, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterHint;

    iget-object v1, p0, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 242
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getFlushTimeoutMillis()J

    move-result-wide v1

    iget-object v3, p0, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    move v6, p2

    .end local p2    # "shouldEnrich":Z
    .local v6, "shouldEnrich":Z
    invoke-direct/range {v0 .. v6}, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterHint;-><init>(JLio/sentry/ILogger;JZ)V

    .line 243
    .local v0, "memoryLimiterHint":Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterHint;
    invoke-static {v0}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object p2

    .line 245
    .local p2, "hint":Lio/sentry/Hint;
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v9

    .line 246
    .local v9, "processImportance":I
    invoke-direct {p0, v9}, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;->toMemoryLimitClass(I)Ljava/lang/String;

    move-result-object v10

    .line 248
    .local v10, "memoryLimit":Ljava/lang/String;
    new-instance v1, Lio/sentry/protocol/Message;

    invoke-direct {v1}, Lio/sentry/protocol/Message;-><init>()V

    .line 249
    .local v1, "message":Lio/sentry/protocol/Message;
    invoke-direct {p0, v9}, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;->toMessage(I)Ljava/lang/String;

    move-result-object v11

    .line 250
    .local v11, "messageText":Ljava/lang/String;
    invoke-virtual {v1, v11}, Lio/sentry/protocol/Message;->setFormatted(Ljava/lang/String;)V

    .line 252
    new-instance v2, Lio/sentry/SentryEvent;

    invoke-direct {v2}, Lio/sentry/SentryEvent;-><init>()V

    .line 253
    .local v2, "event":Lio/sentry/SentryEvent;
    sget-object v3, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    invoke-virtual {v2, v3}, Lio/sentry/SentryEvent;->setLevel(Lio/sentry/SentryLevel;)V

    .line 254
    const-string v3, "java"

    invoke-virtual {v2, v3}, Lio/sentry/SentryEvent;->setPlatform(Ljava/lang/String;)V

    .line 255
    invoke-static {v4, v5}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/sentry/SentryEvent;->setTimestamp(Ljava/util/Date;)V

    .line 256
    invoke-virtual {v2, v1}, Lio/sentry/SentryEvent;->setMessage(Lio/sentry/protocol/Message;)V

    .line 257
    nop

    .line 259
    move-object v7, p1

    move v8, v6

    move-object v6, p0

    .end local v6    # "shouldEnrich":Z
    .end local p1    # "exitInfo":Landroid/app/ApplicationExitInfo;
    .local v7, "exitInfo":Landroid/app/ApplicationExitInfo;
    .local v8, "shouldEnrich":Z
    invoke-direct/range {v6 .. v11}, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;->buildException(Landroid/app/ApplicationExitInfo;ZILjava/lang/String;Ljava/lang/String;)Lio/sentry/protocol/SentryException;

    move-result-object p1

    .line 258
    move v6, v8

    .end local v8    # "shouldEnrich":Z
    .restart local v6    # "shouldEnrich":Z
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 257
    invoke-virtual {v2, p1}, Lio/sentry/SentryEvent;->setExceptions(Ljava/util/List;)V

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process_importance:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "memory-limiter"

    filled-new-array {v3, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 260
    invoke-virtual {v2, p1}, Lio/sentry/SentryEvent;->setFingerprints(Ljava/util/List;)V

    .line 265
    new-instance p1, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;

    invoke-direct {p1, v2, p2, v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;-><init>(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/hints/BlockingFlushHint;)V

    return-object p1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 187
    const-string v0, "MemoryLimiter process death"

    return-object v0
.end method

.method public getLastReportedTimestamp()Ljava/lang/Long;
    .locals 1

    .line 226
    iget-object v0, p0, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->lastReportedMemoryLimiter(Lio/sentry/SentryOptions;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public markReported(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .line 231
    iget-object v0, p0, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, p1, p2}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->markMemoryLimiterReported(Lio/sentry/SentryOptions;J)V

    .line 232
    return-void
.end method

.method public matches(Landroid/app/ApplicationExitInfo;)Z
    .locals 5
    .param p1, "exitInfo"    # Landroid/app/ApplicationExitInfo;

    .line 197
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    .line 200
    .local v0, "reason":I
    const/16 v1, 0x11

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 201
    return v2

    .line 206
    :cond_0
    const/16 v1, 0xd

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 207
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "description":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, "MemoryLimiter:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    .line 216
    .end local v1    # "description":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method public shouldReportHistorical()Z
    .locals 1

    .line 221
    iget-object v0, p0, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isReportHistoricalMemoryLimiterExits()Z

    move-result v0

    return v0
.end method
