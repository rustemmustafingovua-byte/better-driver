.class public final Lio/sentry/time/SystemEpochClock;
.super Ljava/lang/Object;
.source "SystemEpochClock.java"

# interfaces
.implements Lio/sentry/time/EpochClock;


# static fields
.field private static final INSTANT_IS_SUB_MILLISECOND:Z

.field private static final instance:Lio/sentry/time/SystemEpochClock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/sentry/util/Platform;->isJavaNinePlus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lio/sentry/time/SystemEpochClock;->INSTANT_IS_SUB_MILLISECOND:Z

    .line 25
    new-instance v0, Lio/sentry/time/SystemEpochClock;

    invoke-direct {v0}, Lio/sentry/time/SystemEpochClock;-><init>()V

    sput-object v0, Lio/sentry/time/SystemEpochClock;->instance:Lio/sentry/time/SystemEpochClock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/time/EpochClock;
    .locals 1

    .line 28
    sget-object v0, Lio/sentry/time/SystemEpochClock;->instance:Lio/sentry/time/SystemEpochClock;

    return-object v0
.end method


# virtual methods
.method public now()Lio/sentry/time/Timestamp;
    .locals 2

    .line 36
    sget-boolean v0, Lio/sentry/time/SystemEpochClock;->INSTANT_IS_SUB_MILLISECOND:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lio/sentry/time/InstantEpochNanos;->read()J

    move-result-wide v0

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->millisToNanos(J)J

    move-result-wide v0

    .line 35
    :goto_0
    invoke-static {v0, v1}, Lio/sentry/time/Timestamp;->ofEpochNanos(J)Lio/sentry/time/Timestamp;

    move-result-object v0

    return-object v0
.end method
