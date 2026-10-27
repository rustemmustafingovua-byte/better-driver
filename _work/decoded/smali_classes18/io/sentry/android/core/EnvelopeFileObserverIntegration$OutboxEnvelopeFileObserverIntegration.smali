.class final Lio/sentry/android/core/EnvelopeFileObserverIntegration$OutboxEnvelopeFileObserverIntegration;
.super Lio/sentry/android/core/EnvelopeFileObserverIntegration;
.source "EnvelopeFileObserverIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/EnvelopeFileObserverIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OutboxEnvelopeFileObserverIntegration"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lio/sentry/android/core/EnvelopeFileObserverIntegration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/android/core/EnvelopeFileObserverIntegration$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/android/core/EnvelopeFileObserverIntegration$1;

    .line 119
    invoke-direct {p0}, Lio/sentry/android/core/EnvelopeFileObserverIntegration$OutboxEnvelopeFileObserverIntegration;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPath(Lio/sentry/SentryOptions;)Ljava/lang/String;
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 124
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
