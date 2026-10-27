.class public final Lio/sentry/NoOpTransactionProfiler;
.super Ljava/lang/Object;
.source "NoOpTransactionProfiler.java"

# interfaces
.implements Lio/sentry/ITransactionProfiler;


# static fields
.field private static final instance:Lio/sentry/NoOpTransactionProfiler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lio/sentry/NoOpTransactionProfiler;

    invoke-direct {v0}, Lio/sentry/NoOpTransactionProfiler;-><init>()V

    sput-object v0, Lio/sentry/NoOpTransactionProfiler;->instance:Lio/sentry/NoOpTransactionProfiler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpTransactionProfiler;
    .locals 1

    .line 16
    sget-object v0, Lio/sentry/NoOpTransactionProfiler;->instance:Lio/sentry/NoOpTransactionProfiler;

    return-object v0
.end method


# virtual methods
.method public bindTransaction(Lio/sentry/ITransaction;)V
    .locals 0
    .param p1, "transaction"    # Lio/sentry/ITransaction;

    .line 28
    return-void
.end method

.method public close()V
    .locals 0

    .line 39
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public onTransactionFinish(Lio/sentry/ITransaction;Ljava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/ProfilingTraceData;
    .locals 1
    .param p1, "transaction"    # Lio/sentry/ITransaction;
    .param p3, "options"    # Lio/sentry/SentryOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ITransaction;",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;",
            "Lio/sentry/SentryOptions;",
            ")",
            "Lio/sentry/ProfilingTraceData;"
        }
    .end annotation

    .line 35
    .local p2, "performanceCollectionData":Ljava/util/List;, "Ljava/util/List<Lio/sentry/PerformanceCollectionData;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public start()V
    .locals 0

    .line 20
    return-void
.end method
