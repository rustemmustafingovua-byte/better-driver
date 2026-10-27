.class final Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;
.super Ljava/lang/Object;
.source "ApplicationExitInfoHistoryDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;,
        Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;
    }
.end annotation


# static fields
.field static final NINETY_DAYS_THRESHOLD:J


# instance fields
.field private final context:Landroid/content/Context;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;

.field private final policy:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

.field private final scopes:Lio/sentry/IScopes;

.field private final threshold:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5b

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->NINETY_DAYS_THRESHOLD:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scopes"    # Lio/sentry/IScopes;
    .param p3, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p4, "dateProvider"    # Lio/sentry/transport/ICurrentDateProvider;
    .param p5, "policy"    # Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->context:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->scopes:Lio/sentry/IScopes;

    .line 64
    iput-object p3, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 65
    iput-object p5, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->policy:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    .line 66
    invoke-interface {p4}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->NINETY_DAYS_THRESHOLD:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->threshold:J

    .line 67
    return-void
.end method

.method private removeLatest(Ljava/util/List;)Landroid/app/ApplicationExitInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;)",
            "Landroid/app/ApplicationExitInfo;"
        }
    .end annotation

    .line 159
    .local p1, "exitInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ApplicationExitInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ApplicationExitInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    .line 161
    .local v1, "applicationExitInfo":Landroid/app/ApplicationExitInfo;
    iget-object v2, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->policy:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    invoke-interface {v2, v1}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->matches(Landroid/app/ApplicationExitInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 163
    return-object v1

    .line 165
    .end local v1    # "applicationExitInfo":Landroid/app/ApplicationExitInfo;
    :cond_0
    goto :goto_0

    .line 166
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ApplicationExitInfo;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private report(Landroid/app/ApplicationExitInfo;Z)V
    .locals 8
    .param p1, "exitInfo"    # Landroid/app/ApplicationExitInfo;
    .param p2, "enrich"    # Z

    .line 206
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->policy:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    invoke-interface {v0, p1, p2}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->buildReport(Landroid/app/ApplicationExitInfo;Z)Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;

    move-result-object v0

    .line 208
    .local v0, "report":Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;
    if-nez v0, :cond_0

    .line 209
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->scopes:Lio/sentry/IScopes;

    invoke-virtual {v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;->getEvent()Lio/sentry/SentryEvent;

    move-result-object v2

    invoke-virtual {v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;->getHint()Lio/sentry/Hint;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/sentry/IScopes;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v1

    .line 213
    .local v1, "sentryId":Lio/sentry/protocol/SentryId;
    sget-object v2, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v1, v2}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 214
    .local v2, "isEventDropped":Z
    if-eqz v2, :cond_2

    .line 219
    invoke-virtual {v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;->getHint()Lio/sentry/Hint;

    move-result-object v3

    invoke-static {v3}, Lio/sentry/util/HintUtils;->isCaptureFailed(Lio/sentry/Hint;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    iget-object v3, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 221
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v5, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->policy:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    .line 225
    invoke-interface {v5}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->getLabel()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 222
    const-string v6, "Capturing the %s event failed, leaving the exit for the next app start."

    invoke-interface {v3, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v3, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 228
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v5, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->policy:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    .line 232
    invoke-interface {v5}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->getLabel()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 229
    const-string v6, "%s event was dropped, marking the exit as reported."

    invoke-interface {v3, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v3, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->policy:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->markReported(J)V

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;->getFlushHint()Lio/sentry/hints/BlockingFlushHint;

    move-result-object v3

    .line 237
    .local v3, "flushHint":Lio/sentry/hints/BlockingFlushHint;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lio/sentry/hints/BlockingFlushHint;->waitFlush()Z

    move-result v4

    if-nez v4, :cond_3

    .line 238
    iget-object v4, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 239
    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    iget-object v6, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->policy:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    .line 243
    invoke-interface {v6}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->getLabel()Ljava/lang/String;

    move-result-object v6

    .line 244
    invoke-virtual {v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;->getEvent()Lio/sentry/SentryEvent;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 240
    const-string v7, "Timed out waiting to flush %s event to disk. Event: %s"

    invoke-interface {v4, v5, v7, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    .end local v3    # "flushHint":Lio/sentry/hints/BlockingFlushHint;
    :cond_3
    :goto_0
    return-void
.end method

.method private reportHistorical(Ljava/util/List;Ljava/lang/Long;)V
    .locals 6
    .param p2, "lastReportedTimestamp"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 173
    .local p1, "exitInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ApplicationExitInfo;>;"
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    .line 175
    .local v1, "applicationExitInfo":Landroid/app/ApplicationExitInfo;
    iget-object v2, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->policy:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    invoke-interface {v2, v1}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->matches(Landroid/app/ApplicationExitInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    iget-wide v4, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->threshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 177
    iget-object v2, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 178
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v4, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->policy:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    .line 182
    invoke-interface {v4}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->getLabel()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v4

    .line 179
    const-string v5, "%s happened too long ago %s."

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    goto :goto_0

    .line 187
    :cond_0
    if-eqz p2, :cond_1

    .line 188
    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 189
    iget-object v2, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 190
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v4, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->policy:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    .line 194
    invoke-interface {v4}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->getLabel()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v4

    .line 191
    const-string v5, "%s has already been reported %s."

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    goto :goto_0

    .line 199
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->report(Landroid/app/ApplicationExitInfo;Z)V

    .line 201
    .end local v1    # "applicationExitInfo":Landroid/app/ApplicationExitInfo;
    :cond_2
    goto :goto_0

    .line 202
    :cond_3
    return-void
.end method

.method private waitPreviousSessionFlush()V
    .locals 5

    .line 138
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object v0

    .line 139
    .local v0, "cache":Lio/sentry/cache/IEnvelopeCache;
    instance-of v1, v0, Lio/sentry/cache/EnvelopeCache;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoSessionTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/sentry/cache/EnvelopeCache;

    .line 141
    invoke-virtual {v1}, Lio/sentry/cache/EnvelopeCache;->waitPreviousSessionFlush()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 143
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 144
    const-string v4, "Timed out waiting to flush previous session to its own file."

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    move-object v1, v0

    check-cast v1, Lio/sentry/cache/EnvelopeCache;

    invoke-virtual {v1}, Lio/sentry/cache/EnvelopeCache;->flushPreviousSession()V

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 72
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->context:Landroid/content/Context;

    .line 73
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 75
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 76
    iget-object v2, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Failed to retrieve ActivityManager."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return-void

    .line 80
    :cond_0
    nop

    .line 81
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 83
    .local v2, "applicationExitInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ApplicationExitInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    iget-object v3, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "No records in historical exit reasons."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return-void

    .line 88
    :cond_1
    invoke-direct {p0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->waitPreviousSessionFlush()V

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v1, "exitInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ApplicationExitInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ApplicationExitInfo;

    .line 92
    .local v4, "exitInfo":Landroid/app/ApplicationExitInfo;
    if-eqz v4, :cond_2

    .line 93
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v4    # "exitInfo":Landroid/app/ApplicationExitInfo;
    :cond_2
    goto :goto_0

    .line 97
    :cond_3
    iget-object v3, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->policy:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    invoke-interface {v3}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->getLastReportedTimestamp()Ljava/lang/Long;

    move-result-object v3

    .line 99
    .local v3, "lastReportedTimestamp":Ljava/lang/Long;
    invoke-direct {p0, v1}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->removeLatest(Ljava/util/List;)Landroid/app/ApplicationExitInfo;

    move-result-object v4

    .line 100
    .local v4, "latest":Landroid/app/ApplicationExitInfo;
    if-nez v4, :cond_4

    .line 101
    iget-object v5, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 102
    invoke-virtual {v5}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v7, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->policy:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    .line 106
    invoke-interface {v7}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->getLabel()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 103
    const-string v8, "No %ss have been found in the historical exit reasons list."

    invoke-interface {v5, v6, v8, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void

    .line 110
    :cond_4
    invoke-virtual {v4}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v5

    iget-wide v7, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->threshold:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_5

    .line 111
    iget-object v5, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 112
    invoke-virtual {v5}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v7, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->policy:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    .line 116
    invoke-interface {v7}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->getLabel()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 113
    const-string v8, "Latest %s happened too long ago, returning early."

    invoke-interface {v5, v6, v8, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    return-void

    .line 120
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v4}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_6

    .line 121
    iget-object v5, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 122
    invoke-virtual {v5}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v7, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->policy:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    .line 126
    invoke-interface {v7}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->getLabel()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 123
    const-string v8, "Latest %s has already been reported, returning early."

    invoke-interface {v5, v6, v8, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    return-void

    .line 130
    :cond_6
    iget-object v5, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->policy:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    invoke-interface {v5}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->shouldReportHistorical()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 131
    invoke-direct {p0, v1, v3}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->reportHistorical(Ljava/util/List;Ljava/lang/Long;)V

    .line 134
    :cond_7
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->report(Landroid/app/ApplicationExitInfo;Z)V

    .line 135
    return-void
.end method
