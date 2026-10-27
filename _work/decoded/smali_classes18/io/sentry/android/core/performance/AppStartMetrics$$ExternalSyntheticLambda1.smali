.class public final synthetic Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/performance/AppStartMetrics;

.field public final synthetic f$1:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/performance/AppStartMetrics;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/core/performance/AppStartMetrics;

    iput-object p2, p0, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda1;->f$1:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/core/performance/AppStartMetrics;

    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda1;->f$1:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->lambda$scheduleHeadlessAppStartCheckOnMain$2$io-sentry-android-core-performance-AppStartMetrics(Landroid/os/Handler;)V

    return-void
.end method
