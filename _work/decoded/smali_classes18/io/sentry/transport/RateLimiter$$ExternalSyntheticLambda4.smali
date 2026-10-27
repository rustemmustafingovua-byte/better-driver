.class public final synthetic Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/time/MonotonicTicker;


# instance fields
.field public final synthetic f$0:Lio/sentry/transport/ICurrentDateProvider;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/transport/ICurrentDateProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda4;->f$0:Lio/sentry/transport/ICurrentDateProvider;

    return-void
.end method


# virtual methods
.method public final tickNanos()J
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda4;->f$0:Lio/sentry/transport/ICurrentDateProvider;

    invoke-static {v0}, Lio/sentry/transport/RateLimiter;->lambda$new$0(Lio/sentry/transport/ICurrentDateProvider;)J

    move-result-wide v0

    return-wide v0
.end method
