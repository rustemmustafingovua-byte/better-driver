.class Lio/sentry/metrics/MetricsBatchProcessor$BatchRunnable;
.super Ljava/lang/Object;
.source "MetricsBatchProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/metrics/MetricsBatchProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/metrics/MetricsBatchProcessor;


# direct methods
.method private constructor <init>(Lio/sentry/metrics/MetricsBatchProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lio/sentry/metrics/MetricsBatchProcessor$BatchRunnable;->this$0:Lio/sentry/metrics/MetricsBatchProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/metrics/MetricsBatchProcessor;Lio/sentry/metrics/MetricsBatchProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/metrics/MetricsBatchProcessor;
    .param p2, "x1"    # Lio/sentry/metrics/MetricsBatchProcessor$1;

    .line 156
    invoke-direct {p0, p1}, Lio/sentry/metrics/MetricsBatchProcessor$BatchRunnable;-><init>(Lio/sentry/metrics/MetricsBatchProcessor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 160
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor$BatchRunnable;->this$0:Lio/sentry/metrics/MetricsBatchProcessor;

    invoke-static {v0}, Lio/sentry/metrics/MetricsBatchProcessor;->access$100(Lio/sentry/metrics/MetricsBatchProcessor;)V

    .line 161
    return-void
.end method
