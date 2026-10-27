.class public final Lio/sentry/NoOpCompositePerformanceCollector;
.super Ljava/lang/Object;
.source "NoOpCompositePerformanceCollector.java"

# interfaces
.implements Lio/sentry/CompositePerformanceCollector;


# static fields
.field private static final instance:Lio/sentry/NoOpCompositePerformanceCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lio/sentry/NoOpCompositePerformanceCollector;

    invoke-direct {v0}, Lio/sentry/NoOpCompositePerformanceCollector;-><init>()V

    sput-object v0, Lio/sentry/NoOpCompositePerformanceCollector;->instance:Lio/sentry/NoOpCompositePerformanceCollector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpCompositePerformanceCollector;
    .locals 1

    .line 15
    sget-object v0, Lio/sentry/NoOpCompositePerformanceCollector;->instance:Lio/sentry/NoOpCompositePerformanceCollector;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 43
    return-void
.end method

.method public onSpanFinished(Lio/sentry/ISpan;)V
    .locals 0
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 30
    return-void
.end method

.method public onSpanStarted(Lio/sentry/ISpan;)V
    .locals 0
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 27
    return-void
.end method

.method public start(Lio/sentry/ITransaction;)V
    .locals 0
    .param p1, "transaction"    # Lio/sentry/ITransaction;

    .line 21
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 24
    return-void
.end method

.method public stop(Lio/sentry/ITransaction;)Ljava/util/List;
    .locals 1
    .param p1, "transaction"    # Lio/sentry/ITransaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ITransaction;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;"
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public stop(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;"
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method
