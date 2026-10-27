.class public final synthetic Lio/sentry/android/core/cache/AndroidEnvelopeCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extract(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 0

    .line 0
    check-cast p1, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;

    invoke-static {p1}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->lambda$static$1(Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
