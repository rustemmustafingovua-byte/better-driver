.class public Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;
.super Ljava/lang/Object;
.source "SurfaceHolderCallbackCompat.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;,
        Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;,
        Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackApi26AndUp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceHolderCallbackCompat"


# instance fields
.field final alphaCallback:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

.field private flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field private final flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

.field private final innerCallback:Landroid/view/SurfaceHolder$Callback;

.field final lifecycleCallback:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;

.field private final shouldSetAlpha:Z


# direct methods
.method public constructor <init>(Landroid/view/SurfaceHolder$Callback;Lio/flutter/embedding/android/FlutterSurfaceView;Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 2
    .param p1, "innerCallback"    # Landroid/view/SurfaceHolder$Callback;
    .param p2, "flutterSurfaceView"    # Lio/flutter/embedding/android/FlutterSurfaceView;
    .param p3, "flutterRenderer"    # Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$1;-><init>(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)V

    iput-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->alphaCallback:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->shouldSetAlpha:Z

    .line 179
    nop

    .line 180
    iget-boolean v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->shouldSetAlpha:Z

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackPreApi26;-><init>(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)V

    goto :goto_0

    .line 182
    :cond_0
    new-instance v0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackApi26AndUp;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallbackApi26AndUp;-><init>(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)V

    :goto_0
    iput-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->lifecycleCallback:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;

    .line 188
    iput-object p1, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->innerCallback:Landroid/view/SurfaceHolder$Callback;

    .line 189
    iput-object p3, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 190
    iput-object p2, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 192
    const-string v0, "SurfaceHolderCallbackCompat"

    const-string v1, "SurfaceHolderCallbackCompat()"

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-boolean v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->shouldSetAlpha:Z

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/FlutterSurfaceView;->setAlpha(F)V

    .line 199
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 17
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    return-object v0
.end method

.method static synthetic access$002(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 0
    .param p0, "x0"    # Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;
    .param p1, "x1"    # Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 17
    iput-object p1, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    return-object p1
.end method

.method static synthetic access$100(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;)Lio/flutter/embedding/android/FlutterSurfaceView;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;

    .line 17
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

    return-object v0
.end method


# virtual methods
.method public onAttachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 1
    .param p1, "flutterRenderer"    # Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 33
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->lifecycleCallback:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;

    invoke-interface {v0, p1}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;->onAttachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    .line 34
    return-void
.end method

.method public onDetachFromRenderer()V
    .locals 1

    .line 37
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->lifecycleCallback:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;

    invoke-interface {v0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;->onDetachFromRenderer()V

    .line 38
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 41
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->lifecycleCallback:Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;

    invoke-interface {v0}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$FlutterRendererLifecycleCallback;->onResume()V

    .line 42
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 118
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->innerCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->innerCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 121
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 111
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->innerCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->innerCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 114
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 125
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->innerCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->innerCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 128
    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 132
    const-string v0, "SurfaceHolderCallbackCompat"

    const-string v1, "SurfaceHolder.Callback2.surfaceRedrawNeeded()"

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "finishDrawing"    # Ljava/lang/Runnable;

    .line 145
    const-string v0, "SurfaceHolderCallbackCompat"

    const-string v1, "SurfaceHolder.Callback2.surfaceRedrawNeededAsync()"

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-nez v0, :cond_0

    .line 147
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    new-instance v1, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$2;

    invoke-direct {v1, p0, p2}, Lio/flutter/embedding/android/SurfaceHolderCallbackCompat$2;-><init>(Lio/flutter/embedding/android/SurfaceHolderCallbackCompat;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 165
    return-void
.end method
