.class public final Lio/sentry/SamplingContext;
.super Ljava/lang/Object;
.source "SamplingContext.java"


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final customSamplingContext:Lio/sentry/CustomSamplingContext;

.field private final sampleRand:Ljava/lang/Double;

.field private final transactionContext:Lio/sentry/TransactionContext;


# direct methods
.method public constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/CustomSamplingContext;)V
    .locals 2
    .param p1, "transactionContext"    # Lio/sentry/TransactionContext;
    .param p2, "customSamplingContext"    # Lio/sentry/CustomSamplingContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    invoke-static {}, Lio/sentry/util/SentryRandom;->current()Lio/sentry/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/util/Random;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/sentry/SamplingContext;-><init>(Lio/sentry/TransactionContext;Lio/sentry/CustomSamplingContext;Ljava/lang/Double;Ljava/util/Map;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/CustomSamplingContext;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 1
    .param p1, "transactionContext"    # Lio/sentry/TransactionContext;
    .param p2, "customSamplingContext"    # Lio/sentry/CustomSamplingContext;
    .param p3, "sampleRand"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/TransactionContext;",
            "Lio/sentry/CustomSamplingContext;",
            "Ljava/lang/Double;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p4, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    nop

    .line 39
    const-string v0, "transactionContexts is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/TransactionContext;

    iput-object v0, p0, Lio/sentry/SamplingContext;->transactionContext:Lio/sentry/TransactionContext;

    .line 40
    iput-object p2, p0, Lio/sentry/SamplingContext;->customSamplingContext:Lio/sentry/CustomSamplingContext;

    .line 41
    iput-object p3, p0, Lio/sentry/SamplingContext;->sampleRand:Ljava/lang/Double;

    .line 42
    if-nez p4, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p4

    :goto_0
    iput-object v0, p0, Lio/sentry/SamplingContext;->attributes:Ljava/util/Map;

    .line 43
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 58
    if-nez p1, :cond_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lio/sentry/SamplingContext;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCustomSamplingContext()Lio/sentry/CustomSamplingContext;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/sentry/SamplingContext;->customSamplingContext:Lio/sentry/CustomSamplingContext;

    return-object v0
.end method

.method public getSampleRand()Ljava/lang/Double;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/sentry/SamplingContext;->sampleRand:Ljava/lang/Double;

    return-object v0
.end method

.method public getTransactionContext()Lio/sentry/TransactionContext;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/sentry/SamplingContext;->transactionContext:Lio/sentry/TransactionContext;

    return-object v0
.end method
