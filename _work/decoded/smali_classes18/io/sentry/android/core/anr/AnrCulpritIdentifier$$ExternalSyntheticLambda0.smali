.class public final synthetic Lio/sentry/android/core/anr/AnrCulpritIdentifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lio/sentry/android/core/anr/AggregatedStackTrace;

    check-cast p2, Lio/sentry/android/core/anr/AggregatedStackTrace;

    invoke-static {p1, p2}, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->lambda$identify$0(Lio/sentry/android/core/anr/AggregatedStackTrace;Lio/sentry/android/core/anr/AggregatedStackTrace;)I

    move-result p1

    return p1
.end method
