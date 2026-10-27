.class public final Lio/sentry/android/core/internal/time/AndroidMonotonicTicker;
.super Ljava/lang/Object;
.source "AndroidMonotonicTicker.java"

# interfaces
.implements Lio/sentry/time/MonotonicTicker;


# static fields
.field private static final instance:Lio/sentry/android/core/internal/time/AndroidMonotonicTicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lio/sentry/android/core/internal/time/AndroidMonotonicTicker;

    invoke-direct {v0}, Lio/sentry/android/core/internal/time/AndroidMonotonicTicker;-><init>()V

    sput-object v0, Lio/sentry/android/core/internal/time/AndroidMonotonicTicker;->instance:Lio/sentry/android/core/internal/time/AndroidMonotonicTicker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/time/MonotonicTicker;
    .locals 1

    .line 20
    sget-object v0, Lio/sentry/android/core/internal/time/AndroidMonotonicTicker;->instance:Lio/sentry/android/core/internal/time/AndroidMonotonicTicker;

    return-object v0
.end method


# virtual methods
.method public tickNanos()J
    .locals 2

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method
