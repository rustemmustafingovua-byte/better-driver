.class public final Lio/sentry/NoopVersionDetector;
.super Ljava/lang/Object;
.source "NoopVersionDetector.java"

# interfaces
.implements Lio/sentry/IVersionDetector;


# static fields
.field private static final instance:Lio/sentry/NoopVersionDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lio/sentry/NoopVersionDetector;

    invoke-direct {v0}, Lio/sentry/NoopVersionDetector;-><init>()V

    sput-object v0, Lio/sentry/NoopVersionDetector;->instance:Lio/sentry/NoopVersionDetector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoopVersionDetector;
    .locals 1

    .line 13
    sget-object v0, Lio/sentry/NoopVersionDetector;->instance:Lio/sentry/NoopVersionDetector;

    return-object v0
.end method


# virtual methods
.method public checkForMixedVersions()Z
    .locals 1

    .line 18
    const/4 v0, 0x0

    return v0
.end method
