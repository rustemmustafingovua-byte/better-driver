.class interface abstract Lio/sentry/android/core/ApplicationExitInfoEventProcessor$HintEnricher;
.super Ljava/lang/Object;
.source "ApplicationExitInfoEventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/ApplicationExitInfoEventProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "HintEnricher"
.end annotation


# virtual methods
.method public abstract applyPostEnrichment(Lio/sentry/SentryEvent;Lio/sentry/hints/Backfillable;Ljava/lang/Object;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V
.end method

.method public abstract applyPreEnrichment(Lio/sentry/SentryEvent;Lio/sentry/hints/Backfillable;Ljava/lang/Object;)V
.end method

.method public abstract supports(Ljava/lang/Object;)Z
.end method
