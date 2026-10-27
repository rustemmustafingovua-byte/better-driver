.class public final Lio/sentry/android/replay/ReplayIntegrationKt;
.super Ljava/lang/Object;
.source "ReplayIntegration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "applyRecordingMetadata",
        "",
        "Lio/sentry/SentryReplayEvent;",
        "metadata",
        "Lio/sentry/android/replay/RecordingMetadata;",
        "options",
        "Lio/sentry/SentryOptions;",
        "sentry-android-replay_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$applyRecordingMetadata(Lio/sentry/SentryReplayEvent;Lio/sentry/android/replay/RecordingMetadata;Lio/sentry/SentryOptions;)V
    .locals 0
    .param p0, "$receiver"    # Lio/sentry/SentryReplayEvent;
    .param p1, "metadata"    # Lio/sentry/android/replay/RecordingMetadata;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/android/replay/ReplayIntegrationKt;->applyRecordingMetadata(Lio/sentry/SentryReplayEvent;Lio/sentry/android/replay/RecordingMetadata;Lio/sentry/SentryOptions;)V

    return-void
.end method

.method private static final applyRecordingMetadata(Lio/sentry/SentryReplayEvent;Lio/sentry/android/replay/RecordingMetadata;Lio/sentry/SentryOptions;)V
    .locals 2
    .param p0, "$this$applyRecordingMetadata"    # Lio/sentry/SentryReplayEvent;
    .param p1, "metadata"    # Lio/sentry/android/replay/RecordingMetadata;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 809
    if-eqz p1, :cond_1

    .line 810
    invoke-virtual {p1}, Lio/sentry/android/replay/RecordingMetadata;->getRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryReplayEvent;->setRelease(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p1}, Lio/sentry/android/replay/RecordingMetadata;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryReplayEvent;->setEnvironment(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p1}, Lio/sentry/android/replay/RecordingMetadata;->getDist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryReplayEvent;->setDist(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p1}, Lio/sentry/android/replay/RecordingMetadata;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lio/sentry/SentryReplayEvent;->setSdk(Lio/sentry/protocol/SdkVersion;)V

    goto :goto_0

    .line 815
    :cond_1
    const-string v0, "release.json"

    const-class v1, Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/sentry/SentryReplayEvent;->setRelease(Ljava/lang/String;)V

    .line 816
    const-string v0, "environment.json"

    const-class v1, Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/sentry/SentryReplayEvent;->setEnvironment(Ljava/lang/String;)V

    .line 817
    const-string v0, "dist.json"

    const-class v1, Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/sentry/SentryReplayEvent;->setDist(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0}, Lio/sentry/SentryReplayEvent;->setSdk(Lio/sentry/protocol/SdkVersion;)V

    .line 820
    :goto_0
    return-void
.end method
