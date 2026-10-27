.class public final Lio/sentry/android/core/SentryScreenshotOptions;
.super Lio/sentry/SentryMaskingOptions;
.source "SentryScreenshotOptions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lio/sentry/SentryMaskingOptions;-><init>()V

    .line 21
    return-void
.end method

.method private addSensitiveViewClasses()V
    .locals 1

    .line 45
    const-string v0, "android.webkit.WebView"

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryScreenshotOptions;->addMaskViewClass(Ljava/lang/String;)V

    .line 46
    const-string v0, "android.widget.VideoView"

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryScreenshotOptions;->addMaskViewClass(Ljava/lang/String;)V

    .line 47
    const-string v0, "androidx.camera.view.PreviewView"

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryScreenshotOptions;->addMaskViewClass(Ljava/lang/String;)V

    .line 48
    const-string v0, "androidx.media3.ui.PlayerView"

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryScreenshotOptions;->addMaskViewClass(Ljava/lang/String;)V

    .line 49
    const-string v0, "com.google.android.exoplayer2.ui.PlayerView"

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryScreenshotOptions;->addMaskViewClass(Ljava/lang/String;)V

    .line 50
    const-string v0, "com.google.android.exoplayer2.ui.StyledPlayerView"

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryScreenshotOptions;->addMaskViewClass(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private removeSensitiveViewClasses()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lio/sentry/android/core/SentryScreenshotOptions;->getMaskViewClasses()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.webkit.WebView"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p0}, Lio/sentry/android/core/SentryScreenshotOptions;->getMaskViewClasses()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.widget.VideoView"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p0}, Lio/sentry/android/core/SentryScreenshotOptions;->getMaskViewClasses()Ljava/util/Set;

    move-result-object v0

    const-string v1, "androidx.camera.view.PreviewView"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0}, Lio/sentry/android/core/SentryScreenshotOptions;->getMaskViewClasses()Ljava/util/Set;

    move-result-object v0

    const-string v1, "androidx.media3.ui.PlayerView"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p0}, Lio/sentry/android/core/SentryScreenshotOptions;->getMaskViewClasses()Ljava/util/Set;

    move-result-object v0

    const-string v1, "com.google.android.exoplayer2.ui.PlayerView"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p0}, Lio/sentry/android/core/SentryScreenshotOptions;->getMaskViewClasses()Ljava/util/Set;

    move-result-object v0

    const-string v1, "com.google.android.exoplayer2.ui.StyledPlayerView"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method


# virtual methods
.method public setMaskAllImages(Z)V
    .locals 0
    .param p1, "maskAllImages"    # Z

    .line 36
    invoke-super {p0, p1}, Lio/sentry/SentryMaskingOptions;->setMaskAllImages(Z)V

    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-direct {p0}, Lio/sentry/android/core/SentryScreenshotOptions;->addSensitiveViewClasses()V

    goto :goto_0

    .line 40
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/SentryScreenshotOptions;->removeSensitiveViewClasses()V

    .line 42
    :goto_0
    return-void
.end method

.method public trackCustomMasking()V
    .locals 0

    .line 26
    return-void
.end method
