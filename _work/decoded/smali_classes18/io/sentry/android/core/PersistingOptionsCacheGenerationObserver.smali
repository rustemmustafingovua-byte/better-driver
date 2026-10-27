.class final Lio/sentry/android/core/PersistingOptionsCacheGenerationObserver;
.super Ljava/lang/Object;
.source "PersistingOptionsCacheGenerationObserver.java"

# interfaces
.implements Lio/sentry/IOptionsObserver;


# static fields
.field static final APP_LAST_UPDATE_TIME_FILENAME:Ljava/lang/String; = "app-last-update-time.json"


# instance fields
.field private final lastUpdateTime:J

.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method constructor <init>(Lio/sentry/SentryOptions;J)V
    .locals 0
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "lastUpdateTime"    # J

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lio/sentry/android/core/PersistingOptionsCacheGenerationObserver;->options:Lio/sentry/SentryOptions;

    .line 48
    iput-wide p2, p0, Lio/sentry/android/core/PersistingOptionsCacheGenerationObserver;->lastUpdateTime:J

    .line 49
    return-void
.end method

.method static read(Lio/sentry/SentryOptions;)Ljava/lang/Long;
    .locals 7
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 58
    const-class v0, Ljava/lang/String;

    .line 59
    const-string v1, ".options-cache"

    const-string v2, "app-last-update-time.json"

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v0, v3}, Lio/sentry/cache/CacheUtils;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 61
    return-object v3

    .line 64
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Failed to read options cache generation."

    invoke-interface {v2, v4, v1, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    return-object v3
.end method


# virtual methods
.method public setDist(Ljava/lang/String;)V
    .locals 0
    .param p1, "dist"    # Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0
    .param p1, "environment"    # Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setProguardUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "proguardUuid"    # Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 4
    .param p1, "release"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lio/sentry/android/core/PersistingOptionsCacheGenerationObserver;->options:Lio/sentry/SentryOptions;

    iget-wide v1, p0, Lio/sentry/android/core/PersistingOptionsCacheGenerationObserver;->lastUpdateTime:J

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 53
    const-string v2, ".options-cache"

    const-string v3, "app-last-update-time.json"

    invoke-static {v0, v1, v2, v3}, Lio/sentry/cache/CacheUtils;->store(Lio/sentry/SentryOptions;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public setReplayErrorSampleRate(Ljava/lang/Double;)V
    .locals 0
    .param p1, "replayErrorSampleRate"    # Ljava/lang/Double;

    .line 87
    return-void
.end method

.method public setSdkVersion(Lio/sentry/protocol/SdkVersion;)V
    .locals 0
    .param p1, "sdkVersion"    # Lio/sentry/protocol/SdkVersion;

    .line 75
    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method
