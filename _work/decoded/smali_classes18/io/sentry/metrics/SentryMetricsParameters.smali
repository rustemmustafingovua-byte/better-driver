.class public final Lio/sentry/metrics/SentryMetricsParameters;
.super Ljava/lang/Object;
.source "SentryMetricsParameters.java"


# instance fields
.field private attributes:Lio/sentry/SentryAttributes;

.field private hint:Lio/sentry/Hint;

.field private origin:Ljava/lang/String;

.field private timestamp:Lio/sentry/SentryDate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "manual"

    iput-object v0, p0, Lio/sentry/metrics/SentryMetricsParameters;->origin:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/metrics/SentryMetricsParameters;->hint:Lio/sentry/Hint;

    return-void
.end method

.method public static create(Lio/sentry/SentryAttributes;)Lio/sentry/metrics/SentryMetricsParameters;
    .locals 1
    .param p0, "attributes"    # Lio/sentry/SentryAttributes;

    .line 62
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lio/sentry/metrics/SentryMetricsParameters;->create(Lio/sentry/SentryDate;Lio/sentry/SentryAttributes;)Lio/sentry/metrics/SentryMetricsParameters;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lio/sentry/SentryDate;Lio/sentry/SentryAttributes;)Lio/sentry/metrics/SentryMetricsParameters;
    .locals 1
    .param p0, "timestamp"    # Lio/sentry/SentryDate;
    .param p1, "attributes"    # Lio/sentry/SentryAttributes;

    .line 52
    new-instance v0, Lio/sentry/metrics/SentryMetricsParameters;

    invoke-direct {v0}, Lio/sentry/metrics/SentryMetricsParameters;-><init>()V

    .line 54
    .local v0, "params":Lio/sentry/metrics/SentryMetricsParameters;
    invoke-virtual {v0, p0}, Lio/sentry/metrics/SentryMetricsParameters;->setTimestamp(Lio/sentry/SentryDate;)V

    .line 55
    invoke-virtual {v0, p1}, Lio/sentry/metrics/SentryMetricsParameters;->setAttributes(Lio/sentry/SentryAttributes;)V

    .line 57
    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lio/sentry/metrics/SentryMetricsParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/sentry/metrics/SentryMetricsParameters;"
        }
    .end annotation

    .line 73
    .local p0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {p0}, Lio/sentry/SentryAttributes;->fromMap(Ljava/util/Map;)Lio/sentry/SentryAttributes;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/metrics/SentryMetricsParameters;->create(Lio/sentry/SentryDate;Lio/sentry/SentryAttributes;)Lio/sentry/metrics/SentryMetricsParameters;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAttributes()Lio/sentry/SentryAttributes;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/sentry/metrics/SentryMetricsParameters;->attributes:Lio/sentry/SentryAttributes;

    return-object v0
.end method

.method public getHint()Lio/sentry/Hint;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/sentry/metrics/SentryMetricsParameters;->hint:Lio/sentry/Hint;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/sentry/metrics/SentryMetricsParameters;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Lio/sentry/SentryDate;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/sentry/metrics/SentryMetricsParameters;->timestamp:Lio/sentry/SentryDate;

    return-object v0
.end method

.method public setAttributes(Lio/sentry/SentryAttributes;)V
    .locals 0
    .param p1, "attributes"    # Lio/sentry/SentryAttributes;

    .line 31
    iput-object p1, p0, Lio/sentry/metrics/SentryMetricsParameters;->attributes:Lio/sentry/SentryAttributes;

    .line 32
    return-void
.end method

.method public setHint(Lio/sentry/Hint;)V
    .locals 0
    .param p1, "hint"    # Lio/sentry/Hint;

    .line 47
    iput-object p1, p0, Lio/sentry/metrics/SentryMetricsParameters;->hint:Lio/sentry/Hint;

    .line 48
    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lio/sentry/metrics/SentryMetricsParameters;->origin:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setTimestamp(Lio/sentry/SentryDate;)V
    .locals 0
    .param p1, "timestamp"    # Lio/sentry/SentryDate;

    .line 23
    iput-object p1, p0, Lio/sentry/metrics/SentryMetricsParameters;->timestamp:Lio/sentry/SentryDate;

    .line 24
    return-void
.end method
