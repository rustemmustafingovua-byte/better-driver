.class public final synthetic Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/PerfettoContinuousProfiler;

.field public final synthetic f$1:Lio/sentry/IScopes;

.field public final synthetic f$2:Lio/sentry/ProfileChunk$Builder;

.field public final synthetic f$3:Lio/sentry/SentryOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/PerfettoContinuousProfiler;Lio/sentry/IScopes;Lio/sentry/ProfileChunk$Builder;Lio/sentry/SentryOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/PerfettoContinuousProfiler;

    iput-object p2, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda2;->f$1:Lio/sentry/IScopes;

    iput-object p3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda2;->f$2:Lio/sentry/ProfileChunk$Builder;

    iput-object p4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda2;->f$3:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/PerfettoContinuousProfiler;

    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda2;->f$1:Lio/sentry/IScopes;

    iget-object v2, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda2;->f$2:Lio/sentry/ProfileChunk$Builder;

    iget-object v3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda2;->f$3:Lio/sentry/SentryOptions;

    invoke-virtual {v0, v1, v2, v3}, Lio/sentry/android/core/PerfettoContinuousProfiler;->lambda$sendChunk$2$io-sentry-android-core-PerfettoContinuousProfiler(Lio/sentry/IScopes;Lio/sentry/ProfileChunk$Builder;Lio/sentry/SentryOptions;)V

    return-void
.end method
