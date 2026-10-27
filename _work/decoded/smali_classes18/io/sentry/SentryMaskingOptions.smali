.class public abstract Lio/sentry/SentryMaskingOptions;
.super Ljava/lang/Object;
.source "SentryMaskingOptions.java"


# static fields
.field public static final ANDROIDX_MEDIA_VIEW_CLASS_NAME:Ljava/lang/String; = "androidx.media3.ui.PlayerView"

.field public static final CAMERAX_PREVIEW_VIEW_CLASS_NAME:Ljava/lang/String; = "androidx.camera.view.PreviewView"

.field public static final EXOPLAYER_CLASS_NAME:Ljava/lang/String; = "com.google.android.exoplayer2.ui.PlayerView"

.field public static final EXOPLAYER_STYLED_CLASS_NAME:Ljava/lang/String; = "com.google.android.exoplayer2.ui.StyledPlayerView"

.field public static final IMAGE_VIEW_CLASS_NAME:Ljava/lang/String; = "android.widget.ImageView"

.field public static final TEXT_VIEW_CLASS_NAME:Ljava/lang/String; = "android.widget.TextView"

.field public static final VIDEO_VIEW_CLASS_NAME:Ljava/lang/String; = "android.widget.VideoView"

.field public static final WEB_VIEW_CLASS_NAME:Ljava/lang/String; = "android.webkit.WebView"


# instance fields
.field protected maskViewClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected maskViewContainerClass:Ljava/lang/String;

.field protected unmaskViewClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected unmaskViewContainerClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryMaskingOptions;->maskViewClasses:Ljava/util/Set;

    .line 47
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryMaskingOptions;->unmaskViewClasses:Ljava/util/Set;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/SentryMaskingOptions;->maskViewContainerClass:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lio/sentry/SentryMaskingOptions;->unmaskViewContainerClass:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addMaskViewClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lio/sentry/SentryMaskingOptions;->maskViewClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lio/sentry/SentryMaskingOptions;->unmaskViewClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public addUnmaskViewClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lio/sentry/SentryMaskingOptions;->unmaskViewClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lio/sentry/SentryMaskingOptions;->maskViewClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public getMaskViewClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lio/sentry/SentryMaskingOptions;->maskViewClasses:Ljava/util/Set;

    return-object v0
.end method

.method public getMaskViewContainerClass()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lio/sentry/SentryMaskingOptions;->maskViewContainerClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUnmaskViewClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lio/sentry/SentryMaskingOptions;->unmaskViewClasses:Ljava/util/Set;

    return-object v0
.end method

.method public getUnmaskViewContainerClass()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lio/sentry/SentryMaskingOptions;->unmaskViewContainerClass:Ljava/lang/String;

    return-object v0
.end method

.method public setMaskAllImages(Z)V
    .locals 2
    .param p1, "maskAllImages"    # Z

    .line 80
    const-string v0, "android.widget.ImageView"

    if-eqz p1, :cond_0

    .line 81
    iget-object v1, p0, Lio/sentry/SentryMaskingOptions;->maskViewClasses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lio/sentry/SentryMaskingOptions;->unmaskViewClasses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_0
    iget-object v1, p0, Lio/sentry/SentryMaskingOptions;->unmaskViewClasses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, p0, Lio/sentry/SentryMaskingOptions;->maskViewClasses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 87
    :goto_0
    return-void
.end method

.method public setMaskAllText(Z)V
    .locals 2
    .param p1, "maskAllText"    # Z

    .line 62
    const-string v0, "android.widget.TextView"

    if-eqz p1, :cond_0

    .line 63
    iget-object v1, p0, Lio/sentry/SentryMaskingOptions;->maskViewClasses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lio/sentry/SentryMaskingOptions;->unmaskViewClasses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lio/sentry/SentryMaskingOptions;->unmaskViewClasses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, p0, Lio/sentry/SentryMaskingOptions;->maskViewClasses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 69
    :goto_0
    return-void
.end method

.method public setMaskViewContainerClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "containerClass"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lio/sentry/SentryMaskingOptions;->maskViewClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    iput-object p1, p0, Lio/sentry/SentryMaskingOptions;->maskViewContainerClass:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setUnmaskViewContainerClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "containerClass"    # Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lio/sentry/SentryMaskingOptions;->unmaskViewContainerClass:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public abstract trackCustomMasking()V
.end method
