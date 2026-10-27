.class public final Lio/sentry/time/JavaMonotonicTicker;
.super Ljava/lang/Object;
.source "JavaMonotonicTicker.java"

# interfaces
.implements Lio/sentry/time/MonotonicTicker;


# static fields
.field private static final instance:Lio/sentry/time/JavaMonotonicTicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lio/sentry/time/JavaMonotonicTicker;

    invoke-direct {v0}, Lio/sentry/time/JavaMonotonicTicker;-><init>()V

    sput-object v0, Lio/sentry/time/JavaMonotonicTicker;->instance:Lio/sentry/time/JavaMonotonicTicker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/time/MonotonicTicker;
    .locals 1

    .line 13
    sget-object v0, Lio/sentry/time/JavaMonotonicTicker;->instance:Lio/sentry/time/JavaMonotonicTicker;

    return-object v0
.end method


# virtual methods
.method public tickNanos()J
    .locals 2

    .line 20
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
