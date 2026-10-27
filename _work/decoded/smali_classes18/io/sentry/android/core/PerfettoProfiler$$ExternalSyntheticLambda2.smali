.class public final synthetic Lio/sentry/android/core/PerfettoProfiler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/PerfettoProfiler;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/PerfettoProfiler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/PerfettoProfiler$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/PerfettoProfiler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/PerfettoProfiler$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/PerfettoProfiler;

    invoke-virtual {v0}, Lio/sentry/android/core/PerfettoProfiler;->lambda$endAndCollect$0$io-sentry-android-core-PerfettoProfiler()V

    return-void
.end method
