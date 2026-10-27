.class public final synthetic Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lio/sentry/protocol/SentryId;

.field public final synthetic f$3:Lio/sentry/android/replay/ScreenshotRecorderConfig;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;JLio/sentry/protocol/SentryId;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    iput-wide p2, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda0;->f$2:Lio/sentry/protocol/SentryId;

    iput-object p5, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda0;->f$3:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    iput-object p6, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    iget-wide v1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda0;->f$2:Lio/sentry/protocol/SentryId;

    iget-object v4, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda0;->f$3:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    iget-object v5, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v5}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->$r8$lambda$VT5vjpIEYuVoTf4zBUkxSTUrKXY(Lio/sentry/android/replay/capture/SessionCaptureStrategy;JLio/sentry/protocol/SentryId;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
