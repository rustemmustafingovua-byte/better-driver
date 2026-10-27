.class public final synthetic Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/LazyEvaluator$Evaluator;


# instance fields
.field public final synthetic f$0:Landroidx/core/app/FrameMetricsAggregator;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/app/FrameMetricsAggregator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda2;->f$0:Landroidx/core/app/FrameMetricsAggregator;

    return-void
.end method


# virtual methods
.method public final evaluate()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda2;->f$0:Landroidx/core/app/FrameMetricsAggregator;

    invoke-static {v0}, Lio/sentry/android/core/ActivityFramesTracker;->lambda$new$1(Landroidx/core/app/FrameMetricsAggregator;)Landroidx/core/app/FrameMetricsAggregator;

    move-result-object v0

    return-object v0
.end method
