.class final Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;
.super Ljava/lang/Object;
.source "FeedbackShakeIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/FeedbackShakeIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VisibleDialog"
.end annotation


# instance fields
.field private final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final dialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;->activityRef:Ljava/lang/ref/WeakReference;

    .line 212
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;->dialogRef:Ljava/lang/ref/WeakReference;

    .line 213
    return-void
.end method

.method static synthetic access$000(Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;

    .line 206
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;->dialogRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;

    .line 206
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration$VisibleDialog;->activityRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method
