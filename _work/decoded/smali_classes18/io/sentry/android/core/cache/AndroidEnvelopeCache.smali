.class public final Lio/sentry/android/core/cache/AndroidEnvelopeCache;
.super Lio/sentry/cache/EnvelopeCache;
.source "AndroidEnvelopeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;
    }
.end annotation


# static fields
.field public static final LAST_ANR_MARKER_LABEL:Ljava/lang/String; = "ANR"

.field public static final LAST_ANR_REPORT:Ljava/lang/String; = "last_anr_report"

.field public static final LAST_MEMORY_LIMITER_MARKER_LABEL:Ljava/lang/String; = "MemoryLimiter"

.field public static final LAST_MEMORY_LIMITER_REPORT:Ljava/lang/String; = "last_memory_limiter_report"

.field public static final LAST_TOMBSTONE_MARKER_LABEL:Ljava/lang/String; = "Tombstone"

.field public static final LAST_TOMBSTONE_REPORT:Ljava/lang/String; = "last_tombstone_report"

.field private static final TIMESTAMP_MARKER_HANDLERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 286
    const/4 v0, 0x3

    new-array v0, v0, [Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;

    new-instance v1, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;

    const-class v2, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;

    new-instance v3, Lio/sentry/android/core/cache/AndroidEnvelopeCache$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lio/sentry/android/core/cache/AndroidEnvelopeCache$$ExternalSyntheticLambda0;-><init>()V

    const-string v4, "ANR"

    const-string v5, "last_anr_report"

    invoke-direct {v1, v2, v4, v5, v3}, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;

    const-class v2, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;

    new-instance v3, Lio/sentry/android/core/cache/AndroidEnvelopeCache$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lio/sentry/android/core/cache/AndroidEnvelopeCache$$ExternalSyntheticLambda1;-><init>()V

    const-string v4, "Tombstone"

    const-string v5, "last_tombstone_report"

    invoke-direct {v1, v2, v4, v5, v3}, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;

    const-class v2, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterHint;

    new-instance v3, Lio/sentry/android/core/cache/AndroidEnvelopeCache$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lio/sentry/android/core/cache/AndroidEnvelopeCache$$ExternalSyntheticLambda2;-><init>()V

    const-string v4, "MemoryLimiter"

    const-string v5, "last_memory_limiter_report"

    invoke-direct {v1, v2, v4, v5, v3}, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 287
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->TIMESTAMP_MARKER_HANDLERS:Ljava/util/List;

    .line 286
    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 46
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;->getInstance()Lio/sentry/transport/ICurrentDateProvider;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/transport/ICurrentDateProvider;)V

    .line 47
    return-void
.end method

.method constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/transport/ICurrentDateProvider;)V
    .locals 2
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p2, "currentDateProvider"    # Lio/sentry/transport/ICurrentDateProvider;

    .line 52
    nop

    .line 54
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cacheDirPath must not be null"

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getMaxCacheItems()I

    move-result v1

    .line 52
    invoke-direct {p0, p1, v0, v1}, Lio/sentry/cache/EnvelopeCache;-><init>(Lio/sentry/SentryOptions;Ljava/lang/String;I)V

    .line 56
    iput-object p2, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lio/sentry/SentryOptions;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lio/sentry/SentryOptions;
    .param p1, "x1"    # Ljava/lang/Long;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 35
    invoke-static {p0, p1, p2, p3}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->writeLastReportedMarker(Lio/sentry/SentryOptions;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static hasStartupCrashMarker(Lio/sentry/SentryOptions;)Z
    .locals 8
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 129
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "outboxPath":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 131
    nop

    .line 132
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v4, v1, [Ljava/lang/Object;

    .line 133
    const-string v5, "Outbox path is null, the startup crash marker file does not exist"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    return v1

    .line 137
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "startup_crash"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v2, "crashMarkerFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    .line 140
    .local v3, "exists":Z
    if-eqz v3, :cond_1

    .line 141
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 142
    nop

    .line 143
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Failed to delete the startup crash marker file. %s."

    .line 147
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 144
    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_1
    return v3

    .line 151
    .end local v3    # "exists":Z
    :catchall_0
    move-exception v3

    .line 152
    .local v3, "e":Ljava/lang/Throwable;
    nop

    .line 153
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 154
    const-string v6, "Error reading/deleting the startup crash marker file on the disk"

    invoke-interface {v4, v5, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .end local v3    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method static synthetic lambda$static$0(Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;)Ljava/lang/Long;
    .locals 1
    .param p0, "anrV2Hint"    # Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;

    .line 292
    invoke-virtual {p0}, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->timestamp()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$1(Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;)Ljava/lang/Long;
    .locals 1
    .param p0, "tombstoneHint"    # Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;

    .line 297
    invoke-virtual {p0}, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;->timestamp()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$2(Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterHint;)Ljava/lang/Long;
    .locals 1
    .param p0, "memoryLimiterHint"    # Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterHint;

    .line 302
    invoke-virtual {p0}, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterHint;->timestamp()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static lastReportedAnr(Lio/sentry/SentryOptions;)Ljava/lang/Long;
    .locals 2
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 216
    const-string v0, "last_anr_report"

    const-string v1, "ANR"

    invoke-static {p0, v0, v1}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->lastReportedMarker(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static lastReportedMarker(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 8
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "reportFilename"    # Ljava/lang/String;
    .param p2, "markerLabel"    # Ljava/lang/String;

    .line 163
    nop

    .line 165
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache dir path should be set for getting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s reported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, "cacheDirPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v1, "lastMarker":Ljava/io/File;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Lio/sentry/util/FileUtils;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "content":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-object v2

    .line 174
    .end local v3    # "content":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 175
    .local v3, "e":Ljava/lang/Throwable;
    instance-of v4, v3, Ljava/io/FileNotFoundException;

    if-eqz v4, :cond_2

    .line 176
    nop

    .line 177
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Last "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " marker does not exist. %s."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 181
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 178
    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 183
    :cond_2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading last "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " marker"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    return-object v2
.end method

.method public static lastReportedMemoryLimiter(Lio/sentry/SentryOptions;)Ljava/lang/Long;
    .locals 2
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 224
    const-string v0, "last_memory_limiter_report"

    const-string v1, "MemoryLimiter"

    invoke-static {p0, v0, v1}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->lastReportedMarker(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static lastReportedTombstone(Lio/sentry/SentryOptions;)Ljava/lang/Long;
    .locals 2
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 220
    const-string v0, "last_tombstone_report"

    const-string v1, "Tombstone"

    invoke-static {p0, v0, v1}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->lastReportedMarker(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static markAnrReported(Lio/sentry/SentryOptions;J)V
    .locals 3
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "timestamp"    # J

    .line 229
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "last_anr_report"

    const-string v2, "ANR"

    invoke-static {p0, v0, v1, v2}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->writeLastReportedMarker(Lio/sentry/SentryOptions;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public static markMemoryLimiterReported(Lio/sentry/SentryOptions;J)V
    .locals 3
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "timestamp"    # J

    .line 239
    nop

    .line 240
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 239
    const-string v1, "last_memory_limiter_report"

    const-string v2, "MemoryLimiter"

    invoke-static {p0, v0, v1, v2}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->writeLastReportedMarker(Lio/sentry/SentryOptions;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public static markTombstoneReported(Lio/sentry/SentryOptions;J)V
    .locals 3
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "timestamp"    # J

    .line 234
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "last_tombstone_report"

    const-string v2, "Tombstone"

    invoke-static {p0, v0, v1, v2}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->writeLastReportedMarker(Lio/sentry/SentryOptions;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method private storeInternalAndroid(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Z
    .locals 9
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 71
    invoke-super {p0, p1, p2}, Lio/sentry/cache/EnvelopeCache;->storeEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Z

    move-result v0

    .line 73
    .local v0, "didStore":Z
    iget-object v1, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->options:Lio/sentry/SentryOptions;

    check-cast v1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 74
    .local v1, "options":Lio/sentry/android/core/SentryAndroidOptions;
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/core/performance/AppStartMetrics;->getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    .line 76
    .local v2, "sdkInitTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    const-class v3, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;

    invoke-static {p2, v3}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 79
    invoke-interface {v3}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->getStartUptimeMs()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 80
    .local v3, "timeSinceSdkInit":J
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getStartupCrashDurationThresholdMillis()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gtz v5, :cond_0

    .line 81
    nop

    .line 82
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 86
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 83
    const-string v8, "Startup Crash detected %d milliseconds after SDK init. Writing a startup crash marker file to disk."

    invoke-interface {v5, v6, v8, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-direct {p0}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->writeStartupCrashMarkerFile()V

    .line 91
    .end local v3    # "timeSinceSdkInit":J
    :cond_0
    sget-object v3, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->TIMESTAMP_MARKER_HANDLERS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;

    .line 92
    .local v4, "handler":Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;, "Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler<*>;"
    invoke-virtual {v4, p2, v1}, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;->handle(Lio/sentry/Hint;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 93
    .end local v4    # "handler":Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;, "Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler<*>;"
    goto :goto_0

    .line 95
    :cond_1
    return v0
.end method

.method private static writeLastReportedMarker(Lio/sentry/SentryOptions;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "timestamp"    # Ljava/lang/Long;
    .param p2, "reportFilename"    # Ljava/lang/String;
    .param p3, "markerCategory"    # Ljava/lang/String;

    .line 194
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "cacheDirPath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 196
    nop

    .line 197
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache dir path is null, the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " marker will not be written"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 198
    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    return-void

    .line 204
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .local v1, "anrMarker":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 206
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 207
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 212
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_1

    .line 205
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "cacheDirPath":Ljava/lang/String;
    .end local v1    # "anrMarker":Ljava/io/File;
    .end local p0    # "options":Lio/sentry/SentryOptions;
    .end local p1    # "timestamp":Ljava/lang/Long;
    .end local p2    # "reportFilename":Ljava/lang/String;
    .end local p3    # "markerCategory":Ljava/lang/String;
    :goto_0
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 208
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "cacheDirPath":Ljava/lang/String;
    .restart local v1    # "anrMarker":Ljava/io/File;
    .restart local p0    # "options":Lio/sentry/SentryOptions;
    .restart local p1    # "timestamp":Ljava/lang/Long;
    .restart local p2    # "reportFilename":Ljava/lang/String;
    .restart local p3    # "markerCategory":Ljava/lang/String;
    :catchall_2
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/Throwable;
    nop

    .line 210
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " marker to the disk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 211
    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private writeStartupCrashMarkerFile()V
    .locals 7

    .line 106
    iget-object v0, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "outboxPath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 108
    iget-object v1, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 109
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 110
    const-string v4, "Outbox path is null, the startup crash marker file will not be written"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    return-void

    .line 115
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, "outboxDir":Ljava/io/File;
    invoke-static {v1}, Lio/sentry/util/FileUtils;->createDirectory(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    iget-object v2, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Failed to create outbox dir %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    return-void

    .line 120
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "startup_crash"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v2, "crashMarkerFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    goto :goto_0

    .line 123
    :catchall_0
    move-exception v3

    .line 124
    .local v3, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Error writing the startup crash marker file to the disk"

    invoke-interface {v4, v5, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 100
    iget-object v0, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->directory:Lio/sentry/util/LazyDirectory;

    invoke-virtual {v0}, Lio/sentry/util/LazyDirectory;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public store(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 0
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 62
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->storeInternalAndroid(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Z

    .line 63
    return-void
.end method

.method public storeEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Z
    .locals 1
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 67
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->storeInternalAndroid(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Z

    move-result v0

    return v0
.end method
