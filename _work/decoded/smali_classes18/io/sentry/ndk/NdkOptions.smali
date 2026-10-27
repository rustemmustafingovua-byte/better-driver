.class public final Lio/sentry/ndk/NdkOptions;
.super Ljava/lang/Object;
.source "NdkOptions.java"


# instance fields
.field private appHangTimeoutMillis:J

.field private final dist:Ljava/lang/String;

.field private final dsn:Ljava/lang/String;

.field private enableAppHangTracking:Z

.field private final environment:Ljava/lang/String;

.field private final isDebug:Z

.field private final maxBreadcrumbs:I

.field private ndkHandlerStrategy:Lio/sentry/ndk/NdkHandlerStrategy;

.field private final outboxPath:Ljava/lang/String;

.field private final release:Ljava/lang/String;

.field private final sdkName:Ljava/lang/String;

.field private tracesSampleRate:F


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "dsn"    # Ljava/lang/String;
    .param p2, "isDebug"    # Z
    .param p3, "outboxPath"    # Ljava/lang/String;
    .param p4, "release"    # Ljava/lang/String;
    .param p5, "environment"    # Ljava/lang/String;
    .param p6, "dist"    # Ljava/lang/String;
    .param p7, "maxBreadcrumbs"    # I
    .param p8, "sdkName"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lio/sentry/ndk/NdkHandlerStrategy;->SENTRY_HANDLER_STRATEGY_DEFAULT:Lio/sentry/ndk/NdkHandlerStrategy;

    iput-object v0, p0, Lio/sentry/ndk/NdkOptions;->ndkHandlerStrategy:Lio/sentry/ndk/NdkHandlerStrategy;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/ndk/NdkOptions;->tracesSampleRate:F

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/ndk/NdkOptions;->enableAppHangTracking:Z

    .line 19
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lio/sentry/ndk/NdkOptions;->appHangTimeoutMillis:J

    .line 30
    iput-object p1, p0, Lio/sentry/ndk/NdkOptions;->dsn:Ljava/lang/String;

    .line 31
    iput-boolean p2, p0, Lio/sentry/ndk/NdkOptions;->isDebug:Z

    .line 32
    iput-object p3, p0, Lio/sentry/ndk/NdkOptions;->outboxPath:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lio/sentry/ndk/NdkOptions;->release:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lio/sentry/ndk/NdkOptions;->environment:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lio/sentry/ndk/NdkOptions;->dist:Ljava/lang/String;

    .line 36
    iput p7, p0, Lio/sentry/ndk/NdkOptions;->maxBreadcrumbs:I

    .line 37
    iput-object p8, p0, Lio/sentry/ndk/NdkOptions;->sdkName:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getAppHangTimeoutMillis()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lio/sentry/ndk/NdkOptions;->appHangTimeoutMillis:J

    return-wide v0
.end method

.method public getDist()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lio/sentry/ndk/NdkOptions;->dist:Ljava/lang/String;

    return-object v0
.end method

.method public getDsn()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/sentry/ndk/NdkOptions;->dsn:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/sentry/ndk/NdkOptions;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxBreadcrumbs()I
    .locals 1

    .line 70
    iget v0, p0, Lio/sentry/ndk/NdkOptions;->maxBreadcrumbs:I

    return v0
.end method

.method public getNdkHandlerStrategy()I
    .locals 1

    .line 83
    iget-object v0, p0, Lio/sentry/ndk/NdkOptions;->ndkHandlerStrategy:Lio/sentry/ndk/NdkHandlerStrategy;

    invoke-virtual {v0}, Lio/sentry/ndk/NdkHandlerStrategy;->getValue()I

    move-result v0

    return v0
.end method

.method public getOutboxPath()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/sentry/ndk/NdkOptions;->outboxPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/sentry/ndk/NdkOptions;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lio/sentry/ndk/NdkOptions;->sdkName:Ljava/lang/String;

    return-object v0
.end method

.method public getTracesSampleRate()F
    .locals 1

    .line 91
    iget v0, p0, Lio/sentry/ndk/NdkOptions;->tracesSampleRate:F

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lio/sentry/ndk/NdkOptions;->isDebug:Z

    return v0
.end method

.method public isEnableAppHangTracking()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lio/sentry/ndk/NdkOptions;->enableAppHangTracking:Z

    return v0
.end method

.method public setAppHangTimeoutMillis(J)V
    .locals 0
    .param p1, "appHangTimeoutMillis"    # J

    .line 103
    iput-wide p1, p0, Lio/sentry/ndk/NdkOptions;->appHangTimeoutMillis:J

    .line 104
    return-void
.end method

.method public setEnableAppHangTracking(Z)V
    .locals 0
    .param p1, "enableAppHangTracking"    # Z

    .line 95
    iput-boolean p1, p0, Lio/sentry/ndk/NdkOptions;->enableAppHangTracking:Z

    .line 96
    return-void
.end method

.method public setNdkHandlerStrategy(Lio/sentry/ndk/NdkHandlerStrategy;)V
    .locals 0
    .param p1, "ndkHandlerStrategy"    # Lio/sentry/ndk/NdkHandlerStrategy;

    .line 79
    iput-object p1, p0, Lio/sentry/ndk/NdkOptions;->ndkHandlerStrategy:Lio/sentry/ndk/NdkHandlerStrategy;

    .line 80
    return-void
.end method

.method public setTracesSampleRate(F)V
    .locals 0
    .param p1, "tracesSampleRate"    # F

    .line 87
    iput p1, p0, Lio/sentry/ndk/NdkOptions;->tracesSampleRate:F

    .line 88
    return-void
.end method
