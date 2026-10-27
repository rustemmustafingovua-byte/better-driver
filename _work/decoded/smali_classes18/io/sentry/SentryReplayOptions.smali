.class public final Lio/sentry/SentryReplayOptions;
.super Lio/sentry/SentryMaskingOptions;
.source "SentryReplayOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryReplayOptions$SentryReplayQuality;,
        Lio/sentry/SentryReplayOptions$BeforeErrorSamplingCallback;,
        Lio/sentry/SentryReplayOptions$ReplayFrameObserver;
    }
.end annotation


# static fields
.field private static final CUSTOM_MASKING_INTEGRATION_NAME:Ljava/lang/String; = "ReplayCustomMasking"

.field private static final DEFAULT_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_NETWORK_BODY_SIZE:I = 0x25800


# instance fields
.field private beforeErrorSampling:Lio/sentry/SentryReplayOptions$BeforeErrorSamplingCallback;

.field private captureSurfaceViews:Z

.field private volatile customMaskingTracked:Z

.field private debug:Z

.field private errorReplayDuration:J

.field private frameObserver:Lio/sentry/SentryReplayOptions$ReplayFrameObserver;

.field private frameRate:I

.field private networkCaptureBodies:Z

.field private networkDetailAllowUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private networkDetailDenyUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private networkRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private networkResponseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onErrorSampleRate:Ljava/lang/Double;

.field private quality:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

.field private screenshotStrategy:Lio/sentry/ScreenshotStrategyType;

.field private sdkVersion:Lio/sentry/protocol/SdkVersion;

.field private sessionDuration:J

.field private sessionSampleRate:Ljava/lang/Double;

.field private sessionSegmentDuration:J

.field private trackConfiguration:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 211
    const-string v0, "Content-Length"

    const-string v1, "Accept"

    const-string v2, "Content-Type"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/sentry/SentryReplayOptions;->DEFAULT_HEADERS:Ljava/util/List;

    .line 211
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Lio/sentry/protocol/SdkVersion;)V
    .locals 1
    .param p1, "sessionSampleRate"    # Ljava/lang/Double;
    .param p2, "onErrorSampleRate"    # Ljava/lang/Double;
    .param p3, "sdkVersion"    # Lio/sentry/protocol/SdkVersion;

    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lio/sentry/SentryReplayOptions;-><init>(ZLio/sentry/protocol/SdkVersion;)V

    .line 264
    iput-object p1, p0, Lio/sentry/SentryReplayOptions;->sessionSampleRate:Ljava/lang/Double;

    .line 265
    iput-object p2, p0, Lio/sentry/SentryReplayOptions;->onErrorSampleRate:Ljava/lang/Double;

    .line 266
    iput-object p3, p0, Lio/sentry/SentryReplayOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    .line 267
    return-void
.end method

.method public constructor <init>(ZLio/sentry/protocol/SdkVersion;)V
    .locals 4
    .param p1, "empty"    # Z
    .param p2, "sdkVersion"    # Lio/sentry/protocol/SdkVersion;

    .line 244
    invoke-direct {p0}, Lio/sentry/SentryMaskingOptions;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/SentryReplayOptions;->customMaskingTracked:Z

    .line 129
    sget-object v1, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->MEDIUM:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    iput-object v1, p0, Lio/sentry/SentryReplayOptions;->quality:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    .line 135
    const/4 v1, 0x1

    iput v1, p0, Lio/sentry/SentryReplayOptions;->frameRate:I

    .line 138
    const-wide/16 v2, 0x7530

    iput-wide v2, p0, Lio/sentry/SentryReplayOptions;->errorReplayDuration:J

    .line 141
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lio/sentry/SentryReplayOptions;->sessionSegmentDuration:J

    .line 144
    const-wide/32 v2, 0x36ee80

    iput-wide v2, p0, Lio/sentry/SentryReplayOptions;->sessionDuration:J

    .line 153
    iput-boolean v1, p0, Lio/sentry/SentryReplayOptions;->trackConfiguration:Z

    .line 165
    iput-boolean v0, p0, Lio/sentry/SentryReplayOptions;->debug:Z

    .line 174
    sget-object v2, Lio/sentry/ScreenshotStrategyType;->PIXEL_COPY:Lio/sentry/ScreenshotStrategyType;

    iput-object v2, p0, Lio/sentry/SentryReplayOptions;->screenshotStrategy:Lio/sentry/ScreenshotStrategyType;

    .line 189
    iput-boolean v0, p0, Lio/sentry/SentryReplayOptions;->captureSurfaceViews:Z

    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryReplayOptions;->networkDetailAllowUrls:Ljava/util/List;

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryReplayOptions;->networkDetailDenyUrls:Ljava/util/List;

    .line 208
    iput-boolean v1, p0, Lio/sentry/SentryReplayOptions;->networkCaptureBodies:Z

    .line 228
    sget-object v0, Lio/sentry/SentryReplayOptions;->DEFAULT_HEADERS:Ljava/util/List;

    iput-object v0, p0, Lio/sentry/SentryReplayOptions;->networkRequestHeaders:Ljava/util/List;

    .line 234
    sget-object v0, Lio/sentry/SentryReplayOptions;->DEFAULT_HEADERS:Ljava/util/List;

    iput-object v0, p0, Lio/sentry/SentryReplayOptions;->networkResponseHeaders:Ljava/util/List;

    .line 245
    if-nez p1, :cond_0

    .line 247
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    const-string v1, "android.widget.TextView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    const-string v1, "android.widget.ImageView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    const-string v1, "android.webkit.WebView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    const-string v1, "android.widget.VideoView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    const-string v1, "androidx.camera.view.PreviewView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    const-string v1, "androidx.media3.ui.PlayerView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    const-string v1, "com.google.android.exoplayer2.ui.PlayerView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    const-string v1, "com.google.android.exoplayer2.ui.StyledPlayerView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    iput-object p2, p0, Lio/sentry/SentryReplayOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    .line 257
    :cond_0
    return-void
.end method

.method public static getNetworkDetailsDefaultHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    sget-object v0, Lio/sentry/SentryReplayOptions;->DEFAULT_HEADERS:Ljava/util/List;

    return-object v0
.end method

.method private static mergeHeaders(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 556
    .local p0, "defaultHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "additionalHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 557
    .local v0, "merged":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 558
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 559
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addMaskViewClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .line 325
    invoke-virtual {p0}, Lio/sentry/SentryReplayOptions;->trackCustomMasking()V

    .line 326
    invoke-super {p0, p1}, Lio/sentry/SentryMaskingOptions;->addMaskViewClass(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public addUnmaskViewClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .line 331
    invoke-virtual {p0}, Lio/sentry/SentryReplayOptions;->trackCustomMasking()V

    .line 332
    invoke-super {p0, p1}, Lio/sentry/SentryMaskingOptions;->addUnmaskViewClass(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public getBeforeErrorSampling()Lio/sentry/SentryReplayOptions$BeforeErrorSamplingCallback;
    .locals 1

    .line 568
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->beforeErrorSampling:Lio/sentry/SentryReplayOptions$BeforeErrorSamplingCallback;

    return-object v0
.end method

.method public getErrorReplayDuration()J
    .locals 2

    .line 351
    iget-wide v0, p0, Lio/sentry/SentryReplayOptions;->errorReplayDuration:J

    return-wide v0
.end method

.method public getFrameObserver()Lio/sentry/SentryReplayOptions$ReplayFrameObserver;
    .locals 1

    .line 591
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->frameObserver:Lio/sentry/SentryReplayOptions$ReplayFrameObserver;

    return-object v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 346
    iget v0, p0, Lio/sentry/SentryReplayOptions;->frameRate:I

    return v0
.end method

.method public getNetworkDetailAllowUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->networkDetailAllowUrls:Ljava/util/List;

    return-object v0
.end method

.method public getNetworkDetailDenyUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->networkDetailDenyUrls:Ljava/util/List;

    return-object v0
.end method

.method public getNetworkRequestHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->networkRequestHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getNetworkResponseHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->networkResponseHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getOnErrorSampleRate()Ljava/lang/Double;
    .locals 1

    .line 271
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->onErrorSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getQuality()Lio/sentry/SentryReplayOptions$SentryReplayQuality;
    .locals 1

    .line 337
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->quality:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    return-object v0
.end method

.method public getScreenshotStrategy()Lio/sentry/ScreenshotStrategyType;
    .locals 1

    .line 417
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->screenshotStrategy:Lio/sentry/ScreenshotStrategyType;

    return-object v0
.end method

.method public getSdkVersion()Lio/sentry/protocol/SdkVersion;
    .locals 1

    .line 384
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    return-object v0
.end method

.method public getSessionDuration()J
    .locals 2

    .line 361
    iget-wide v0, p0, Lio/sentry/SentryReplayOptions;->sessionDuration:J

    return-wide v0
.end method

.method public getSessionSampleRate()Ljava/lang/Double;
    .locals 1

    .line 290
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->sessionSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getSessionSegmentDuration()J
    .locals 2

    .line 356
    iget-wide v0, p0, Lio/sentry/SentryReplayOptions;->sessionSegmentDuration:J

    return-wide v0
.end method

.method public isCaptureSurfaceViews()Z
    .locals 1

    .line 437
    iget-boolean v0, p0, Lio/sentry/SentryReplayOptions;->captureSurfaceViews:Z

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 398
    iget-boolean v0, p0, Lio/sentry/SentryReplayOptions;->debug:Z

    return v0
.end method

.method public isNetworkCaptureBodies()Z
    .locals 1

    .line 495
    iget-boolean v0, p0, Lio/sentry/SentryReplayOptions;->networkCaptureBodies:Z

    return v0
.end method

.method public isSessionReplayEnabled()Z
    .locals 4

    .line 275
    invoke-virtual {p0}, Lio/sentry/SentryReplayOptions;->getSessionSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/sentry/SentryReplayOptions;->getSessionSampleRate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSessionReplayForErrorsEnabled()Z
    .locals 4

    .line 294
    invoke-virtual {p0}, Lio/sentry/SentryReplayOptions;->getOnErrorSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/sentry/SentryReplayOptions;->getOnErrorSampleRate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTrackConfiguration()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lio/sentry/SentryReplayOptions;->trackConfiguration:Z

    return v0
.end method

.method public setBeforeErrorSampling(Lio/sentry/SentryReplayOptions$BeforeErrorSamplingCallback;)V
    .locals 0
    .param p1, "beforeErrorSampling"    # Lio/sentry/SentryReplayOptions$BeforeErrorSamplingCallback;

    .line 581
    iput-object p1, p0, Lio/sentry/SentryReplayOptions;->beforeErrorSampling:Lio/sentry/SentryReplayOptions$BeforeErrorSamplingCallback;

    .line 582
    return-void
.end method

.method public setCaptureSurfaceViews(Z)V
    .locals 0
    .param p1, "captureSurfaceViews"    # Z

    .line 447
    iput-boolean p1, p0, Lio/sentry/SentryReplayOptions;->captureSurfaceViews:Z

    .line 448
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .line 407
    iput-boolean p1, p0, Lio/sentry/SentryReplayOptions;->debug:Z

    .line 408
    return-void
.end method

.method public setFrameObserver(Lio/sentry/SentryReplayOptions$ReplayFrameObserver;)V
    .locals 0
    .param p1, "frameObserver"    # Lio/sentry/SentryReplayOptions$ReplayFrameObserver;

    .line 603
    iput-object p1, p0, Lio/sentry/SentryReplayOptions;->frameObserver:Lio/sentry/SentryReplayOptions$ReplayFrameObserver;

    .line 604
    return-void
.end method

.method public setMaskAllImages(Z)V
    .locals 0
    .param p1, "maskAllImages"    # Z

    .line 317
    if-nez p1, :cond_0

    .line 318
    invoke-virtual {p0}, Lio/sentry/SentryReplayOptions;->trackCustomMasking()V

    .line 320
    :cond_0
    invoke-super {p0, p1}, Lio/sentry/SentryMaskingOptions;->setMaskAllImages(Z)V

    .line 321
    return-void
.end method

.method public setMaskAllText(Z)V
    .locals 0
    .param p1, "maskAllText"    # Z

    .line 309
    if-nez p1, :cond_0

    .line 310
    invoke-virtual {p0}, Lio/sentry/SentryReplayOptions;->trackCustomMasking()V

    .line 312
    :cond_0
    invoke-super {p0, p1}, Lio/sentry/SentryMaskingOptions;->setMaskAllText(Z)V

    .line 313
    return-void
.end method

.method public setNetworkCaptureBodies(Z)V
    .locals 0
    .param p1, "networkCaptureBodies"    # Z

    .line 504
    iput-boolean p1, p0, Lio/sentry/SentryReplayOptions;->networkCaptureBodies:Z

    .line 505
    return-void
.end method

.method public setNetworkDetailAllowUrls(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 465
    .local p1, "networkDetailAllowUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 466
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryReplayOptions;->networkDetailAllowUrls:Ljava/util/List;

    .line 467
    return-void
.end method

.method public setNetworkDetailDenyUrls(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 485
    .local p1, "networkDetailDenyUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 486
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryReplayOptions;->networkDetailDenyUrls:Ljava/util/List;

    .line 487
    return-void
.end method

.method public setNetworkRequestHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 524
    .local p1, "networkRequestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lio/sentry/SentryReplayOptions;->DEFAULT_HEADERS:Ljava/util/List;

    invoke-static {v0, p1}, Lio/sentry/SentryReplayOptions;->mergeHeaders(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryReplayOptions;->networkRequestHeaders:Ljava/util/List;

    .line 525
    return-void
.end method

.method public setNetworkResponseHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 544
    .local p1, "networkResponseHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lio/sentry/SentryReplayOptions;->DEFAULT_HEADERS:Ljava/util/List;

    invoke-static {v0, p1}, Lio/sentry/SentryReplayOptions;->mergeHeaders(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryReplayOptions;->networkResponseHeaders:Ljava/util/List;

    .line 545
    return-void
.end method

.method public setOnErrorSampleRate(Ljava/lang/Double;)V
    .locals 3
    .param p1, "onErrorSampleRate"    # Ljava/lang/Double;

    .line 279
    invoke-static {p1}, Lio/sentry/util/SampleRateUtils;->isValidSampleRate(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iput-object p1, p0, Lio/sentry/SentryReplayOptions;->onErrorSampleRate:Ljava/lang/Double;

    .line 286
    return-void

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid. Use null to disable or values >= 0.0 and <= 1.0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQuality(Lio/sentry/SentryReplayOptions$SentryReplayQuality;)V
    .locals 0
    .param p1, "quality"    # Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    .line 341
    iput-object p1, p0, Lio/sentry/SentryReplayOptions;->quality:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    .line 342
    return-void
.end method

.method public setScreenshotStrategy(Lio/sentry/ScreenshotStrategyType;)V
    .locals 0
    .param p1, "screenshotStrategy"    # Lio/sentry/ScreenshotStrategyType;

    .line 427
    iput-object p1, p0, Lio/sentry/SentryReplayOptions;->screenshotStrategy:Lio/sentry/ScreenshotStrategyType;

    .line 428
    return-void
.end method

.method public setSdkVersion(Lio/sentry/protocol/SdkVersion;)V
    .locals 0
    .param p1, "sdkVersion"    # Lio/sentry/protocol/SdkVersion;

    .line 389
    iput-object p1, p0, Lio/sentry/SentryReplayOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    .line 390
    return-void
.end method

.method public setSessionSampleRate(Ljava/lang/Double;)V
    .locals 3
    .param p1, "sessionSampleRate"    # Ljava/lang/Double;

    .line 298
    invoke-static {p1}, Lio/sentry/util/SampleRateUtils;->isValidSampleRate(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iput-object p1, p0, Lio/sentry/SentryReplayOptions;->sessionSampleRate:Ljava/lang/Double;

    .line 305
    return-void

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid. Use null to disable or values >= 0.0 and <= 1.0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTrackConfiguration(Z)V
    .locals 0
    .param p1, "trackConfiguration"    # Z

    .line 379
    iput-boolean p1, p0, Lio/sentry/SentryReplayOptions;->trackConfiguration:Z

    .line 380
    return-void
.end method

.method public trackCustomMasking()V
    .locals 1

    .line 366
    iget-boolean v0, p0, Lio/sentry/SentryReplayOptions;->customMaskingTracked:Z

    if-nez v0, :cond_0

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/SentryReplayOptions;->customMaskingTracked:Z

    .line 368
    const-string v0, "ReplayCustomMasking"

    invoke-static {v0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 370
    :cond_0
    return-void
.end method
