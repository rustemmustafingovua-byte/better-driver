.class public final synthetic Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;

.field public final synthetic f$1:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;

    iput-object p2, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$$ExternalSyntheticLambda0;->f$1:Lio/sentry/android/core/SentryAndroidOptions;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;

    iget-object v1, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$$ExternalSyntheticLambda0;->f$1:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0, v1, p1}, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;->lambda$handle$0$io-sentry-android-core-cache-AndroidEnvelopeCache$TimestampMarkerHandler(Lio/sentry/android/core/SentryAndroidOptions;Ljava/lang/Object;)V

    return-void
.end method
