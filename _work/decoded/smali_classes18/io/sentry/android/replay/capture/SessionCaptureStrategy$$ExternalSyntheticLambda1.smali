.class public final synthetic Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lio/sentry/android/replay/ScreenshotRecorderConfig;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lkotlin/jvm/functions/Function2;JLio/sentry/android/replay/ScreenshotRecorderConfig;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    iput-object p2, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function2;

    iput-wide p3, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$2:J

    iput-object p5, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$3:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    iput-boolean p6, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    iget-object v1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function2;

    iget-wide v2, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$2:J

    iget-object v4, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$3:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    iget-boolean v5, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$4:Z

    invoke-static/range {v0 .. v5}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->$r8$lambda$0T8afHbNFJvgSBGoczvMDTD7BQk(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lkotlin/jvm/functions/Function2;JLio/sentry/android/replay/ScreenshotRecorderConfig;Z)V

    return-void
.end method
