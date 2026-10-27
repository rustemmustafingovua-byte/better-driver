.class public interface abstract Lio/sentry/cache/IEnvelopeCache;
.super Ljava/lang/Object;
.source "IEnvelopeCache.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lio/sentry/SentryEnvelope;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract discard(Lio/sentry/SentryEnvelope;)V
.end method

.method public store(Lio/sentry/SentryEnvelope;)V
    .locals 1
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    invoke-interface {p0, p1, v0}, Lio/sentry/cache/IEnvelopeCache;->storeEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Z

    .line 20
    return-void
.end method

.method public abstract store(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public storeEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Z
    .locals 1
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 13
    invoke-interface {p0, p1, p2}, Lio/sentry/cache/IEnvelopeCache;->store(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V

    .line 14
    const/4 v0, 0x1

    return v0
.end method
