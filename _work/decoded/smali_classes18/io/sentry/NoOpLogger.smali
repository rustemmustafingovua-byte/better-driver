.class public final Lio/sentry/NoOpLogger;
.super Ljava/lang/Object;
.source "NoOpLogger.java"

# interfaces
.implements Lio/sentry/ILogger;


# static fields
.field private static final instance:Lio/sentry/NoOpLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lio/sentry/NoOpLogger;

    invoke-direct {v0}, Lio/sentry/NoOpLogger;-><init>()V

    sput-object v0, Lio/sentry/NoOpLogger;->instance:Lio/sentry/NoOpLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpLogger;
    .locals 1

    .line 14
    sget-object v0, Lio/sentry/NoOpLogger;->instance:Lio/sentry/NoOpLogger;

    return-object v0
.end method


# virtual methods
.method public isEnabled(Lio/sentry/SentryLevel;)Z
    .locals 1
    .param p1, "level"    # Lio/sentry/SentryLevel;

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "level"    # Lio/sentry/SentryLevel;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 24
    return-void
.end method

.method public varargs log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "level"    # Lio/sentry/SentryLevel;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public varargs log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "level"    # Lio/sentry/SentryLevel;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 31
    return-void
.end method
