.class public final synthetic Lio/sentry/android/core/SentryFeedbackScreenshotPicker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/SentryFeedbackScreenshotPicker$OnScreenshotPicked;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/SentryFeedbackScreenshotPicker$OnScreenshotPicked;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SentryFeedbackScreenshotPicker$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/SentryFeedbackScreenshotPicker$OnScreenshotPicked;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/SentryFeedbackScreenshotPicker$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/SentryFeedbackScreenshotPicker$OnScreenshotPicked;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Lio/sentry/android/core/SentryFeedbackScreenshotPicker;->lambda$register$0(Lio/sentry/android/core/SentryFeedbackScreenshotPicker$OnScreenshotPicked;Landroid/net/Uri;)V

    return-void
.end method
