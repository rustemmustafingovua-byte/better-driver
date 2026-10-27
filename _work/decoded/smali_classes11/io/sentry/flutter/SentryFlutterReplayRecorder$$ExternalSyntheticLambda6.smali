.class public final synthetic Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/flutter/SentryFlutterReplayRecorder;

.field public final synthetic f$1:Lio/sentry/android/replay/ScreenshotRecorderConfig;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/flutter/SentryFlutterReplayRecorder;Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda6;->f$0:Lio/sentry/flutter/SentryFlutterReplayRecorder;

    iput-object p2, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda6;->f$1:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda6;->f$0:Lio/sentry/flutter/SentryFlutterReplayRecorder;

    iget-object v1, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda6;->f$1:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    invoke-static {v0, v1}, Lio/sentry/flutter/SentryFlutterReplayRecorder;->$r8$lambda$lMnHnhAl_zAHt4VHdudGMwkZHjA(Lio/sentry/flutter/SentryFlutterReplayRecorder;Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    return-void
.end method
