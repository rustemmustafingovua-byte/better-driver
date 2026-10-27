.class Lio/flutter/plugin/platform/VirtualDisplayController;
.super Ljava/lang/Object;
.source "VirtualDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/platform/VirtualDisplayController$OneTimeOnDrawListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static callback:Landroid/hardware/display/VirtualDisplay$Callback;


# instance fields
.field private final accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

.field private final context:Landroid/content/Context;

.field private final densityDpi:I

.field private final focusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

.field private final renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

.field private final viewId:I

.field private virtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, "VirtualDisplayController"

    sput-object v0, Lio/flutter/plugin/platform/VirtualDisplayController;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Lio/flutter/plugin/platform/VirtualDisplayController$1;

    invoke-direct {v0}, Lio/flutter/plugin/platform/VirtualDisplayController$1;-><init>()V

    sput-object v0, Lio/flutter/plugin/platform/VirtualDisplayController;->callback:Landroid/hardware/display/VirtualDisplay$Callback;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;Landroid/hardware/display/VirtualDisplay;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/plugin/platform/PlatformViewRenderTarget;Landroid/view/View$OnFocusChangeListener;ILjava/lang/Object;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accessibilityEventsDelegate"    # Lio/flutter/plugin/platform/AccessibilityEventsDelegate;
    .param p3, "virtualDisplay"    # Landroid/hardware/display/VirtualDisplay;
    .param p4, "view"    # Lio/flutter/plugin/platform/PlatformView;
    .param p5, "renderTarget"    # Lio/flutter/plugin/platform/PlatformViewRenderTarget;
    .param p6, "focusChangeListener"    # Landroid/view/View$OnFocusChangeListener;
    .param p7, "viewId"    # I
    .param p8, "createParams"    # Ljava/lang/Object;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->context:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    .line 114
    iput-object p5, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    .line 115
    move-object v6, p6

    iput-object v6, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 116
    move v5, p7

    iput v5, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->viewId:I

    .line 117
    iput-object p3, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->densityDpi:I

    .line 119
    new-instance v0, Lio/flutter/plugin/platform/SingleViewPresentation;

    iget-object v2, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 122
    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    move-object v1, p1

    move-object v4, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lio/flutter/plugin/platform/SingleViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;ILandroid/view/View$OnFocusChangeListener;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 127
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->show()V

    .line 128
    return-void
.end method

.method public static create(Landroid/content/Context;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/plugin/platform/PlatformViewRenderTarget;IIILjava/lang/Object;Landroid/view/View$OnFocusChangeListener;)Lio/flutter/plugin/platform/VirtualDisplayController;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accessibilityEventsDelegate"    # Lio/flutter/plugin/platform/AccessibilityEventsDelegate;
    .param p2, "view"    # Lio/flutter/plugin/platform/PlatformView;
    .param p3, "renderTarget"    # Lio/flutter/plugin/platform/PlatformViewRenderTarget;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "viewId"    # I
    .param p7, "createParams"    # Ljava/lang/Object;
    .param p8, "focusChangeListener"    # Landroid/view/View$OnFocusChangeListener;

    .line 45
    const/4 v0, 0x0

    if-eqz p4, :cond_2

    if-nez p5, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    nop

    .line 50
    const-string v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 51
    .local v4, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 63
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {p3 .. p5}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->resize(II)V

    .line 64
    const/4 v10, 0x0

    .line 65
    .local v10, "flags":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flutter-vd#"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v13, p6

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 71
    invoke-interface/range {p3 .. p3}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->getSurface()Landroid/view/Surface;

    move-result-object v9

    sget-object v11, Lio/flutter/plugin/platform/VirtualDisplayController;->callback:Landroid/hardware/display/VirtualDisplay$Callback;

    .line 66
    const/4 v12, 0x0

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v4 .. v12}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v5

    .line 76
    move-object v11, v4

    move v12, v10

    .end local v4    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v10    # "flags":I
    .local v5, "virtualDisplay":Landroid/hardware/display/VirtualDisplay;
    .local v11, "displayManager":Landroid/hardware/display/DisplayManager;
    .local v12, "flags":I
    if-nez v5, :cond_1

    .line 77
    return-object v0

    .line 79
    :cond_1
    new-instance v2, Lio/flutter/plugin/platform/VirtualDisplayController;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p7

    move-object/from16 v8, p8

    move v9, v13

    invoke-direct/range {v2 .. v10}, Lio/flutter/plugin/platform/VirtualDisplayController;-><init>(Landroid/content/Context;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;Landroid/hardware/display/VirtualDisplay;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/plugin/platform/PlatformViewRenderTarget;Landroid/view/View$OnFocusChangeListener;ILjava/lang/Object;)V

    .line 89
    .local v2, "controller":Lio/flutter/plugin/platform/VirtualDisplayController;
    return-object v2

    .line 46
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "controller":Lio/flutter/plugin/platform/VirtualDisplayController;
    .end local v5    # "virtualDisplay":Landroid/hardware/display/VirtualDisplay;
    .end local v11    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v12    # "flags":I
    :cond_2
    :goto_0
    return-object v0
.end method

.method private resize31(Landroid/view/View;IILjava/lang/Runnable;)V
    .locals 2
    .param p1, "embeddedView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "onNewSizeFrameAvailable"    # Ljava/lang/Runnable;

    .line 238
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    invoke-interface {v0, p2, p3}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->resize(II)V

    .line 239
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget v1, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->densityDpi:I

    invoke-virtual {v0, p2, p3, v1}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 241
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v1, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    invoke-interface {v1}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 242
    const-wide/16 v0, 0x0

    invoke-virtual {p1, p4, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    return-void
.end method


# virtual methods
.method public clearSurface()V
    .locals 2

    .line 288
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 289
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 283
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/SingleViewPresentation;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 285
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 228
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->cancel()V

    .line 229
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->detachState()Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;

    .line 230
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 231
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->release()V

    .line 232
    return-void
.end method

.method public getRenderTargetHeight()I
    .locals 1

    .line 138
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->getHeight()I

    move-result v0

    return v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRenderTargetWidth()I
    .locals 1

    .line 131
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->getWidth()I

    move-result v0

    return v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .line 276
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 277
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object v0

    .line 278
    .local v0, "platformView":Lio/flutter/plugin/platform/PlatformView;
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method onFlutterViewAttached(Landroid/view/View;)V
    .locals 1
    .param p1, "flutterView"    # Landroid/view/View;

    .line 247
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/flutter/plugin/platform/PlatformView;->onFlutterViewAttached(Landroid/view/View;)V

    .line 251
    return-void

    .line 248
    :cond_1
    :goto_0
    return-void
.end method

.method onFlutterViewDetached()V
    .locals 1

    .line 255
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->onFlutterViewDetached()V

    .line 259
    return-void

    .line 256
    :cond_1
    :goto_0
    return-void
.end method

.method onInputConnectionLocked()V
    .locals 1

    .line 262
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->onInputConnectionLocked()V

    .line 266
    return-void

    .line 263
    :cond_1
    :goto_0
    return-void
.end method

.method onInputConnectionUnlocked()V
    .locals 1

    .line 269
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->onInputConnectionUnlocked()V

    .line 273
    return-void

    .line 270
    :cond_1
    :goto_0
    return-void
.end method

.method public resetSurface()V
    .locals 12

    .line 292
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getRenderTargetWidth()I

    move-result v2

    .line 293
    .local v2, "width":I
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getRenderTargetHeight()I

    move-result v3

    .line 294
    .local v3, "height":I
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v10

    .line 295
    .local v10, "isFocused":Z
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->detachState()Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;

    move-result-object v9

    .line 298
    .local v9, "presentationState":Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 299
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 300
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->context:Landroid/content/Context;

    .line 301
    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 302
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v6, 0x0

    .line 303
    .local v6, "flags":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flutter-vd#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->viewId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->densityDpi:I

    iget-object v5, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    .line 309
    invoke-interface {v5}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->getSurface()Landroid/view/Surface;

    move-result-object v5

    sget-object v7, Lio/flutter/plugin/platform/VirtualDisplayController;->callback:Landroid/hardware/display/VirtualDisplay$Callback;

    .line 304
    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    move v11, v6

    .end local v6    # "flags":I
    .local v11, "flags":I
    iput-object v1, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 317
    new-instance v4, Lio/flutter/plugin/platform/SingleViewPresentation;

    iget-object v5, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 320
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v6

    iget-object v7, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    move-object v8, v9

    .end local v9    # "presentationState":Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;
    .local v8, "presentationState":Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;
    iget-object v9, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-direct/range {v4 .. v10}, Lio/flutter/plugin/platform/SingleViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;Landroid/view/View$OnFocusChangeListener;Z)V

    .line 325
    .local v4, "newPresentation":Lio/flutter/plugin/platform/SingleViewPresentation;
    invoke-virtual {v4}, Lio/flutter/plugin/platform/SingleViewPresentation;->show()V

    .line 326
    iget-object v1, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v1}, Lio/flutter/plugin/platform/SingleViewPresentation;->cancel()V

    .line 327
    iput-object v4, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 328
    return-void
.end method

.method public resize(IILjava/lang/Runnable;)V
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "onNewSizeFrameAvailable"    # Ljava/lang/Runnable;

    .line 147
    move v3, p2

    move-object/from16 v9, p3

    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getRenderTargetWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getRenderTargetHeight()I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v9, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    return-void

    .line 151
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    .line 152
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, v9}, Lio/flutter/plugin/platform/VirtualDisplayController;->resize31(Landroid/view/View;IILjava/lang/Runnable;)V

    .line 153
    return-void

    .line 155
    :cond_1
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v10

    .line 156
    .local v10, "isFocused":Z
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->detachState()Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;

    move-result-object v11

    .line 158
    .local v11, "presentationState":Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 159
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 161
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->context:Landroid/content/Context;

    .line 162
    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 163
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    iget-object v1, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    invoke-interface {v1, p1, p2}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->resize(II)V

    .line 164
    const/4 v6, 0x0

    .line 165
    .local v6, "flags":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flutter-vd#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->viewId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->densityDpi:I

    iget-object v5, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    .line 171
    invoke-interface {v5}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->getSurface()Landroid/view/Surface;

    move-result-object v5

    sget-object v7, Lio/flutter/plugin/platform/VirtualDisplayController;->callback:Landroid/hardware/display/VirtualDisplay$Callback;

    .line 166
    const/4 v8, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    move v8, v6

    .end local v6    # "flags":I
    .local v8, "flags":I
    iput-object v1, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 176
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    move-result-object v12

    .line 181
    .local v12, "embeddedView":Landroid/view/View;
    new-instance v1, Lio/flutter/plugin/platform/VirtualDisplayController$2;

    invoke-direct {v1, p0, v12, v9}, Lio/flutter/plugin/platform/VirtualDisplayController$2;-><init>(Lio/flutter/plugin/platform/VirtualDisplayController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v12, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 213
    new-instance v1, Lio/flutter/plugin/platform/SingleViewPresentation;

    iget-object v2, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->context:Landroid/content/Context;

    iget-object v3, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 216
    invoke-virtual {v3}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    iget-object v6, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move v7, v10

    move-object v5, v11

    .end local v10    # "isFocused":Z
    .end local v11    # "presentationState":Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;
    .local v5, "presentationState":Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;
    .local v7, "isFocused":Z
    invoke-direct/range {v1 .. v7}, Lio/flutter/plugin/platform/SingleViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;Landroid/view/View$OnFocusChangeListener;Z)V

    .line 221
    .local v1, "newPresentation":Lio/flutter/plugin/platform/SingleViewPresentation;
    invoke-virtual {v1}, Lio/flutter/plugin/platform/SingleViewPresentation;->show()V

    .line 222
    iget-object v2, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v2}, Lio/flutter/plugin/platform/SingleViewPresentation;->cancel()V

    .line 223
    iput-object v1, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 224
    return-void
.end method
