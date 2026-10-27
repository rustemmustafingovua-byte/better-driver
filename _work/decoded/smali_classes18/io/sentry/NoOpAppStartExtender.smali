.class public final Lio/sentry/NoOpAppStartExtender;
.super Ljava/lang/Object;
.source "NoOpAppStartExtender.java"

# interfaces
.implements Lio/sentry/IAppStartExtender;


# static fields
.field private static final instance:Lio/sentry/NoOpAppStartExtender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lio/sentry/NoOpAppStartExtender;

    invoke-direct {v0}, Lio/sentry/NoOpAppStartExtender;-><init>()V

    sput-object v0, Lio/sentry/NoOpAppStartExtender;->instance:Lio/sentry/NoOpAppStartExtender;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpAppStartExtender;
    .locals 1

    .line 15
    sget-object v0, Lio/sentry/NoOpAppStartExtender;->instance:Lio/sentry/NoOpAppStartExtender;

    return-object v0
.end method


# virtual methods
.method public extendAppStart()V
    .locals 0

    .line 19
    return-void
.end method

.method public finishExtendedAppStart()V
    .locals 0

    .line 22
    return-void
.end method

.method public getExtendedAppStartSpan()Lio/sentry/ISpan;
    .locals 1

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method
