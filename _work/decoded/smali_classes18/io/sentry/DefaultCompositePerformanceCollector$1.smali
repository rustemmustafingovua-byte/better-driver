.class Lio/sentry/DefaultCompositePerformanceCollector$1;
.super Ljava/util/TimerTask;
.source "DefaultCompositePerformanceCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/DefaultCompositePerformanceCollector;->start(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/DefaultCompositePerformanceCollector;


# direct methods
.method constructor <init>(Lio/sentry/DefaultCompositePerformanceCollector;)V
    .locals 0
    .param p1, "this$0"    # Lio/sentry/DefaultCompositePerformanceCollector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lio/sentry/DefaultCompositePerformanceCollector$1;->this$0:Lio/sentry/DefaultCompositePerformanceCollector;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 99
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector$1;->this$0:Lio/sentry/DefaultCompositePerformanceCollector;

    invoke-static {v0}, Lio/sentry/DefaultCompositePerformanceCollector;->access$100(Lio/sentry/DefaultCompositePerformanceCollector;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IPerformanceSnapshotCollector;

    .line 100
    .local v1, "collector":Lio/sentry/IPerformanceSnapshotCollector;
    invoke-interface {v1}, Lio/sentry/IPerformanceSnapshotCollector;->setup()V

    .line 101
    .end local v1    # "collector":Lio/sentry/IPerformanceSnapshotCollector;
    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method
