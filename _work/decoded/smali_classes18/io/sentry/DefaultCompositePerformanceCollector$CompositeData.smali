.class Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;
.super Ljava/lang/Object;
.source "DefaultCompositePerformanceCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/DefaultCompositePerformanceCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompositeData"
.end annotation


# instance fields
.field private final dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;"
        }
    .end annotation
.end field

.field private final startTimestamp:J

.field final synthetic this$0:Lio/sentry/DefaultCompositePerformanceCollector;

.field private final transaction:Lio/sentry/ITransaction;


# direct methods
.method private constructor <init>(Lio/sentry/DefaultCompositePerformanceCollector;Lio/sentry/ITransaction;)V
    .locals 2
    .param p2, "transaction"    # Lio/sentry/ITransaction;
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

    .line 217
    iput-object p1, p0, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->this$0:Lio/sentry/DefaultCompositePerformanceCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->dataList:Ljava/util/List;

    .line 219
    iput-object p2, p0, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->transaction:Lio/sentry/ITransaction;

    .line 220
    invoke-static {p1}, Lio/sentry/DefaultCompositePerformanceCollector;->access$200(Lio/sentry/DefaultCompositePerformanceCollector;)Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->startTimestamp:J

    .line 221
    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/DefaultCompositePerformanceCollector;Lio/sentry/ITransaction;Lio/sentry/DefaultCompositePerformanceCollector$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/DefaultCompositePerformanceCollector;
    .param p2, "x1"    # Lio/sentry/ITransaction;
    .param p3, "x2"    # Lio/sentry/DefaultCompositePerformanceCollector$1;

    .line 212
    invoke-direct {p0, p1, p2}, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;-><init>(Lio/sentry/DefaultCompositePerformanceCollector;Lio/sentry/ITransaction;)V

    return-void
.end method

.method static synthetic access$400(Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;)Lio/sentry/ITransaction;
    .locals 1
    .param p0, "x0"    # Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;

    .line 212
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->transaction:Lio/sentry/ITransaction;

    return-object v0
.end method

.method static synthetic access$500(Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;

    .line 212
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->dataList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method addDataAndCheckTimeout(Lio/sentry/PerformanceCollectionData;J)Z
    .locals 5
    .param p1, "data"    # Lio/sentry/PerformanceCollectionData;
    .param p2, "nowNanos"    # J

    .line 235
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->dataList:Ljava/util/List;

    monitor-enter v0

    .line 236
    :try_start_0
    iget-object v1, p0, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->dataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->transaction:Lio/sentry/ITransaction;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->startTimestamp:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 241
    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    .line 237
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
