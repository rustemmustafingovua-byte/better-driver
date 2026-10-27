.class public Lio/flutter/embedding/android/FlutterView;
.super Landroid/widget/FrameLayout;
.source "FlutterView.java"

# interfaces
.implements Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;
.implements Lio/flutter/embedding/android/KeyboardManager$ViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/FlutterView$ZeroSides;,
        Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;
    }
.end annotation


# static fields
.field static final CONTENT_SIZING_MAX:I = 0x2000

.field private static final GBOARD_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.inputmethod.latin"

.field private static final TAG:Ljava/lang/String; = "FlutterView"


# instance fields
.field private accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

.field private androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

.field private delegate:Lio/flutter/embedding/android/FlutterViewDelegate;

.field private flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

.field private final flutterEngineAttachmentListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;",
            ">;"
        }
    .end annotation
.end field

.field private flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

.field private flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

.field private flutterTextureView:Lio/flutter/embedding/android/FlutterTextureView;

.field private final flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

.field private final flutterUiDisplayListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;",
            ">;"
        }
    .end annotation
.end field

.field final flutterUiResizeListener:Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;

.field private heightMode:I

.field isContentSizingEnabled:Z

.field private isFlutterUiDisplayed:Z

.field private keyboardManager:Lio/flutter/embedding/android/KeyboardManager;

.field private localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

.field private mouseCursorPlugin:Lio/flutter/plugin/mouse/MouseCursorPlugin;

.field private final onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

.field private previousRenderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

.field renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

.field private scribePlugin:Lio/flutter/plugin/editing/ScribePlugin;

.field private spellCheckPlugin:Lio/flutter/plugin/editing/SpellCheckPlugin;

.field private final systemSettingsObserver:Landroid/database/ContentObserver;

.field private textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

.field private textServicesManager:Landroid/view/textservice/TextServicesManager;

.field private final viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

.field private widthMode:I

.field private windowInfoListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private windowInfoRepo:Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 254
    new-instance v0, Lio/flutter/embedding/android/FlutterSurfaceView;

    invoke-direct {v0, p1}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterSurfaceView;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 343
    new-instance v0, Lio/flutter/embedding/android/FlutterSurfaceView;

    invoke-direct {v0, p1}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterSurfaceView;)V

    .line 344
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterImageView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "flutterImageView"    # Lio/flutter/embedding/android/FlutterImageView;

    .line 401
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterView;->isContentSizingEnabled:Z

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListeners:Ljava/util/Set;

    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    .line 158
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-direct {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 161
    new-instance v0, Lio/flutter/embedding/android/FlutterView$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$1;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    .line 170
    new-instance v0, Lio/flutter/embedding/android/FlutterView$2;

    new-instance v1, Landroid/os/Handler;

    .line 171
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lio/flutter/embedding/android/FlutterView$2;-><init>(Lio/flutter/embedding/android/FlutterView;Landroid/os/Handler;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->systemSettingsObserver:Landroid/database/ContentObserver;

    .line 189
    new-instance v0, Lio/flutter/embedding/android/FlutterView$3;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$3;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiResizeListener:Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;

    .line 215
    new-instance v0, Lio/flutter/embedding/android/FlutterView$4;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$4;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 1557
    new-instance v0, Lio/flutter/embedding/android/FlutterViewDelegate;

    invoke-direct {v0}, Lio/flutter/embedding/android/FlutterViewDelegate;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->delegate:Lio/flutter/embedding/android/FlutterViewDelegate;

    .line 403
    iput-object p3, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    .line 404
    iput-object p3, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 406
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->init()V

    .line 407
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterSurfaceView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "flutterSurfaceView"    # Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 377
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterView;->isContentSizingEnabled:Z

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListeners:Ljava/util/Set;

    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    .line 158
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-direct {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 161
    new-instance v0, Lio/flutter/embedding/android/FlutterView$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$1;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    .line 170
    new-instance v0, Lio/flutter/embedding/android/FlutterView$2;

    new-instance v1, Landroid/os/Handler;

    .line 171
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lio/flutter/embedding/android/FlutterView$2;-><init>(Lio/flutter/embedding/android/FlutterView;Landroid/os/Handler;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->systemSettingsObserver:Landroid/database/ContentObserver;

    .line 189
    new-instance v0, Lio/flutter/embedding/android/FlutterView$3;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$3;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiResizeListener:Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;

    .line 215
    new-instance v0, Lio/flutter/embedding/android/FlutterView$4;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$4;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 1557
    new-instance v0, Lio/flutter/embedding/android/FlutterViewDelegate;

    invoke-direct {v0}, Lio/flutter/embedding/android/FlutterViewDelegate;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->delegate:Lio/flutter/embedding/android/FlutterViewDelegate;

    .line 379
    iput-object p3, p0, Lio/flutter/embedding/android/FlutterView;->flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 380
    iput-object p3, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 382
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->init()V

    .line 383
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterTextureView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "flutterTextureView"    # Lio/flutter/embedding/android/FlutterTextureView;

    .line 389
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterView;->isContentSizingEnabled:Z

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListeners:Ljava/util/Set;

    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    .line 158
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-direct {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 161
    new-instance v0, Lio/flutter/embedding/android/FlutterView$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$1;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    .line 170
    new-instance v0, Lio/flutter/embedding/android/FlutterView$2;

    new-instance v1, Landroid/os/Handler;

    .line 171
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lio/flutter/embedding/android/FlutterView$2;-><init>(Lio/flutter/embedding/android/FlutterView;Landroid/os/Handler;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->systemSettingsObserver:Landroid/database/ContentObserver;

    .line 189
    new-instance v0, Lio/flutter/embedding/android/FlutterView$3;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$3;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiResizeListener:Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;

    .line 215
    new-instance v0, Lio/flutter/embedding/android/FlutterView$4;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$4;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 1557
    new-instance v0, Lio/flutter/embedding/android/FlutterViewDelegate;

    invoke-direct {v0}, Lio/flutter/embedding/android/FlutterViewDelegate;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->delegate:Lio/flutter/embedding/android/FlutterViewDelegate;

    .line 391
    iput-object p3, p0, Lio/flutter/embedding/android/FlutterView;->flutterTextureView:Lio/flutter/embedding/android/FlutterTextureView;

    .line 392
    iput-object p3, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 394
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->init()V

    .line 395
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/android/FlutterImageView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flutterImageView"    # Lio/flutter/embedding/android/FlutterImageView;

    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterImageView;)V

    .line 333
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/android/FlutterSurfaceView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flutterSurfaceView"    # Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterSurfaceView;)V

    .line 310
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/android/FlutterTextureView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flutterTextureView"    # Lio/flutter/embedding/android/FlutterTextureView;

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterTextureView;)V

    .line 322
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/android/RenderMode;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderMode"    # Lio/flutter/embedding/android/RenderMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterView;->isContentSizingEnabled:Z

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListeners:Ljava/util/Set;

    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    .line 158
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-direct {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 161
    new-instance v0, Lio/flutter/embedding/android/FlutterView$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$1;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    .line 170
    new-instance v0, Lio/flutter/embedding/android/FlutterView$2;

    new-instance v1, Landroid/os/Handler;

    .line 171
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lio/flutter/embedding/android/FlutterView$2;-><init>(Lio/flutter/embedding/android/FlutterView;Landroid/os/Handler;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->systemSettingsObserver:Landroid/database/ContentObserver;

    .line 189
    new-instance v0, Lio/flutter/embedding/android/FlutterView$3;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$3;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiResizeListener:Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;

    .line 215
    new-instance v0, Lio/flutter/embedding/android/FlutterView$4;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$4;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 1557
    new-instance v0, Lio/flutter/embedding/android/FlutterViewDelegate;

    invoke-direct {v0}, Lio/flutter/embedding/android/FlutterViewDelegate;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->delegate:Lio/flutter/embedding/android/FlutterViewDelegate;

    .line 266
    sget-object v0, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    if-ne p2, v0, :cond_0

    .line 267
    new-instance v0, Lio/flutter/embedding/android/FlutterSurfaceView;

    invoke-direct {v0, p1}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 268
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    goto :goto_0

    .line 269
    :cond_0
    sget-object v0, Lio/flutter/embedding/android/RenderMode;->texture:Lio/flutter/embedding/android/RenderMode;

    if-ne p2, v0, :cond_1

    .line 270
    new-instance v0, Lio/flutter/embedding/android/FlutterTextureView;

    invoke-direct {v0, p1}, Lio/flutter/embedding/android/FlutterTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterTextureView:Lio/flutter/embedding/android/FlutterTextureView;

    .line 271
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterTextureView:Lio/flutter/embedding/android/FlutterTextureView;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 277
    :goto_0
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->init()V

    .line 278
    return-void

    .line 273
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RenderMode not supported with this constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/android/RenderMode;Lio/flutter/embedding/android/TransparencyMode;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderMode"    # Lio/flutter/embedding/android/RenderMode;
    .param p3, "transparencyMode"    # Lio/flutter/embedding/android/TransparencyMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterView;->isContentSizingEnabled:Z

    .line 130
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListeners:Ljava/util/Set;

    .line 136
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    .line 158
    new-instance v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-direct {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;-><init>()V

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 161
    new-instance v1, Lio/flutter/embedding/android/FlutterView$1;

    invoke-direct {v1, p0}, Lio/flutter/embedding/android/FlutterView$1;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterView;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    .line 170
    new-instance v1, Lio/flutter/embedding/android/FlutterView$2;

    new-instance v2, Landroid/os/Handler;

    .line 171
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lio/flutter/embedding/android/FlutterView$2;-><init>(Lio/flutter/embedding/android/FlutterView;Landroid/os/Handler;)V

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterView;->systemSettingsObserver:Landroid/database/ContentObserver;

    .line 189
    new-instance v1, Lio/flutter/embedding/android/FlutterView$3;

    invoke-direct {v1, p0}, Lio/flutter/embedding/android/FlutterView$3;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiResizeListener:Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;

    .line 215
    new-instance v1, Lio/flutter/embedding/android/FlutterView$4;

    invoke-direct {v1, p0}, Lio/flutter/embedding/android/FlutterView$4;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 1557
    new-instance v1, Lio/flutter/embedding/android/FlutterViewDelegate;

    invoke-direct {v1}, Lio/flutter/embedding/android/FlutterViewDelegate;-><init>()V

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterView;->delegate:Lio/flutter/embedding/android/FlutterViewDelegate;

    .line 358
    sget-object v1, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    if-ne p2, v1, :cond_1

    .line 359
    new-instance v1, Lio/flutter/embedding/android/FlutterSurfaceView;

    sget-object v2, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    if-ne p3, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {v1, p1, v0}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 361
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    goto :goto_0

    .line 362
    :cond_1
    sget-object v0, Lio/flutter/embedding/android/RenderMode;->texture:Lio/flutter/embedding/android/RenderMode;

    if-ne p2, v0, :cond_2

    .line 363
    new-instance v0, Lio/flutter/embedding/android/FlutterTextureView;

    invoke-direct {v0, p1}, Lio/flutter/embedding/android/FlutterTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterTextureView:Lio/flutter/embedding/android/FlutterTextureView;

    .line 364
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterTextureView:Lio/flutter/embedding/android/FlutterTextureView;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 370
    :goto_0
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->init()V

    .line 371
    return-void

    .line 366
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RenderMode not supported with this constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/android/TransparencyMode;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transparencyMode"    # Lio/flutter/embedding/android/TransparencyMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 294
    new-instance v0, Lio/flutter/embedding/android/FlutterSurfaceView;

    sget-object v1, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, p1, v1}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;Z)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterSurfaceView;)V

    .line 298
    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/android/FlutterView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 112
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/android/FlutterView;->resetWillNotDraw(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lio/flutter/embedding/android/FlutterView;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterView;

    .line 112
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    return-object v0
.end method

.method static synthetic access$202(Lio/flutter/embedding/android/FlutterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterView;
    .param p1, "x1"    # Z

    .line 112
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterView;->isFlutterUiDisplayed:Z

    return p1
.end method

.method static synthetic access$300(Lio/flutter/embedding/android/FlutterView;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterView;

    .line 112
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lio/flutter/embedding/android/FlutterView;)Lio/flutter/embedding/android/FlutterImageView;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterView;

    .line 112
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    return-object v0
.end method

.method static synthetic access$500(Lio/flutter/embedding/android/FlutterView;)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterView;

    .line 112
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->releaseImageView()V

    return-void
.end method

.method private findViewByAccessibilityIdRootedAtCurrentView(ILandroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "accessibilityId"    # I
    .param p2, "currentView"    # Landroid/view/View;

    .line 1082
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "getAccessibilityViewId"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1085
    .local v1, "getAccessibilityViewIdMethod":Ljava/lang/reflect/Method;
    nop

    .line 1086
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1088
    :try_start_1
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_0

    .line 1089
    return-object p2

    .line 1093
    :cond_0
    nop

    .line 1094
    instance-of v2, p2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 1095
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object v3, p2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1096
    move-object v3, p2

    check-cast v3, Landroid/view/ViewGroup;

    .line 1098
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1097
    invoke-direct {p0, p1, v3}, Lio/flutter/embedding/android/FlutterView;->findViewByAccessibilityIdRootedAtCurrentView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 1099
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1100
    return-object v3

    .line 1095
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1104
    .end local v2    # "i":I
    :cond_2
    return-object v0

    .line 1091
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 1092
    .local v2, "ignored":Ljava/lang/ReflectiveOperationException;
    :goto_1
    return-object v0

    .line 1083
    .end local v1    # "getAccessibilityViewIdMethod":Ljava/lang/reflect/Method;
    .end local v2    # "ignored":Ljava/lang/ReflectiveOperationException;
    :catch_2
    move-exception v1

    .line 1084
    .local v1, "exception":Ljava/lang/NoSuchMethodException;
    return-object v0
.end method

.method private guessBottomKeyboardInset(Landroid/view/WindowInsets;)I
    .locals 9
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 705
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 708
    .local v0, "screenHeight":I
    const-wide v1, 0x3fc70a3d70a3d70aL    # 0.18

    .line 709
    .local v1, "keyboardHeightRatioHeuristic":D
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    int-to-double v3, v3

    int-to-double v5, v0

    const-wide v7, 0x3fc70a3d70a3d70aL    # 0.18

    mul-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 711
    const/4 v3, 0x0

    return v3

    .line 714
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    return v3
.end method

.method private init()V
    .locals 2

    .line 410
    const-string v0, "Initializing FlutterView"

    const-string v1, "FlutterView"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "Internally using a FlutterSurfaceView."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 415
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterTextureView:Lio/flutter/embedding/android/FlutterTextureView;

    if-eqz v0, :cond_1

    .line 416
    const-string v0, "Internally using a FlutterTextureView."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterTextureView:Lio/flutter/embedding/android/FlutterTextureView;

    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 419
    :cond_1
    const-string v0, "Internally using a FlutterImageView."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterView;->addView(Landroid/view/View;)V

    .line 423
    :goto_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/embedding/android/ContentSizingFlag;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterView;->isContentSizingEnabled:Z

    .line 426
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterView;->setFocusable(Z)V

    .line 427
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterView;->setFocusableInTouchMode(Z)V

    .line 428
    nop

    .line 429
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterView;->setImportantForAutofill(I)V

    .line 431
    return-void
.end method

.method private releaseImageView()V
    .locals 1

    .line 1349
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterImageView;->closeImageReader()V

    .line 1354
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterView;->removeView(Landroid/view/View;)V

    .line 1355
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    .line 1357
    :cond_0
    return-void
.end method

.method private resetWillNotDraw(ZZ)V
    .locals 2
    .param p1, "isAccessibilityEnabled"    # Z
    .param p2, "isTouchExplorationEnabled"    # Z

    .line 1110
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isSoftwareRenderingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1111
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lio/flutter/embedding/android/FlutterView;->setWillNotDraw(Z)V

    goto :goto_0

    .line 1113
    :cond_1
    invoke-virtual {p0, v1}, Lio/flutter/embedding/android/FlutterView;->setWillNotDraw(Z)V

    .line 1115
    :goto_0
    return-void
.end method

.method private sendViewportMetricsToFlutter()V
    .locals 2

    .line 1572
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1573
    const-string v0, "FlutterView"

    const-string v1, "Tried to send viewport metrics from Android to Flutter but this FlutterView was not attached to a FlutterEngine."

    invoke-static {v0, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    return-void

    .line 1580
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->devicePixelRatio:F

    .line 1581
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->physicalTouchSlop:I

    .line 1582
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->setViewportMetrics(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;)V

    .line 1583
    return-void
.end method


# virtual methods
.method public acquireLatestImageViewFrame()Z
    .locals 1

    .line 1452
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterImageView;->acquireLatestImage()Z

    move-result v0

    return v0

    .line 1455
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addFlutterEngineAttachmentListener(Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;)V
    .locals 1
    .param p1, "listener"    # Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;

    .line 1486
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1487
    return-void
.end method

.method public addOnFirstFrameRenderedListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V
    .locals 1
    .param p1, "listener"    # Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 459
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 460
    return-void
.end method

.method public attachOverlaySurfaceToRender(Lio/flutter/embedding/android/FlutterImageView;)V
    .locals 1
    .param p1, "view"    # Lio/flutter/embedding/android/FlutterImageView;

    .line 1446
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/flutter/embedding/android/FlutterImageView;->attachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    .line 1449
    :cond_0
    return-void
.end method

.method public attachToFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 8
    .param p1, "flutterEngine"    # Lio/flutter/embedding/engine/FlutterEngine;

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching to a FlutterEngine: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "FlutterView"

    invoke-static {v6, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1160
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-ne p1, v0, :cond_0

    .line 1162
    const-string v0, "Already attached to this engine. Doing nothing."

    invoke-static {v6, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    return-void

    .line 1167
    :cond_0
    const-string v0, "Currently attached to a different engine. Detaching and then attaching to new engine."

    invoke-static {v6, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->detachFromFlutterEngine()V

    .line 1174
    :cond_1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1177
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v7

    .line 1178
    .local v7, "flutterRenderer":Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    invoke-virtual {v7}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isDisplayingFlutterUi()Z

    move-result v0

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterView;->isFlutterUiDisplayed:Z

    .line 1179
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    invoke-interface {v0, v7}, Lio/flutter/embedding/engine/renderer/RenderSurface;->attachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    .line 1180
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-virtual {v7, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 1181
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterView;->isContentSizingEnabled:Z

    if-eqz v0, :cond_2

    .line 1182
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiResizeListener:Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;

    invoke-virtual {v7, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->addResizingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;)V

    .line 1187
    :cond_2
    new-instance v0, Lio/flutter/plugin/mouse/MouseCursorPlugin;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/FlutterEngine;->getMouseCursorChannel()Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lio/flutter/plugin/mouse/MouseCursorPlugin;-><init>(Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->mouseCursorPlugin:Lio/flutter/plugin/mouse/MouseCursorPlugin;

    .line 1189
    new-instance v0, Lio/flutter/plugin/editing/TextInputPlugin;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1192
    invoke-virtual {v2}, Lio/flutter/embedding/engine/FlutterEngine;->getTextInputChannel()Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1193
    invoke-virtual {v3}, Lio/flutter/embedding/engine/FlutterEngine;->getScribeChannel()Lio/flutter/embedding/engine/systemchannels/ScribeChannel;

    move-result-object v3

    iget-object v4, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1195
    invoke-virtual {v4}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v4

    iget-object v5, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1197
    invoke-virtual {v5}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController2()Lio/flutter/plugin/platform/PlatformViewsController2;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/flutter/plugin/editing/TextInputPlugin;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/embedding/engine/systemchannels/ScribeChannel;Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/plugin/platform/PlatformViewsController2;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 1200
    nop

    .line 1202
    :try_start_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "textservices"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->textServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 1203
    new-instance v0, Lio/flutter/plugin/editing/SpellCheckPlugin;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->textServicesManager:Landroid/view/textservice/TextServicesManager;

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1204
    invoke-virtual {v3}, Lio/flutter/embedding/engine/FlutterEngine;->getSpellCheckChannel()Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lio/flutter/plugin/editing/SpellCheckPlugin;-><init>(Landroid/view/textservice/TextServicesManager;Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->spellCheckPlugin:Lio/flutter/plugin/editing/SpellCheckPlugin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1207
    goto :goto_0

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TextServicesManager not supported by device, spell check disabled."

    invoke-static {v6, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Lio/flutter/plugin/editing/ScribePlugin;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 1211
    invoke-virtual {v2}, Lio/flutter/plugin/editing/TextInputPlugin;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v3}, Lio/flutter/embedding/engine/FlutterEngine;->getScribeChannel()Lio/flutter/embedding/engine/systemchannels/ScribeChannel;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/editing/ScribePlugin;-><init>(Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;Lio/flutter/embedding/engine/systemchannels/ScribeChannel;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->scribePlugin:Lio/flutter/plugin/editing/ScribePlugin;

    .line 1213
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getLocalizationPlugin()Lio/flutter/plugin/localization/LocalizationPlugin;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    .line 1215
    new-instance v0, Lio/flutter/embedding/android/KeyboardManager;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/KeyboardManager;-><init>(Lio/flutter/embedding/android/KeyboardManager$ViewDelegate;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->keyboardManager:Lio/flutter/embedding/android/KeyboardManager;

    .line 1216
    new-instance v0, Lio/flutter/embedding/android/AndroidTouchProcessor;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1217
    invoke-virtual {v2}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v2

    const/4 v6, 0x0

    invoke-direct {v0, v2, v6}, Lio/flutter/embedding/android/AndroidTouchProcessor;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;Z)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

    .line 1219
    new-instance v0, Lio/flutter/view/AccessibilityBridge;

    .line 1222
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getAccessibilityChannel()Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    move-result-object v2

    .line 1223
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    .line 1224
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1225
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsControllerDelegator()Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/flutter/view/AccessibilityBridge;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    .line 1226
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    invoke-virtual {v0, v2}, Lio/flutter/view/AccessibilityBridge;->setOnAccessibilityChangeListener(Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;)V

    .line 1227
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    .line 1228
    invoke-virtual {v0}, Lio/flutter/view/AccessibilityBridge;->isAccessibilityEnabled()Z

    move-result v0

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    .line 1229
    invoke-virtual {v2}, Lio/flutter/view/AccessibilityBridge;->isTouchExplorationEnabled()Z

    move-result v2

    .line 1227
    invoke-direct {p0, v0, v2}, Lio/flutter/embedding/android/FlutterView;->resetWillNotDraw(ZZ)V

    .line 1233
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {v0, v2}, Lio/flutter/plugin/platform/PlatformViewsController;->attachAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V

    .line 1234
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1235
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1236
    invoke-virtual {v2}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/flutter/plugin/platform/PlatformViewsController;->attachToFlutterRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    .line 1238
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController2()Lio/flutter/plugin/platform/PlatformViewsController2;

    move-result-object v0

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {v0, v2}, Lio/flutter/plugin/platform/PlatformViewsController2;->attachAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V

    .line 1239
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1240
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController2()Lio/flutter/plugin/platform/PlatformViewsController2;

    move-result-object v0

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1241
    invoke-virtual {v2}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/flutter/plugin/platform/PlatformViewsController2;->attachToFlutterRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    .line 1246
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1249
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->sendUserSettingsToFlutter()V

    .line 1250
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1251
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1253
    const-string v2, "show_password"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->systemSettingsObserver:Landroid/database/ContentObserver;

    .line 1252
    invoke-virtual {v0, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1257
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->sendViewportMetricsToFlutter()V

    .line 1259
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/flutter/plugin/platform/PlatformViewsController;->attachToView(Lio/flutter/embedding/android/FlutterView;)V

    .line 1260
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController2()Lio/flutter/plugin/platform/PlatformViewsController2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/flutter/plugin/platform/PlatformViewsController2;->attachToView(Lio/flutter/embedding/android/FlutterView;)V

    .line 1263
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;

    .line 1264
    .local v2, "listener":Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;
    invoke-interface {v2, p1}, Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;->onFlutterEngineAttachedToFlutterView(Lio/flutter/embedding/engine/FlutterEngine;)V

    .line 1265
    .end local v2    # "listener":Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;
    goto :goto_1

    .line 1270
    :cond_3
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterView;->isFlutterUiDisplayed:Z

    if-eqz v0, :cond_4

    .line 1271
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-interface {v0}, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;->onFlutterUiDisplayed()V

    .line 1273
    :cond_4
    return-void
.end method

.method public autofill(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .line 1599
    .local p1, "values":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->autofill(Landroid/util/SparseArray;)V

    .line 1602
    :cond_0
    return-void
.end method

.method public calculateShouldZeroSides()Lio/flutter/embedding/android/FlutterView$ZeroSides;
    .locals 5

    .line 668
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 669
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 671
    .local v1, "orientation":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 672
    nop

    .line 673
    const-string v3, "display"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 674
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    .line 675
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 677
    .local v3, "rotation":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 678
    sget-object v2, Lio/flutter/embedding/android/FlutterView$ZeroSides;->RIGHT:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    return-object v2

    .line 679
    :cond_0
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 681
    sget-object v2, Lio/flutter/embedding/android/FlutterView$ZeroSides;->LEFT:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    return-object v2

    .line 684
    :cond_1
    if-eqz v3, :cond_2

    if-ne v3, v2, :cond_3

    .line 685
    :cond_2
    sget-object v2, Lio/flutter/embedding/android/FlutterView$ZeroSides;->BOTH:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    return-object v2

    .line 690
    .end local v3    # "rotation":I
    :cond_3
    sget-object v2, Lio/flutter/embedding/android/FlutterView$ZeroSides;->NONE:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    return-object v2
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 926
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 928
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    .line 926
    :goto_0
    return v0
.end method

.method public convertToImageView()V
    .locals 3

    .line 1376
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    invoke-interface {v0}, Lio/flutter/embedding/engine/renderer/RenderSurface;->pause()V

    .line 1378
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    if-nez v0, :cond_0

    .line 1379
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->createImageView()Lio/flutter/embedding/android/FlutterImageView;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    .line 1380
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1382
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/flutter/embedding/android/FlutterImageView;->resizeIfNeeded(II)V

    .line 1385
    :goto_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->previousRenderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 1386
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 1387
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_1

    .line 1388
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/renderer/RenderSurface;->attachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    .line 1390
    :cond_1
    return-void
.end method

.method public createImageView()Lio/flutter/embedding/android/FlutterImageView;
    .locals 5

    .line 1362
    new-instance v0, Lio/flutter/embedding/android/FlutterImageView;

    .line 1363
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getHeight()I

    move-result v3

    sget-object v4, Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;->background:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/android/FlutterImageView;-><init>(Landroid/content/Context;IILio/flutter/embedding/android/FlutterImageView$SurfaceKind;)V

    .line 1362
    return-object v0
.end method

.method protected createWindowInfoRepo()Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;
    .locals 4

    .line 545
    :try_start_0
    new-instance v0, Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;

    new-instance v1, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    sget-object v2, Landroidx/window/layout/WindowInfoTracker;->Companion:Landroidx/window/layout/WindowInfoTracker$Companion;

    .line 547
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/window/layout/WindowInfoTracker$Companion;->getOrCreate(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;-><init>(Landroidx/window/layout/WindowInfoTracker;)V

    invoke-direct {v0, v1}, Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;-><init>(Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    return-object v0

    .line 548
    :catch_0
    move-exception v0

    .line 555
    .local v0, "noClassDefFoundError":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    return-object v1
.end method

.method public detachFromFlutterEngine()V
    .locals 4

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detaching from a FlutterEngine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterView"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1289
    const-string v0, "FlutterView not attached to an engine. Not detaching."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    return-void

    .line 1294
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;

    .line 1295
    .local v1, "listener":Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;
    invoke-interface {v1}, Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;->onFlutterEngineDetachedFromFlutterView()V

    .line 1296
    .end local v1    # "listener":Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;
    goto :goto_0

    .line 1298
    :cond_1
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->systemSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1300
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->detachFromView()V

    .line 1301
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController2()Lio/flutter/plugin/platform/PlatformViewsController2;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->detachFromView()V

    .line 1304
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->detachAccessibilityBridge()V

    .line 1305
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController2()Lio/flutter/plugin/platform/PlatformViewsController2;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->detachAccessibilityBridge()V

    .line 1308
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {v0}, Lio/flutter/view/AccessibilityBridge;->release()V

    .line 1309
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    .line 1315
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/TextInputPlugin;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1316
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/TextInputPlugin;->destroy()V

    .line 1317
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->keyboardManager:Lio/flutter/embedding/android/KeyboardManager;

    invoke-virtual {v1}, Lio/flutter/embedding/android/KeyboardManager;->destroy()V

    .line 1318
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->spellCheckPlugin:Lio/flutter/plugin/editing/SpellCheckPlugin;

    if-eqz v1, :cond_2

    .line 1319
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->spellCheckPlugin:Lio/flutter/plugin/editing/SpellCheckPlugin;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/SpellCheckPlugin;->destroy()V

    .line 1322
    :cond_2
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->mouseCursorPlugin:Lio/flutter/plugin/mouse/MouseCursorPlugin;

    if-eqz v1, :cond_3

    .line 1323
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->mouseCursorPlugin:Lio/flutter/plugin/mouse/MouseCursorPlugin;

    invoke-virtual {v1}, Lio/flutter/plugin/mouse/MouseCursorPlugin;->destroy()V

    .line 1327
    :cond_3
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    .line 1328
    .local v1, "flutterRenderer":Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/flutter/embedding/android/FlutterView;->isFlutterUiDisplayed:Z

    .line 1329
    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-virtual {v1, v3}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 1330
    iget-boolean v3, p0, Lio/flutter/embedding/android/FlutterView;->isContentSizingEnabled:Z

    if-eqz v3, :cond_4

    .line 1331
    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiResizeListener:Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;

    invoke-virtual {v1, v3}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->removeResizingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;)V

    .line 1333
    :cond_4
    invoke-virtual {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->stopRenderingToSurface()V

    .line 1334
    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->setSemanticsEnabled(Z)V

    .line 1337
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->previousRenderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    if-ne v2, v3, :cond_5

    .line 1338
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->previousRenderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    iput-object v2, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 1340
    :cond_5
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    invoke-interface {v2}, Lio/flutter/embedding/engine/renderer/RenderSurface;->detachFromRenderer()V

    .line 1342
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->releaseImageView()V

    .line 1344
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->previousRenderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 1345
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1346
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 944
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 946
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 947
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 949
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 955
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->keyboardManager:Lio/flutter/embedding/android/KeyboardManager;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/KeyboardManager;->handleEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 956
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 955
    :goto_1
    return v1
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 4
    .param p1, "accessibilityId"    # I

    .line 1048
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 1049
    invoke-direct {p0, p1, p0}, Lio/flutter/embedding/android/FlutterView;->findViewByAccessibilityIdRootedAtCurrentView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1058
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "findViewByAccessibilityIdTraversal"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 1059
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1062
    .local v1, "findViewByAccessibilityIdTraversalMethod":Ljava/lang/reflect/Method;
    nop

    .line 1063
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1065
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 1066
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 1067
    .local v2, "ignored":Ljava/lang/ReflectiveOperationException;
    :goto_0
    return-object v0

    .line 1060
    .end local v1    # "findViewByAccessibilityIdTraversalMethod":Ljava/lang/reflect/Method;
    .end local v2    # "ignored":Ljava/lang/ReflectiveOperationException;
    :catch_2
    move-exception v1

    .line 1061
    .local v1, "exception":Ljava/lang/NoSuchMethodException;
    return-object v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1021
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {v0}, Lio/flutter/view/AccessibilityBridge;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    return-object v0

    .line 1027
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttachedFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1

    .line 1476
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    return-object v0
.end method

.method public getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;
    .locals 1

    .line 1130
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentImageSurface()Lio/flutter/embedding/android/FlutterImageView;
    .locals 1

    .line 1368
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    return-object v0
.end method

.method public getSystemPointerIcon(I)Landroid/view/PointerIcon;
    .locals 1
    .param p1, "type"    # I

    .line 1122
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public getViewportMetrics()Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;
    .locals 1

    .line 1621
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    return-object v0
.end method

.method public hasRenderedFirstFrame()Z
    .locals 1

    .line 451
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterView;->isFlutterUiDisplayed:Z

    return v0
.end method

.method public isAttachedToFlutterEngine()Z
    .locals 2

    .line 1464
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1465
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    invoke-interface {v1}, Lio/flutter/embedding/engine/renderer/RenderSurface;->getAttachedRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1464
    :goto_0
    return v0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 14
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 736
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 739
    .local v0, "newInsets":Landroid/view/WindowInsets;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_0

    .line 740
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 741
    .local v1, "systemGestureInsets":Landroid/graphics/Insets;
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v1, Landroid/graphics/Insets;->top:I

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetTop:I

    .line 742
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v1, Landroid/graphics/Insets;->right:I

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetRight:I

    .line 743
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v1, Landroid/graphics/Insets;->bottom:I

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetBottom:I

    .line 744
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v1, Landroid/graphics/Insets;->left:I

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetLeft:I

    .line 747
    .end local v1    # "systemGestureInsets":Landroid/graphics/Insets;
    :cond_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getWindowSystemUiVisibility()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 748
    .local v1, "statusBarVisible":Z
    :goto_0
    nop

    .line 749
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getWindowSystemUiVisibility()I

    move-result v4

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    .line 751
    .local v4, "navigationBarVisible":Z
    :goto_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_4

    .line 752
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v6

    .line 753
    .local v6, "uiInsets":Landroid/graphics/Insets;
    iget-object v7, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v8, v6, Landroid/graphics/Insets;->top:I

    iput v8, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingTop:I

    .line 754
    iget-object v7, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v8, v6, Landroid/graphics/Insets;->right:I

    iput v8, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingRight:I

    .line 755
    iget-object v7, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v8, v6, Landroid/graphics/Insets;->bottom:I

    iput v8, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingBottom:I

    .line 756
    iget-object v7, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v8, v6, Landroid/graphics/Insets;->left:I

    iput v8, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingLeft:I

    .line 758
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v7

    .line 759
    .local v7, "imeInsets":Landroid/graphics/Insets;
    iget-object v8, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v9, v7, Landroid/graphics/Insets;->top:I

    iput v9, v8, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetTop:I

    .line 760
    iget-object v8, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v9, v7, Landroid/graphics/Insets;->right:I

    iput v9, v8, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetRight:I

    .line 761
    iget-object v8, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v9, v7, Landroid/graphics/Insets;->bottom:I

    iput v9, v8, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetBottom:I

    .line 762
    iget-object v8, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v9, v7, Landroid/graphics/Insets;->left:I

    iput v9, v8, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetLeft:I

    .line 764
    nop

    .line 765
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v8

    .line 766
    .local v8, "systemGestureInsets":Landroid/graphics/Insets;
    iget-object v9, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v10, v8, Landroid/graphics/Insets;->top:I

    iput v10, v9, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetTop:I

    .line 767
    iget-object v9, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v10, v8, Landroid/graphics/Insets;->right:I

    iput v10, v9, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetRight:I

    .line 768
    iget-object v9, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v10, v8, Landroid/graphics/Insets;->bottom:I

    iput v10, v9, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetBottom:I

    .line 769
    iget-object v9, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v10, v8, Landroid/graphics/Insets;->left:I

    iput v10, v9, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetLeft:I

    .line 774
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v9

    .line 775
    .local v9, "cutout":Landroid/view/DisplayCutout;
    if-eqz v9, :cond_3

    .line 776
    invoke-virtual {v9}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v10

    .line 777
    .local v10, "waterfallInsets":Landroid/graphics/Insets;
    iget-object v11, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget-object v12, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v12, v12, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingTop:I

    iget v13, v10, Landroid/graphics/Insets;->top:I

    .line 779
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 780
    invoke-virtual {v9}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v13

    .line 778
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v11, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingTop:I

    .line 781
    iget-object v11, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget-object v12, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v12, v12, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingRight:I

    iget v13, v10, Landroid/graphics/Insets;->right:I

    .line 783
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 784
    invoke-virtual {v9}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v13

    .line 782
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v11, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingRight:I

    .line 785
    iget-object v11, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget-object v12, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v12, v12, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingBottom:I

    iget v13, v10, Landroid/graphics/Insets;->bottom:I

    .line 787
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 788
    invoke-virtual {v9}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v13

    .line 786
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v11, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingBottom:I

    .line 789
    iget-object v11, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget-object v12, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v12, v12, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingLeft:I

    iget v13, v10, Landroid/graphics/Insets;->left:I

    .line 791
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 792
    invoke-virtual {v9}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v13

    .line 790
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v11, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingLeft:I

    .line 794
    .end local v6    # "uiInsets":Landroid/graphics/Insets;
    .end local v7    # "imeInsets":Landroid/graphics/Insets;
    .end local v8    # "systemGestureInsets":Landroid/graphics/Insets;
    .end local v9    # "cutout":Landroid/view/DisplayCutout;
    .end local v10    # "waterfallInsets":Landroid/graphics/Insets;
    :cond_3
    goto :goto_8

    .line 797
    :cond_4
    sget-object v6, Lio/flutter/embedding/android/FlutterView$ZeroSides;->NONE:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    .line 798
    .local v6, "zeroSides":Lio/flutter/embedding/android/FlutterView$ZeroSides;
    if-nez v4, :cond_5

    .line 799
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->calculateShouldZeroSides()Lio/flutter/embedding/android/FlutterView$ZeroSides;

    move-result-object v6

    .line 804
    :cond_5
    iget-object v7, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v8

    goto :goto_2

    :cond_6
    move v8, v3

    :goto_2
    iput v8, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingTop:I

    .line 805
    iget-object v7, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 806
    sget-object v8, Lio/flutter/embedding/android/FlutterView$ZeroSides;->RIGHT:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    if-eq v6, v8, :cond_8

    sget-object v8, Lio/flutter/embedding/android/FlutterView$ZeroSides;->BOTH:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    if-ne v6, v8, :cond_7

    goto :goto_3

    .line 808
    :cond_7
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v8

    goto :goto_4

    .line 807
    :cond_8
    :goto_3
    move v8, v3

    .line 808
    :goto_4
    iput v8, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingRight:I

    .line 809
    iget-object v7, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 810
    if-eqz v4, :cond_9

    invoke-direct {p0, p1}, Lio/flutter/embedding/android/FlutterView;->guessBottomKeyboardInset(Landroid/view/WindowInsets;)I

    move-result v8

    if-nez v8, :cond_9

    .line 811
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v8

    goto :goto_5

    .line 812
    :cond_9
    move v8, v3

    :goto_5
    iput v8, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingBottom:I

    .line 813
    iget-object v7, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 814
    sget-object v8, Lio/flutter/embedding/android/FlutterView$ZeroSides;->LEFT:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    if-eq v6, v8, :cond_b

    sget-object v8, Lio/flutter/embedding/android/FlutterView$ZeroSides;->BOTH:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    if-ne v6, v8, :cond_a

    goto :goto_6

    .line 816
    :cond_a
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v8

    goto :goto_7

    .line 815
    :cond_b
    :goto_6
    move v8, v3

    .line 816
    :goto_7
    iput v8, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingLeft:I

    .line 819
    iget-object v7, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput v3, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetTop:I

    .line 820
    iget-object v7, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput v3, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetRight:I

    .line 821
    iget-object v7, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-direct {p0, p1}, Lio/flutter/embedding/android/FlutterView;->guessBottomKeyboardInset(Landroid/view/WindowInsets;)I

    move-result v8

    iput v8, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetBottom:I

    .line 822
    iget-object v7, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput v3, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetLeft:I

    .line 827
    .end local v6    # "zeroSides":Lio/flutter/embedding/android/FlutterView$ZeroSides;
    :goto_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v6, "displayCutouts":Ljava/util/List;, "Ljava/util/List<Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;>;"
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    const-string v9, "FlutterView"

    if-lt v7, v8, :cond_c

    .line 829
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v7

    .line 830
    .local v7, "cutout":Landroid/view/DisplayCutout;
    if-eqz v7, :cond_c

    .line 831
    invoke-virtual {v7}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 832
    .local v10, "bounds":Landroid/graphics/Rect;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DisplayCutout area reported with bounds = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    new-instance v11, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;

    sget-object v12, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->CUTOUT:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    sget-object v13, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->UNKNOWN:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    invoke-direct {v11, v10, v12, v13}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;-><init>(Landroid/graphics/Rect;Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    .end local v10    # "bounds":Landroid/graphics/Rect;
    goto :goto_9

    .line 839
    .end local v7    # "cutout":Landroid/view/DisplayCutout;
    :cond_c
    iget-object v7, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-virtual {v7, v6}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->setDisplayCutouts(Ljava/util/List;)V

    .line 844
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x23

    if-lt v7, v8, :cond_d

    .line 845
    iget-object v7, p0, Lio/flutter/embedding/android/FlutterView;->delegate:Lio/flutter/embedding/android/FlutterViewDelegate;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-virtual {v7, v8, v10}, Lio/flutter/embedding/android/FlutterViewDelegate;->growViewportMetricsToCaptionBar(Landroid/content/Context;Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;)V

    .line 848
    :cond_d
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1f

    if-lt v7, v8, :cond_12

    .line 849
    invoke-virtual {p1, v3}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v7

    .line 850
    .local v7, "topLeft":Landroid/view/RoundedCorner;
    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v2

    .line 851
    .local v2, "topRight":Landroid/view/RoundedCorner;
    invoke-virtual {p1, v5}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v5

    .line 852
    .local v5, "bottomRight":Landroid/view/RoundedCorner;
    const/4 v8, 0x3

    invoke-virtual {p1, v8}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v8

    .line 854
    .local v8, "bottomLeft":Landroid/view/RoundedCorner;
    iget-object v10, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v11

    goto :goto_a

    :cond_e
    move v11, v3

    :goto_a
    iput v11, v10, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayCornerRadiusTopLeft:I

    .line 855
    iget-object v10, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v11

    goto :goto_b

    :cond_f
    move v11, v3

    :goto_b
    iput v11, v10, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayCornerRadiusTopRight:I

    .line 856
    iget-object v10, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 857
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v11

    goto :goto_c

    :cond_10
    move v11, v3

    :goto_c
    iput v11, v10, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayCornerRadiusBottomRight:I

    .line 858
    iget-object v10, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 859
    if-eqz v8, :cond_11

    invoke-virtual {v8}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v3

    :cond_11
    iput v3, v10, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayCornerRadiusBottomLeft:I

    .line 862
    .end local v2    # "topRight":Landroid/view/RoundedCorner;
    .end local v5    # "bottomRight":Landroid/view/RoundedCorner;
    .end local v7    # "topLeft":Landroid/view/RoundedCorner;
    .end local v8    # "bottomLeft":Landroid/view/RoundedCorner;
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating window insets (onApplyWindowInsets()):\nStatus bar insets: Top: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Left: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v5, v5, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingLeft:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", Right: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v7, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingRight:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\nKeyboard insets: Bottom: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v7, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetBottom:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetRight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "System Gesture Insets - Left: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Top: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetRight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Bottom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetBottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->sendViewportMetricsToFlutter()V

    .line 888
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 567
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 568
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->createWindowInfoRepo()Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoRepo:Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;

    .line 569
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/util/ViewUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 570
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoRepo:Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 574
    new-instance v1, Lio/flutter/embedding/android/FlutterView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/flutter/embedding/android/FlutterView$$ExternalSyntheticLambda0;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoListener:Landroidx/core/util/Consumer;

    .line 575
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoRepo:Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;

    .line 576
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoListener:Landroidx/core/util/Consumer;

    .line 575
    invoke-virtual {v1, v0, v2, v3}, Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;->addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 578
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 480
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 488
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_0

    .line 489
    const-string v0, "FlutterView"

    const-string v1, "Configuration changed. Sending locales and user settings to Flutter."

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/localization/LocalizationPlugin;->sendLocalesToFlutter(Landroid/content/res/Configuration;)V

    .line 491
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->sendUserSettingsToFlutter()V

    .line 493
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-static {v0, v1}, Lio/flutter/util/ViewUtils;->calculateMaximumDisplayMetrics(Landroid/content/Context;Lio/flutter/util/ViewUtils$DisplayUpdater;)V

    .line 495
    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 909
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0

    .line 913
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->keyboardManager:Lio/flutter/embedding/android/KeyboardManager;

    invoke-virtual {v0, p0, v1, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->createInputConnection(Landroid/view/View;Lio/flutter/embedding/android/KeyboardManager;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 587
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoRepo:Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoListener:Landroidx/core/util/Consumer;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoRepo:Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoListener:Landroidx/core/util/Consumer;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;->removeWindowLayoutInfoListener(Landroidx/core/util/Consumer;)V

    .line 590
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoListener:Landroidx/core/util/Consumer;

    .line 591
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoRepo:Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;

    .line 592
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 593
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 985
    nop

    .line 986
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

    .line 987
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lio/flutter/embedding/android/AndroidTouchProcessor;->onGenericMotionEvent(Landroid/view/MotionEvent;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 988
    .local v0, "handled":Z
    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    return v1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1004
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1008
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {v0, p1}, Lio/flutter/view/AccessibilityBridge;->onAccessibilityHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1009
    .local v0, "handled":Z
    nop

    .line 1013
    return v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1566
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lio/flutter/embedding/android/FlutterView;->widthMode:I

    .line 1567
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lio/flutter/embedding/android/FlutterView;->heightMode:I

    .line 1568
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1569
    return-void
.end method

.method public onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 1
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 1587
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    .line 1590
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    .line 1593
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .line 508
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size changed. Sending Flutter new viewport metrics. FlutterView was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", it is now "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterView"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput p1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->width:I

    .line 520
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput p2, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->height:I

    .line 522
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterView;->isContentSizingEnabled:Z

    const/16 v2, 0x2000

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lio/flutter/embedding/android/FlutterView;->heightMode:I

    if-nez v0, :cond_0

    .line 523
    const-string v0, "FlutterView height is set to wrap content - updating viewport metrics to max"

    invoke-static {v1, v0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput v3, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->minHeight:I

    .line 525
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput v2, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->maxHeight:I

    goto :goto_0

    .line 527
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget-object v4, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v4, v4, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->height:I

    iput v4, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->minHeight:I

    .line 528
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget-object v4, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v4, v4, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->height:I

    iput v4, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->maxHeight:I

    .line 530
    :goto_0
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterView;->isContentSizingEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lio/flutter/embedding/android/FlutterView;->widthMode:I

    if-nez v0, :cond_1

    .line 531
    const-string v0, "FlutterView width is set to wrap content - updating viewport metrics to max"

    invoke-static {v1, v0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput v3, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->minWidth:I

    .line 533
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput v2, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->maxWidth:I

    goto :goto_1

    .line 535
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->width:I

    iput v1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->minWidth:I

    .line 536
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->width:I

    iput v1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->maxWidth:I

    .line 539
    :goto_1
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->sendViewportMetricsToFlutter()V

    .line 540
    return-void
.end method

.method public onTextInputKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1135
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 967
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-nez v0, :cond_0

    .line 968
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 971
    :cond_0
    invoke-virtual {p0, p1}, Lio/flutter/embedding/android/FlutterView;->requestUnbufferedDispatch(Landroid/view/MotionEvent;)V

    .line 973
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/AndroidTouchProcessor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public redispatch(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1140
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1141
    return-void
.end method

.method public removeFlutterEngineAttachmentListener(Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;)V
    .locals 1
    .param p1, "listener"    # Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;

    .line 1496
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1497
    return-void
.end method

.method public removeOnFirstFrameRenderedListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V
    .locals 1
    .param p1, "listener"    # Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 467
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 468
    return-void
.end method

.method public revertImageView(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "onDone"    # Ljava/lang/Runnable;

    .line 1400
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    const-string v1, "FlutterView"

    if-nez v0, :cond_0

    .line 1401
    const-string v0, "Tried to revert the image view, but no image view is used."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    return-void

    .line 1404
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->previousRenderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    if-nez v0, :cond_1

    .line 1405
    const-string v0, "Tried to revert the image view, but no previous surface was used."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    return-void

    .line 1409
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->previousRenderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 1410
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->previousRenderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 1412
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    .line 1414
    .local v0, "renderer":Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    .line 1422
    :cond_2
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    invoke-interface {v1}, Lio/flutter/embedding/engine/renderer/RenderSurface;->resume()V

    .line 1426
    new-instance v1, Lio/flutter/embedding/android/FlutterView$5;

    invoke-direct {v1, p0, v0, p1}, Lio/flutter/embedding/android/FlutterView$5;-><init>(Lio/flutter/embedding/android/FlutterView;Lio/flutter/embedding/engine/renderer/FlutterRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 1443
    return-void

    .line 1415
    :cond_3
    :goto_0
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    invoke-virtual {v1}, Lio/flutter/embedding/android/FlutterImageView;->detachFromRenderer()V

    .line 1416
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->releaseImageView()V

    .line 1417
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1418
    return-void
.end method

.method sendUserSettingsToFlutter()V
    .locals 11

    .line 1510
    nop

    .line 1511
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1514
    .local v0, "isNightModeOn":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1515
    sget-object v1, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$PlatformBrightness;->dark:Lio/flutter/embedding/engine/systemchannels/SettingsChannel$PlatformBrightness;

    goto :goto_1

    .line 1516
    :cond_1
    sget-object v1, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$PlatformBrightness;->light:Lio/flutter/embedding/engine/systemchannels/SettingsChannel$PlatformBrightness;

    :goto_1
    nop

    .line 1518
    .local v1, "brightness":Lio/flutter/embedding/engine/systemchannels/SettingsChannel$PlatformBrightness;
    const/4 v4, 0x0

    .line 1520
    .local v4, "isNativeSpellCheckServiceDefined":Z
    iget-object v5, p0, Lio/flutter/embedding/android/FlutterView;->textServicesManager:Landroid/view/textservice/TextServicesManager;

    if-eqz v5, :cond_6

    .line 1521
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_5

    .line 1522
    iget-object v5, p0, Lio/flutter/embedding/android/FlutterView;->textServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 1523
    invoke-virtual {v5}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckerInfos()Ljava/util/List;

    move-result-object v5

    .line 1524
    .local v5, "enabledSpellCheckerInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/textservice/SpellCheckerInfo;>;"
    const/4 v6, 0x0

    .line 1526
    .local v6, "gboardSpellCheckerEnabled":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/textservice/SpellCheckerInfo;

    .line 1527
    .local v8, "spellCheckerInfo":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.google.android.inputmethod.latin"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1528
    const/4 v6, 0x1

    .line 1529
    goto :goto_3

    .line 1531
    .end local v8    # "spellCheckerInfo":Landroid/view/textservice/SpellCheckerInfo;
    :cond_2
    goto :goto_2

    .line 1535
    :cond_3
    :goto_3
    iget-object v7, p0, Lio/flutter/embedding/android/FlutterView;->textServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 1536
    invoke-virtual {v7}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    move v7, v3

    goto :goto_4

    :cond_4
    move v7, v2

    :goto_4
    move v4, v7

    .line 1537
    .end local v5    # "enabledSpellCheckerInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/textservice/SpellCheckerInfo;>;"
    .end local v6    # "gboardSpellCheckerEnabled":Z
    goto :goto_5

    .line 1538
    :cond_5
    const/4 v4, 0x1

    .line 1542
    :cond_6
    :goto_5
    iget-object v5, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1543
    invoke-virtual {v5}, Lio/flutter/embedding/engine/FlutterEngine;->getSettingsChannel()Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    move-result-object v5

    .line 1544
    invoke-virtual {v5}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel;->startMessage()Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;

    move-result-object v5

    .line 1545
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v5, v6}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;->setTextScaleFactor(F)Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;

    move-result-object v5

    .line 1546
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;->setDisplayMetrics(Landroid/util/DisplayMetrics;)Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;

    move-result-object v5

    .line 1547
    invoke-virtual {v5, v4}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;->setNativeSpellCheckServiceDefined(Z)Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;

    move-result-object v5

    .line 1550
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1549
    const-string v7, "show_password"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_7

    move v2, v3

    .line 1548
    :cond_7
    invoke-virtual {v5, v2}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;->setBrieflyShowPassword(Z)Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;

    move-result-object v2

    .line 1552
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;->setUse24HourFormat(Z)Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;

    move-result-object v2

    .line 1553
    invoke-virtual {v2, v1}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;->setPlatformBrightness(Lio/flutter/embedding/engine/systemchannels/SettingsChannel$PlatformBrightness;)Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;

    move-result-object v2

    .line 1554
    invoke-virtual {v2}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;->send()V

    .line 1555
    return-void
.end method

.method public setDelegate(Lio/flutter/embedding/android/FlutterViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lio/flutter/embedding/android/FlutterViewDelegate;

    .line 1561
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->delegate:Lio/flutter/embedding/android/FlutterViewDelegate;

    .line 1562
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 1606
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1610
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    instance-of v0, v0, Lio/flutter/embedding/android/FlutterSurfaceView;

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    check-cast v0, Lio/flutter/embedding/android/FlutterSurfaceView;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/FlutterSurfaceView;->setVisibility(I)V

    .line 1613
    :cond_0
    return-void
.end method

.method protected setWindowInfoListenerDisplayFeatures(Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 9
    .param p1, "layoutInfo"    # Landroidx/window/layout/WindowLayoutInfo;

    .line 601
    invoke-virtual {p1}, Landroidx/window/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object v0

    .line 602
    .local v0, "newDisplayFeatures":Ljava/util/List;, "Ljava/util/List<Landroidx/window/layout/DisplayFeature;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v1, "flutterDisplayFeatures":Ljava/util/List;, "Ljava/util/List<Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/layout/DisplayFeature;

    .line 607
    .local v3, "displayFeature":Landroidx/window/layout/DisplayFeature;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WindowInfoTracker Display Feature reported with bounds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 610
    invoke-interface {v3}, Landroidx/window/layout/DisplayFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 612
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 607
    const-string v5, "FlutterView"

    invoke-static {v5, v4}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    instance-of v4, v3, Landroidx/window/layout/FoldingFeature;

    if-eqz v4, :cond_3

    .line 616
    move-object v4, v3

    check-cast v4, Landroidx/window/layout/FoldingFeature;

    .line 617
    .local v4, "feature":Landroidx/window/layout/FoldingFeature;
    invoke-interface {v4}, Landroidx/window/layout/FoldingFeature;->getOcclusionType()Landroidx/window/layout/FoldingFeature$OcclusionType;

    move-result-object v5

    sget-object v6, Landroidx/window/layout/FoldingFeature$OcclusionType;->FULL:Landroidx/window/layout/FoldingFeature$OcclusionType;

    if-ne v5, v6, :cond_0

    .line 618
    sget-object v5, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->HINGE:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    .local v5, "type":Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;
    goto :goto_1

    .line 620
    .end local v5    # "type":Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;
    :cond_0
    sget-object v5, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->FOLD:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    .line 622
    .restart local v5    # "type":Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;
    :goto_1
    invoke-interface {v4}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v6

    sget-object v7, Landroidx/window/layout/FoldingFeature$State;->FLAT:Landroidx/window/layout/FoldingFeature$State;

    if-ne v6, v7, :cond_1

    .line 623
    sget-object v6, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->POSTURE_FLAT:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    .local v6, "state":Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;
    goto :goto_2

    .line 624
    .end local v6    # "state":Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;
    :cond_1
    invoke-interface {v4}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v6

    sget-object v7, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    if-ne v6, v7, :cond_2

    .line 625
    sget-object v6, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->POSTURE_HALF_OPENED:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    .restart local v6    # "state":Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;
    goto :goto_2

    .line 627
    .end local v6    # "state":Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;
    :cond_2
    sget-object v6, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->UNKNOWN:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    .line 629
    .restart local v6    # "state":Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;
    :goto_2
    new-instance v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;

    .line 630
    invoke-interface {v3}, Landroidx/window/layout/DisplayFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v7, v8, v5, v6}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;-><init>(Landroid/graphics/Rect;Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;)V

    .line 629
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    .end local v4    # "feature":Landroidx/window/layout/FoldingFeature;
    .end local v5    # "type":Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;
    .end local v6    # "state":Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;
    goto :goto_3

    .line 632
    :cond_3
    new-instance v4, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;

    .line 634
    invoke-interface {v3}, Landroidx/window/layout/DisplayFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    sget-object v6, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->UNKNOWN:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    sget-object v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->UNKNOWN:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    invoke-direct {v4, v5, v6, v7}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;-><init>(Landroid/graphics/Rect;Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;)V

    .line 632
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    .end local v3    # "displayFeature":Landroidx/window/layout/DisplayFeature;
    :goto_3
    goto/16 :goto_0

    .line 639
    :cond_4
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-virtual {v2, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->setDisplayFeatures(Ljava/util/List;)V

    .line 640
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->sendViewportMetricsToFlutter()V

    .line 641
    return-void
.end method
