.class public final Lio/sentry/NoOpReplayController;
.super Ljava/lang/Object;
.source "NoOpReplayController.java"

# interfaces
.implements Lio/sentry/ReplayController;


# static fields
.field private static final instance:Lio/sentry/NoOpReplayController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lio/sentry/NoOpReplayController;

    invoke-direct {v0}, Lio/sentry/NoOpReplayController;-><init>()V

    sput-object v0, Lio/sentry/NoOpReplayController;->instance:Lio/sentry/NoOpReplayController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpReplayController;
    .locals 1

    .line 14
    sget-object v0, Lio/sentry/NoOpReplayController;->instance:Lio/sentry/NoOpReplayController;

    return-object v0
.end method


# virtual methods
.method public captureReplay(Ljava/lang/Boolean;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "isTerminating"    # Ljava/lang/Boolean;

    .line 53
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public disableDebugMaskingOverlay()V
    .locals 0

    .line 78
    return-void
.end method

.method public enableDebugMaskingOverlay()V
    .locals 0

    .line 75
    return-void
.end method

.method public flush()V
    .locals 0

    .line 35
    return-void
.end method

.method public getBreadcrumbConverter()Lio/sentry/ReplayBreadcrumbConverter;
    .locals 1

    .line 66
    invoke-static {}, Lio/sentry/NoOpReplayBreadcrumbConverter;->getInstance()Lio/sentry/NoOpReplayBreadcrumbConverter;

    move-result-object v0

    return-object v0
.end method

.method public getReplayId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 58
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public isDebugMaskingOverlayEnabled()Z
    .locals 1

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public onAppBackgrounded()V
    .locals 0

    .line 41
    return-void
.end method

.method public onAppForegrounded(Z)V
    .locals 0
    .param p1, "startNewReplay"    # Z

    .line 38
    return-void
.end method

.method public onAppSessionEnded()V
    .locals 0

    .line 44
    return-void
.end method

.method public pause()V
    .locals 0

    .line 29
    return-void
.end method

.method public registerSegmentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "segmentName"    # Ljava/lang/String;

    .line 84
    return-void
.end method

.method public registerTraceId(Lio/sentry/protocol/SentryId;)V
    .locals 0
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;

    .line 81
    return-void
.end method

.method public resume()V
    .locals 0

    .line 32
    return-void
.end method

.method public setBreadcrumbConverter(Lio/sentry/ReplayBreadcrumbConverter;)V
    .locals 0
    .param p1, "converter"    # Lio/sentry/ReplayBreadcrumbConverter;

    .line 62
    return-void
.end method

.method public start()V
    .locals 0

    .line 20
    return-void
.end method

.method public startBuffering()V
    .locals 0

    .line 23
    return-void
.end method

.method public stop()V
    .locals 0

    .line 26
    return-void
.end method
