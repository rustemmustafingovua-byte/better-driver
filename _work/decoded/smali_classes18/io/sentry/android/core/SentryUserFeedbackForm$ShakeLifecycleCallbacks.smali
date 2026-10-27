.class Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;
.super Ljava/lang/Object;
.source "SentryUserFeedbackForm.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SentryUserFeedbackForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShakeLifecycleCallbacks"
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

.field final synthetic this$0:Lio/sentry/android/core/SentryUserFeedbackForm;


# direct methods
.method constructor <init>(Lio/sentry/android/core/SentryUserFeedbackForm;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p2, "activityRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;->this$0:Lio/sentry/android/core/SentryUserFeedbackForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p2, p0, Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;->activityRef:Ljava/lang/ref/WeakReference;

    .line 176
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 201
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 194
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 195
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;->this$0:Lio/sentry/android/core/SentryUserFeedbackForm;

    invoke-static {v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->access$200(Lio/sentry/android/core/SentryUserFeedbackForm;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 187
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;->this$0:Lio/sentry/android/core/SentryUserFeedbackForm;

    invoke-static {v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->access$000(Lio/sentry/android/core/SentryUserFeedbackForm;)Lio/sentry/android/core/SentryShakeDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;->this$0:Lio/sentry/android/core/SentryUserFeedbackForm;

    invoke-static {v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->access$000(Lio/sentry/android/core/SentryUserFeedbackForm;)Lio/sentry/android/core/SentryShakeDetector;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/SentryShakeDetector;->stop()V

    .line 190
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 180
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;->this$0:Lio/sentry/android/core/SentryUserFeedbackForm;

    invoke-static {v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->access$000(Lio/sentry/android/core/SentryUserFeedbackForm;)Lio/sentry/android/core/SentryShakeDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;->this$0:Lio/sentry/android/core/SentryUserFeedbackForm;

    invoke-static {v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->access$000(Lio/sentry/android/core/SentryUserFeedbackForm;)Lio/sentry/android/core/SentryShakeDetector;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;->this$0:Lio/sentry/android/core/SentryUserFeedbackForm;

    iget-object v2, p0, Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-static {v1, v2}, Lio/sentry/android/core/SentryUserFeedbackForm;->access$100(Lio/sentry/android/core/SentryUserFeedbackForm;Ljava/lang/ref/WeakReference;)Lio/sentry/android/core/SentryShakeDetector$Listener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/sentry/android/core/SentryShakeDetector;->start(Landroid/content/Context;Lio/sentry/android/core/SentryShakeDetector$Listener;)V

    .line 183
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 211
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 204
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 207
    return-void
.end method
