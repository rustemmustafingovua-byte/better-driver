.class Lio/sentry/DefaultCompositePerformanceCollector$2;
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

.field final synthetic val$timedOutTransactions:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/sentry/DefaultCompositePerformanceCollector;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lio/sentry/DefaultCompositePerformanceCollector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lio/sentry/DefaultCompositePerformanceCollector$2;->this$0:Lio/sentry/DefaultCompositePerformanceCollector;

    iput-object p2, p0, Lio/sentry/DefaultCompositePerformanceCollector$2;->val$timedOutTransactions:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 114
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector$2;->val$timedOutTransactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    new-instance v0, Lio/sentry/PerformanceCollectionData;

    iget-object v1, p0, Lio/sentry/DefaultCompositePerformanceCollector$2;->this$0:Lio/sentry/DefaultCompositePerformanceCollector;

    .line 117
    invoke-static {v1}, Lio/sentry/DefaultCompositePerformanceCollector;->access$200(Lio/sentry/DefaultCompositePerformanceCollector;)Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lio/sentry/PerformanceCollectionData;-><init>(J)V

    .line 120
    .local v0, "tempData":Lio/sentry/PerformanceCollectionData;
    iget-object v1, p0, Lio/sentry/DefaultCompositePerformanceCollector$2;->this$0:Lio/sentry/DefaultCompositePerformanceCollector;

    invoke-static {v1}, Lio/sentry/DefaultCompositePerformanceCollector;->access$100(Lio/sentry/DefaultCompositePerformanceCollector;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/IPerformanceSnapshotCollector;

    .line 121
    .local v2, "collector":Lio/sentry/IPerformanceSnapshotCollector;
    invoke-interface {v2, v0}, Lio/sentry/IPerformanceSnapshotCollector;->collect(Lio/sentry/PerformanceCollectionData;)V

    .line 122
    .end local v2    # "collector":Lio/sentry/IPerformanceSnapshotCollector;
    goto :goto_0

    .line 126
    :cond_0
    iget-object v1, p0, Lio/sentry/DefaultCompositePerformanceCollector$2;->this$0:Lio/sentry/DefaultCompositePerformanceCollector;

    invoke-static {v1}, Lio/sentry/DefaultCompositePerformanceCollector;->access$300(Lio/sentry/DefaultCompositePerformanceCollector;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;

    .line 127
    .local v2, "data":Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;
    invoke-virtual {v0}, Lio/sentry/PerformanceCollectionData;->getNanoTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->addDataAndCheckTimeout(Lio/sentry/PerformanceCollectionData;J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    invoke-static {v2}, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->access$400(Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;)Lio/sentry/ITransaction;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 130
    iget-object v3, p0, Lio/sentry/DefaultCompositePerformanceCollector$2;->val$timedOutTransactions:Ljava/util/List;

    invoke-static {v2}, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->access$400(Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;)Lio/sentry/ITransaction;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v2    # "data":Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;
    :cond_1
    goto :goto_1

    .line 136
    :cond_2
    iget-object v1, p0, Lio/sentry/DefaultCompositePerformanceCollector$2;->val$timedOutTransactions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/ITransaction;

    .line 137
    .local v2, "t":Lio/sentry/ITransaction;
    iget-object v3, p0, Lio/sentry/DefaultCompositePerformanceCollector$2;->this$0:Lio/sentry/DefaultCompositePerformanceCollector;

    invoke-virtual {v3, v2}, Lio/sentry/DefaultCompositePerformanceCollector;->stop(Lio/sentry/ITransaction;)Ljava/util/List;

    .line 138
    .end local v2    # "t":Lio/sentry/ITransaction;
    goto :goto_2

    .line 139
    :cond_3
    return-void
.end method
