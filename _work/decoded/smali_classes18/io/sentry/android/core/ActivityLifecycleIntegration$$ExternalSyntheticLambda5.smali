.class public final synthetic Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/android/core/AppStartExtension$ExtendAppStartListener;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/ActivityLifecycleIntegration;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda5;->f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;

    return-void
.end method


# virtual methods
.method public final onExtendAppStartRequested()Lio/sentry/android/core/AppStartExtension$ExtendedAppStart;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda5;->f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;

    invoke-static {v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->$r8$lambda$SpDR6TpBBhAF6MvL2rkuApz5ajI(Lio/sentry/android/core/ActivityLifecycleIntegration;)Lio/sentry/android/core/AppStartExtension$ExtendedAppStart;

    move-result-object v0

    return-object v0
.end method
