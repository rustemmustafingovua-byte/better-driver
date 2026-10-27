.class public Lio/flutter/embedding/engine/FlutterJNI;
.super Ljava/lang/Object;
.source "FlutterJNI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/FlutterJNI$AsyncWaitForVsyncDelegate;,
        Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;,
        Lio/flutter/embedding/engine/FlutterJNI$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterJNI"

.field private static asyncWaitForVsyncDelegate:Lio/flutter/embedding/engine/FlutterJNI$AsyncWaitForVsyncDelegate;

.field private static displayDensity:F

.field private static displayHeight:F

.field private static displayWidth:F

.field private static initCalled:Z

.field private static loadLibraryCalled:Z

.field private static prefetchDefaultFontManagerCalled:Z

.field private static refreshRateFPS:F

.field private static vmServiceUri:Ljava/lang/String;


# instance fields
.field private accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;

.field private deferredComponentManager:Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

.field private final engineLifecycleListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final flutterUiDisplayListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;",
            ">;"
        }
    .end annotation
.end field

.field private final flutterUiResizeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;",
            ">;"
        }
    .end annotation
.end field

.field private localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

.field private final mainLooper:Landroid/os/Looper;

.field private nativeShellHolderId:Ljava/lang/Long;

.field private platformMessageHandler:Lio/flutter/embedding/engine/dart/PlatformMessageHandler;

.field private platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

.field private platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

.field private settingsChannel:Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

.field private shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 152
    const/4 v0, 0x0

    sput-boolean v0, Lio/flutter/embedding/engine/FlutterJNI;->loadLibraryCalled:Z

    .line 173
    sput-boolean v0, Lio/flutter/embedding/engine/FlutterJNI;->prefetchDefaultFontManagerCalled:Z

    .line 214
    sput-boolean v0, Lio/flutter/embedding/engine/FlutterJNI;->initCalled:Z

    .line 226
    const/high16 v0, 0x42700000    # 60.0f

    sput v0, Lio/flutter/embedding/engine/FlutterJNI;->refreshRateFPS:F

    .line 228
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lio/flutter/embedding/engine/FlutterJNI;->displayWidth:F

    .line 229
    sput v0, Lio/flutter/embedding/engine/FlutterJNI;->displayHeight:F

    .line 230
    sput v0, Lio/flutter/embedding/engine/FlutterJNI;->displayDensity:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 386
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->engineLifecycleListeners:Ljava/util/Set;

    .line 389
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiDisplayListeners:Ljava/util/Set;

    .line 393
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiResizeListeners:Ljava/util/Set;

    .line 121
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->mainLooper:Landroid/os/Looper;

    .line 122
    return-void
.end method

.method private static asyncWaitForVsync(J)V
    .locals 2
    .param p0, "cookie"    # J

    .line 313
    sget-object v0, Lio/flutter/embedding/engine/FlutterJNI;->asyncWaitForVsyncDelegate:Lio/flutter/embedding/engine/FlutterJNI$AsyncWaitForVsyncDelegate;

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lio/flutter/embedding/engine/FlutterJNI;->asyncWaitForVsyncDelegate:Lio/flutter/embedding/engine/FlutterJNI$AsyncWaitForVsyncDelegate;

    invoke-interface {v0, p0, p1}, Lio/flutter/embedding/engine/FlutterJNI$AsyncWaitForVsyncDelegate;->asyncWaitForVsync(J)V

    .line 319
    return-void

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An AsyncWaitForVsyncDelegate must be registered with FlutterJNI before asyncWaitForVsync() is invoked."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeImage(Ljava/nio/ByteBuffer;J)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "imageGeneratorAddress"    # J

    .line 576
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 577
    new-instance v0, Lio/flutter/embedding/engine/FlutterJNI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-static {p0, v0}, Lio/flutter/embedding/engine/image/FlutterImageDecoder;->decodeImage(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 583
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private ensureAttachedToNative()V
    .locals 2

    .line 514
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 518
    return-void

    .line 515
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot execute operation because FlutterJNI is not attached to native."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureNotAttachedToNative()V
    .locals 2

    .line 507
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 511
    return-void

    .line 508
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot execute operation because FlutterJNI is attached to native."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureRunningOnMainThread()V
    .locals 3

    .line 1692
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterJNI;->mainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    .line 1697
    return-void

    .line 1693
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Methods marked with @UiThread must be executed on the main thread. Current thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1695
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVMServiceUri()Ljava/lang/String;
    .locals 1

    .line 255
    sget-object v0, Lio/flutter/embedding/engine/FlutterJNI;->vmServiceUri:Ljava/lang/String;

    return-object v0
.end method

.method private handlePlatformMessageResponse(ILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "replyId"    # I
    .param p2, "reply"    # Ljava/nio/ByteBuffer;

    .line 1145
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformMessageHandler:Lio/flutter/embedding/engine/dart/PlatformMessageHandler;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformMessageHandler:Lio/flutter/embedding/engine/dart/PlatformMessageHandler;

    invoke-interface {v0, p1, p2}, Lio/flutter/embedding/engine/dart/PlatformMessageHandler;->handlePlatformMessageResponse(ILjava/nio/ByteBuffer;)V

    .line 1148
    :cond_0
    return-void
.end method

.method static synthetic lambda$decodeImage$1(JII)V
    .locals 0
    .param p0, "imageGeneratorAddress"    # J
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 580
    invoke-static {p0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->nativeImageHeaderCallback(JII)V

    .line 581
    return-void
.end method

.method static synthetic lambda$loadLibrary$0(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 148
    const-string v0, "FlutterJNI"

    invoke-static {v0, p0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native nativeAttach(Lio/flutter/embedding/engine/FlutterJNI;)J
.end method

.method private native nativeCleanupMessageData(J)V
.end method

.method private native nativeDeferredComponentInstallFailure(ILjava/lang/String;Z)V
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeDispatchEmptyPlatformMessage(JLjava/lang/String;I)V
.end method

.method private native nativeDispatchPlatformMessage(JLjava/lang/String;Ljava/nio/ByteBuffer;II)V
.end method

.method private native nativeDispatchPointerDataPacket(JLjava/nio/ByteBuffer;I)V
.end method

.method private native nativeDispatchSemanticsAction(JIILjava/nio/ByteBuffer;I)V
.end method

.method private native nativeFlutterTextUtilsIsEmoji(I)Z
.end method

.method private native nativeFlutterTextUtilsIsEmojiModifier(I)Z
.end method

.method private native nativeFlutterTextUtilsIsEmojiModifierBase(I)Z
.end method

.method private native nativeFlutterTextUtilsIsRegionalIndicator(I)Z
.end method

.method private native nativeFlutterTextUtilsIsVariationSelector(I)Z
.end method

.method private native nativeGetBitmap(J)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetIsSoftwareRenderingEnabled()Z
.end method

.method public static native nativeImageHeaderCallback(JII)V
.end method

.method private static native nativeInit(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
.end method

.method private native nativeInvokePlatformMessageEmptyResponseCallback(JI)V
.end method

.method private native nativeInvokePlatformMessageResponseCallback(JILjava/nio/ByteBuffer;I)V
.end method

.method private native nativeIsSurfaceControlEnabled(J)Z
.end method

.method private native nativeLoadDartDeferredLibrary(JI[Ljava/lang/String;)V
.end method

.method public static native nativeLookupCallbackInformation(J)Lio/flutter/view/FlutterCallbackInformation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native nativeMarkTextureFrameAvailable(JJ)V
.end method

.method private native nativeNotifyLowMemoryWarning(J)V
.end method

.method private native nativeOnVsync(JJJ)V
.end method

.method private static native nativePrefetchDefaultFontManager()V
.end method

.method private native nativeRegisterImageTexture(JJLjava/lang/ref/WeakReference;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/ref/WeakReference<",
            "Lio/flutter/view/TextureRegistry$ImageConsumer;",
            ">;Z)V"
        }
    .end annotation
.end method

.method private native nativeRegisterTexture(JJLjava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/ref/WeakReference<",
            "Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeRunBundleAndSnapshotFromLibrary(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/res/AssetManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation
.end method

.method private native nativeScheduleFrame(J)V
.end method

.method private native nativeSetAccessibilityFeatures(JI)V
.end method

.method private native nativeSetSemanticsEnabled(JZ)V
.end method

.method private native nativeSetViewportMetrics(JFIIIIIIIIIIIIIII[I[I[IIIIIIIII)V
.end method

.method private native nativeSpawn(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)Lio/flutter/embedding/engine/FlutterJNI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)",
            "Lio/flutter/embedding/engine/FlutterJNI;"
        }
    .end annotation
.end method

.method private native nativeSurfaceChanged(JII)V
.end method

.method private native nativeSurfaceCreated(JLandroid/view/Surface;)V
.end method

.method private native nativeSurfaceDestroyed(J)V
.end method

.method private native nativeSurfaceWindowChanged(JLandroid/view/Surface;)V
.end method

.method private native nativeUnregisterTexture(JJ)V
.end method

.method private native nativeUpdateDisplayMetrics(J)V
.end method

.method private native nativeUpdateJavaAssetManager(JLandroid/content/res/AssetManager;Ljava/lang/String;)V
.end method

.method private native nativeUpdateRefreshRate(F)V
.end method

.method private onPreEngineRestart()V
    .locals 2

    .line 1271
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->engineLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    .line 1272
    .local v1, "listener":Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;
    invoke-interface {v1}, Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;->onPreEngineRestart()V

    .line 1273
    .end local v1    # "listener":Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;
    goto :goto_0

    .line 1274
    :cond_0
    return-void
.end method

.method private setApplicationLocale(Ljava/lang/String;)V
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;

    .line 842
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 843
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;->setLocale(Ljava/lang/String;)V

    .line 846
    :cond_0
    return-void
.end method

.method private updateCustomAccessibilityActions(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "strings"    # [Ljava/lang/String;

    .line 879
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 880
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;

    invoke-interface {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;->updateCustomAccessibilityActions(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V

    .line 883
    :cond_0
    return-void
.end method

.method private updateSemantics(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "stringAttributeArgs"    # [Ljava/nio/ByteBuffer;

    .line 832
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 833
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;

    invoke-interface {v0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;->updateSemantics(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V

    .line 836
    :cond_0
    return-void
.end method


# virtual methods
.method public IsSurfaceControlEnabled()Z
    .locals 2

    .line 1746
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeIsSurfaceControlEnabled(J)Z

    move-result v0

    return v0
.end method

.method public addEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V
    .locals 1
    .param p1, "engineLifecycleListener"    # Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    .line 1253
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1254
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->engineLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1255
    return-void
.end method

.method public addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V
    .locals 1
    .param p1, "listener"    # Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 529
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 530
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiDisplayListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 531
    return-void
.end method

.method public addResizingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;)V
    .locals 1
    .param p1, "listener"    # Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;

    .line 548
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 549
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiResizeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 550
    return-void
.end method

.method public applyTransactions()V
    .locals 2

    .line 1366
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->applyTransactions()V

    .line 1370
    return-void

    .line 1367
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachToNative()V
    .locals 2

    .line 415
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 416
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureNotAttachedToNative()V

    .line 417
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 419
    :try_start_0
    invoke-virtual {p0, p0}, Lio/flutter/embedding/engine/FlutterJNI;->performNativeAttach(Lio/flutter/embedding/engine/FlutterJNI;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 422
    nop

    .line 423
    return-void

    .line 421
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 422
    throw v0
.end method

.method public cleanupMessageData(J)V
    .locals 0
    .param p1, "messageData"    # J

    .line 1124
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeCleanupMessageData(J)V

    .line 1125
    return-void
.end method

.method public computePlatformResolvedLocale([Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "strings"    # [Ljava/lang/String;

    .line 1473
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1474
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 1476
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    .local v0, "supportedLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    const/4 v2, 0x3

    .line 1478
    .local v2, "localeDataLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 1479
    add-int/lit8 v4, v3, 0x0

    aget-object v4, p1, v4

    .line 1480
    .local v4, "languageCode":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    aget-object v5, p1, v5

    .line 1481
    .local v5, "countryCode":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x2

    aget-object v6, p1, v6

    .line 1483
    .local v6, "scriptCode":Ljava/lang/String;
    new-instance v7, Ljava/util/Locale$Builder;

    invoke-direct {v7}, Ljava/util/Locale$Builder;-><init>()V

    .line 1484
    .local v7, "localeBuilder":Ljava/util/Locale$Builder;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1485
    invoke-virtual {v7, v4}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 1487
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1488
    invoke-virtual {v7, v5}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 1490
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1491
    invoke-virtual {v7, v6}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 1493
    :cond_3
    invoke-virtual {v7}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1478
    .end local v4    # "languageCode":Ljava/lang/String;
    .end local v5    # "countryCode":Ljava/lang/String;
    .end local v6    # "scriptCode":Ljava/lang/String;
    .end local v7    # "localeBuilder":Ljava/util/Locale$Builder;
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    .line 1496
    .end local v3    # "i":I
    :cond_4
    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterJNI;->localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-virtual {v3, v0}, Lio/flutter/plugin/localization/LocalizationPlugin;->resolveNativeLocale(Ljava/util/List;)Ljava/util/Locale;

    move-result-object v3

    .line 1498
    .local v3, "result":Ljava/util/Locale;
    if-nez v3, :cond_5

    .line 1499
    new-array v1, v1, [Ljava/lang/String;

    return-object v1

    .line 1501
    :cond_5
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    .line 1502
    .local v4, "output":[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1503
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 1504
    invoke-virtual {v3}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v4, v5

    .line 1505
    return-object v4
.end method

.method public createOverlaySurface()Lio/flutter/embedding/engine/FlutterOverlaySurface;
    .locals 2

    .line 1312
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1313
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->createOverlaySurface()Lio/flutter/embedding/engine/FlutterOverlaySurface;

    move-result-object v0

    return-object v0

    .line 1314
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "platformViewsController must be set before attempting to position an overlay surface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createOverlaySurface2()Lio/flutter/embedding/engine/FlutterOverlaySurface;
    .locals 2

    .line 1386
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->createOverlaySurface()Lio/flutter/embedding/engine/FlutterOverlaySurface;

    move-result-object v0

    return-object v0

    .line 1387
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "platformViewsController must be set before attempting to position an overlay surface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 2

    .line 1346
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->createTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0

    .line 1347
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deferredComponentInstallFailure(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "loadingUnitId"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "isTransient"    # Z

    .line 1637
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1638
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->nativeDeferredComponentInstallFailure(ILjava/lang/String;Z)V

    .line 1639
    return-void
.end method

.method public destroyOverlaySurface2()V
    .locals 2

    .line 1419
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1420
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->destroyOverlaySurface()V

    .line 1425
    return-void

    .line 1421
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "platformViewsController must be set before attempting to destroy an overlay surface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroyOverlaySurfaces()V
    .locals 2

    .line 1323
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1324
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->destroyOverlaySurfaces()V

    .line 1329
    return-void

    .line 1325
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "platformViewsController must be set before attempting to destroy an overlay surface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detachFromNativeAndReleaseResources()V
    .locals 2

    .line 493
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 494
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 495
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 497
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeDestroy(J)V

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 501
    nop

    .line 502
    return-void

    .line 500
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 501
    throw v0
.end method

.method public dispatchEmptyPlatformMessage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "responseId"    # I

    .line 1156
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1157
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeDispatchEmptyPlatformMessage(JLjava/lang/String;I)V

    goto :goto_0

    .line 1160
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to send a platform message to Flutter, but FlutterJNI was detached from native C++. Could not send. Channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Response ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterJNI"

    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    :goto_0
    return-void
.end method

.method public dispatchPlatformMessage(Ljava/lang/String;Ljava/nio/ByteBuffer;II)V
    .locals 8
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .param p3, "position"    # I
    .param p4, "responseId"    # I

    .line 1177
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1178
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    .end local p1    # "channel":Ljava/lang/String;
    .end local p2    # "message":Ljava/nio/ByteBuffer;
    .end local p3    # "position":I
    .end local p4    # "responseId":I
    .local v4, "channel":Ljava/lang/String;
    .local v5, "message":Ljava/nio/ByteBuffer;
    .local v6, "position":I
    .local v7, "responseId":I
    invoke-direct/range {v1 .. v7}, Lio/flutter/embedding/engine/FlutterJNI;->nativeDispatchPlatformMessage(JLjava/lang/String;Ljava/nio/ByteBuffer;II)V

    goto :goto_0

    .line 1181
    .end local v4    # "channel":Ljava/lang/String;
    .end local v5    # "message":Ljava/nio/ByteBuffer;
    .end local v6    # "position":I
    .end local v7    # "responseId":I
    .restart local p1    # "channel":Ljava/lang/String;
    .restart local p2    # "message":Ljava/nio/ByteBuffer;
    .restart local p3    # "position":I
    .restart local p4    # "responseId":I
    :cond_0
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    .end local p1    # "channel":Ljava/lang/String;
    .end local p2    # "message":Ljava/nio/ByteBuffer;
    .end local p3    # "position":I
    .end local p4    # "responseId":I
    .restart local v4    # "channel":Ljava/lang/String;
    .restart local v5    # "message":Ljava/nio/ByteBuffer;
    .restart local v6    # "position":I
    .restart local v7    # "responseId":I
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tried to send a platform message to Flutter, but FlutterJNI was detached from native C++. Could not send. Channel: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". Response ID: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FlutterJNI"

    invoke-static {p2, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :goto_0
    return-void
.end method

.method public dispatchPointerDataPacket(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # I

    .line 780
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 781
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 782
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeDispatchPointerDataPacket(JLjava/nio/ByteBuffer;I)V

    .line 783
    return-void
.end method

.method public dispatchSemanticsAction(IILjava/nio/ByteBuffer;I)V
    .locals 8
    .param p1, "nodeId"    # I
    .param p2, "action"    # I
    .param p3, "args"    # Ljava/nio/ByteBuffer;
    .param p4, "argsPosition"    # I

    .line 915
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 916
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 917
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "nodeId":I
    .end local p2    # "action":I
    .end local p3    # "args":Ljava/nio/ByteBuffer;
    .end local p4    # "argsPosition":I
    .local v4, "nodeId":I
    .local v5, "action":I
    .local v6, "args":Ljava/nio/ByteBuffer;
    .local v7, "argsPosition":I
    invoke-direct/range {v1 .. v7}, Lio/flutter/embedding/engine/FlutterJNI;->nativeDispatchSemanticsAction(JIILjava/nio/ByteBuffer;I)V

    .line 918
    return-void
.end method

.method public dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V
    .locals 1
    .param p1, "nodeId"    # I
    .param p2, "action"    # Lio/flutter/view/AccessibilityBridge$Action;

    .line 887
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    .line 888
    return-void
.end method

.method public dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V
    .locals 3
    .param p1, "nodeId"    # I
    .param p2, "action"    # Lio/flutter/view/AccessibilityBridge$Action;
    .param p3, "args"    # Ljava/lang/Object;

    .line 893
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 895
    const/4 v0, 0x0

    .line 896
    .local v0, "encodedArgs":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 897
    .local v1, "position":I
    if-eqz p3, :cond_0

    .line 898
    sget-object v2, Lio/flutter/plugin/common/StandardMessageCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-virtual {v2, p3}, Lio/flutter/plugin/common/StandardMessageCodec;->encodeMessage(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 899
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 901
    :cond_0
    iget v2, p2, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    invoke-virtual {p0, p1, v2, v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(IILjava/nio/ByteBuffer;I)V

    .line 902
    return-void
.end method

.method public endFrame2()V
    .locals 2

    .line 1376
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->onEndFrame()V

    .line 1380
    return-void

    .line 1377
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 1668
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1669
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 1670
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeGetBitmap(J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getIsSoftwareRenderingEnabled()Z
    .locals 1

    .line 244
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->nativeGetIsSoftwareRenderingEnabled()Z

    move-result v0

    return v0
.end method

.method public getScaledFontSize(FI)F
    .locals 3
    .param p1, "fontSize"    # F
    .param p2, "configurationId"    # I

    .line 1512
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->settingsChannel:Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    if-nez v0, :cond_0

    .line 1513
    const/4 v0, 0x0

    goto :goto_0

    .line 1514
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->settingsChannel:Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    invoke-virtual {v0, p2}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel;->getPastDisplayMetrics(I)Landroid/util/DisplayMetrics;

    move-result-object v0

    :goto_0
    nop

    .line 1515
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    if-nez v0, :cond_1

    .line 1516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScaledFontSize called with configurationId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which can\'t be found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlutterJNI"

    invoke-static {v2, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    const/high16 v1, -0x40800000    # -1.0f

    return v1

    .line 1523
    :cond_1
    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    return v1
.end method

.method public handlePlatformMessage(Ljava/lang/String;Ljava/nio/ByteBuffer;IJ)V
    .locals 7
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .param p3, "replyId"    # I
    .param p4, "messageData"    # J

    .line 1135
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformMessageHandler:Lio/flutter/embedding/engine/dart/PlatformMessageHandler;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformMessageHandler:Lio/flutter/embedding/engine/dart/PlatformMessageHandler;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .end local p1    # "channel":Ljava/lang/String;
    .end local p2    # "message":Ljava/nio/ByteBuffer;
    .end local p3    # "replyId":I
    .end local p4    # "messageData":J
    .local v2, "channel":Ljava/lang/String;
    .local v3, "message":Ljava/nio/ByteBuffer;
    .local v4, "replyId":I
    .local v5, "messageData":J
    invoke-interface/range {v1 .. v6}, Lio/flutter/embedding/engine/dart/PlatformMessageHandler;->handleMessageFromDart(Ljava/lang/String;Ljava/nio/ByteBuffer;IJ)V

    goto :goto_0

    .line 1138
    .end local v2    # "channel":Ljava/lang/String;
    .end local v3    # "message":Ljava/nio/ByteBuffer;
    .end local v4    # "replyId":I
    .end local v5    # "messageData":J
    .restart local p1    # "channel":Ljava/lang/String;
    .restart local p2    # "message":Ljava/nio/ByteBuffer;
    .restart local p3    # "replyId":I
    .restart local p4    # "messageData":J
    :cond_0
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .end local p1    # "channel":Ljava/lang/String;
    .end local p2    # "message":Ljava/nio/ByteBuffer;
    .end local p3    # "replyId":I
    .end local p4    # "messageData":J
    .restart local v2    # "channel":Ljava/lang/String;
    .restart local v3    # "message":Ljava/nio/ByteBuffer;
    .restart local v4    # "replyId":I
    .restart local v5    # "messageData":J
    invoke-direct {p0, v5, v6}, Lio/flutter/embedding/engine/FlutterJNI;->nativeCleanupMessageData(J)V

    .line 1140
    :goto_0
    return-void
.end method

.method public hideOverlaySurface2()V
    .locals 2

    .line 1408
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->hideOverlaySurface()V

    .line 1413
    return-void

    .line 1409
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "platformViewsController must be set before attempting to destroy an overlay surface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hidePlatformView2(I)V
    .locals 2
    .param p1, "viewId"    # I

    .line 1452
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1453
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->hidePlatformView(I)V

    .line 1458
    return-void

    .line 1454
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "platformViewsController must be set before attempting to hide a platform view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "bundlePath"    # Ljava/lang/String;
    .param p4, "appStoragePath"    # Ljava/lang/String;
    .param p5, "engineCachesPath"    # Ljava/lang/String;
    .param p6, "initTimeMillis"    # J
    .param p8, "apiLevel"    # I

    .line 205
    sget-boolean v0, Lio/flutter/embedding/engine/FlutterJNI;->initCalled:Z

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "FlutterJNI"

    const-string v1, "FlutterJNI.init called more than once"

    invoke-static {v0, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_0
    invoke-static/range {p1 .. p8}, Lio/flutter/embedding/engine/FlutterJNI;->nativeInit(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 211
    const/4 v0, 0x1

    sput-boolean v0, Lio/flutter/embedding/engine/FlutterJNI;->initCalled:Z

    .line 212
    return-void
.end method

.method public invokePlatformMessageEmptyResponseCallback(I)V
    .locals 3
    .param p1, "responseId"    # I

    .line 1200
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1202
    :try_start_0
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeInvokePlatformMessageEmptyResponseCallback(JI)V

    goto :goto_0

    .line 1205
    :cond_0
    const-string v0, "FlutterJNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to send a platform message response, but FlutterJNI was detached from native C++. Could not send. Response ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    :goto_0
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1212
    nop

    .line 1213
    return-void

    .line 1211
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1212
    throw v0
.end method

.method public invokePlatformMessageResponseCallback(ILjava/nio/ByteBuffer;I)V
    .locals 7
    .param p1, "responseId"    # I
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .param p3, "position"    # I

    .line 1222
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1225
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1227
    :try_start_0
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    .line 1229
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1228
    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    .end local p1    # "responseId":I
    .end local p2    # "message":Ljava/nio/ByteBuffer;
    .end local p3    # "position":I
    .local v4, "responseId":I
    .local v5, "message":Ljava/nio/ByteBuffer;
    .local v6, "position":I
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lio/flutter/embedding/engine/FlutterJNI;->nativeInvokePlatformMessageResponseCallback(JILjava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 1231
    .end local v4    # "responseId":I
    .end local v5    # "message":Ljava/nio/ByteBuffer;
    .end local v6    # "position":I
    .restart local p1    # "responseId":I
    .restart local p2    # "message":Ljava/nio/ByteBuffer;
    .restart local p3    # "position":I
    :cond_0
    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    .end local p1    # "responseId":I
    .end local p2    # "message":Ljava/nio/ByteBuffer;
    .end local p3    # "position":I
    .restart local v4    # "responseId":I
    .restart local v5    # "message":Ljava/nio/ByteBuffer;
    .restart local v6    # "position":I
    const-string p1, "FlutterJNI"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Tried to send a platform message response, but FlutterJNI was detached from native C++. Could not send. Response ID: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1237
    :goto_0
    iget-object p1, v1, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1238
    nop

    .line 1239
    return-void

    .line 1237
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v4    # "responseId":I
    .end local v5    # "message":Ljava/nio/ByteBuffer;
    .end local v6    # "position":I
    .restart local p1    # "responseId":I
    .restart local p2    # "message":Ljava/nio/ByteBuffer;
    .restart local p3    # "position":I
    :catchall_1
    move-exception v0

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object p1, v0

    .end local p1    # "responseId":I
    .end local p2    # "message":Ljava/nio/ByteBuffer;
    .end local p3    # "position":I
    .restart local v4    # "responseId":I
    .restart local v5    # "message":Ljava/nio/ByteBuffer;
    .restart local v6    # "position":I
    :goto_1
    iget-object p2, v1, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1238
    throw p1

    .line 1223
    .end local v4    # "responseId":I
    .end local v5    # "message":Ljava/nio/ByteBuffer;
    .end local v6    # "position":I
    .restart local p1    # "responseId":I
    .restart local p2    # "message":Ljava/nio/ByteBuffer;
    .restart local p3    # "position":I
    :cond_1
    move v4, p1

    move-object v5, p2

    .end local p1    # "responseId":I
    .end local p2    # "message":Ljava/nio/ByteBuffer;
    .restart local v4    # "responseId":I
    .restart local v5    # "message":Ljava/nio/ByteBuffer;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expected a direct ByteBuffer."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAttached()Z
    .locals 1

    .line 404
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCodePointEmoji(I)Z
    .locals 1
    .param p1, "codePoint"    # I

    .line 343
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeFlutterTextUtilsIsEmoji(I)Z

    move-result v0

    return v0
.end method

.method public isCodePointEmojiModifier(I)Z
    .locals 1
    .param p1, "codePoint"    # I

    .line 349
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeFlutterTextUtilsIsEmojiModifier(I)Z

    move-result v0

    return v0
.end method

.method public isCodePointEmojiModifierBase(I)Z
    .locals 1
    .param p1, "codePoint"    # I

    .line 355
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeFlutterTextUtilsIsEmojiModifierBase(I)Z

    move-result v0

    return v0
.end method

.method public isCodePointRegionalIndicator(I)Z
    .locals 1
    .param p1, "codePoint"    # I

    .line 367
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeFlutterTextUtilsIsRegionalIndicator(I)Z

    move-result v0

    return v0
.end method

.method public isCodePointVariantSelector(I)Z
    .locals 1
    .param p1, "codePoint"    # I

    .line 361
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeFlutterTextUtilsIsVariationSelector(I)Z

    move-result v0

    return v0
.end method

.method public loadDartDeferredLibrary(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "loadingUnitId"    # I
    .param p2, "searchPaths"    # [Ljava/lang/String;

    .line 1588
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1589
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 1590
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeLoadDartDeferredLibrary(JI[Ljava/lang/String;)V

    .line 1591
    return-void
.end method

.method public loadLibrary(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 145
    sget-boolean v0, Lio/flutter/embedding/engine/FlutterJNI;->loadLibraryCalled:Z

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "FlutterJNI"

    const-string v1, "FlutterJNI.loadLibrary called more than once"

    invoke-static {v0, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    new-instance v0, Lio/flutter/embedding/engine/FlutterJNI$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/flutter/embedding/engine/FlutterJNI$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/getkeepsafe/relinker/ReLinker;->log(Lcom/getkeepsafe/relinker/ReLinker$Logger;)Lcom/getkeepsafe/relinker/ReLinkerInstance;

    move-result-object v0

    const-string v1, "flutter"

    invoke-virtual {v0, p1, v1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x1

    sput-boolean v0, Lio/flutter/embedding/engine/FlutterJNI;->loadLibraryCalled:Z

    .line 150
    return-void
.end method

.method public markTextureFrameAvailable(J)V
    .locals 2
    .param p1, "textureId"    # J

    .line 1014
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1015
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 1016
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeMarkTextureFrameAvailable(JJ)V

    .line 1017
    return-void
.end method

.method public maybeResizeSurfaceView(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1334
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiResizeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;

    .line 1335
    .local v1, "listener":Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;
    invoke-interface {v1, p1, p2}, Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;->resizeEngineView(II)V

    .line 1336
    .end local v1    # "listener":Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;
    goto :goto_0

    .line 1337
    :cond_0
    return-void
.end method

.method public notifyLowMemoryWarning()V
    .locals 2

    .line 1684
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1685
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 1686
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeNotifyLowMemoryWarning(J)V

    .line 1687
    return-void
.end method

.method public onBeginFrame()V
    .locals 2

    .line 1290
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1291
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->onBeginFrame()V

    .line 1296
    return-void

    .line 1292
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "platformViewsController must be set before attempting to begin the frame"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDisplayOverlaySurface(IIIII)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 1279
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1280
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    if-eqz v0, :cond_0

    .line 1284
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "id":I
    .end local p2    # "x":I
    .end local p3    # "y":I
    .end local p4    # "width":I
    .end local p5    # "height":I
    .local v2, "id":I
    .local v3, "x":I
    .local v4, "y":I
    .local v5, "width":I
    .local v6, "height":I
    invoke-virtual/range {v1 .. v6}, Lio/flutter/plugin/platform/PlatformViewsController;->onDisplayOverlaySurface(IIIII)V

    .line 1285
    return-void

    .line 1281
    .end local v2    # "id":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v5    # "width":I
    .end local v6    # "height":I
    .restart local p1    # "id":I
    .restart local p2    # "x":I
    .restart local p3    # "y":I
    .restart local p4    # "width":I
    .restart local p5    # "height":I
    :cond_0
    move v2, p1

    move v3, p2

    .end local p1    # "id":I
    .end local p2    # "x":I
    .restart local v2    # "id":I
    .restart local v3    # "x":I
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "platformViewsController must be set before attempting to position an overlay surface"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDisplayPlatformView(IIIIIIILio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;)V
    .locals 10
    .param p1, "viewId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "viewWidth"    # I
    .param p7, "viewHeight"    # I
    .param p8, "mutatorsStack"    # Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;

    .line 1657
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1658
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    if-eqz v0, :cond_0

    .line 1662
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lio/flutter/plugin/platform/PlatformViewsController;->onDisplayPlatformView(IIIIIIILio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;)V

    .line 1664
    return-void

    .line 1659
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "platformViewsController must be set before attempting to position a platform view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDisplayPlatformView2(IIIIIIILio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;)V
    .locals 10
    .param p1, "viewId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "viewWidth"    # I
    .param p7, "viewHeight"    # I
    .param p8, "mutatorsStack"    # Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;

    .line 1439
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1440
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    if-eqz v0, :cond_0

    .line 1444
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lio/flutter/plugin/platform/PlatformViewsController2;->onDisplayPlatformView(IIIIIIILio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;)V

    .line 1446
    return-void

    .line 1441
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "platformViewsController must be set before attempting to position a platform view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onEndFrame()V
    .locals 2

    .line 1301
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1302
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->onEndFrame()V

    .line 1307
    return-void

    .line 1303
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "platformViewsController must be set before attempting to end the frame"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onFirstFrame()V
    .locals 2

    .line 591
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 593
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiDisplayListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 594
    .local v1, "listener":Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;
    invoke-interface {v1}, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;->onFlutterUiDisplayed()V

    .line 595
    .end local v1    # "listener":Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;
    goto :goto_0

    .line 596
    :cond_0
    return-void
.end method

.method onRenderingStopped()V
    .locals 2

    .line 601
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 603
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiDisplayListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 604
    .local v1, "listener":Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;
    invoke-interface {v1}, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;->onFlutterUiNoLongerDisplayed()V

    .line 605
    .end local v1    # "listener":Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;
    goto :goto_0

    .line 606
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 650
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 651
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 652
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSurfaceChanged(JII)V

    .line 653
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 617
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 618
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 619
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSurfaceCreated(JLandroid/view/Surface;)V

    .line 620
    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 2

    .line 666
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 667
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 668
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->onRenderingStopped()V

    .line 669
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSurfaceDestroyed(J)V

    .line 670
    return-void
.end method

.method public onSurfaceWindowChanged(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 633
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 634
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 635
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSurfaceWindowChanged(JLandroid/view/Surface;)V

    .line 636
    return-void
.end method

.method public onVsync(JJJ)V
    .locals 0
    .param p1, "frameDelayNanos"    # J
    .param p3, "refreshPeriodNanos"    # J
    .param p5, "cookie"    # J

    .line 332
    invoke-direct/range {p0 .. p6}, Lio/flutter/embedding/engine/FlutterJNI;->nativeOnVsync(JJJ)V

    .line 333
    return-void
.end method

.method public performNativeAttach(Lio/flutter/embedding/engine/FlutterJNI;)J
    .locals 2
    .param p1, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;

    .line 427
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeAttach(Lio/flutter/embedding/engine/FlutterJNI;)J

    move-result-wide v0

    return-wide v0
.end method

.method public prefetchDefaultFontManager()V
    .locals 2

    .line 165
    sget-boolean v0, Lio/flutter/embedding/engine/FlutterJNI;->prefetchDefaultFontManagerCalled:Z

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "FlutterJNI"

    const-string v1, "FlutterJNI.prefetchDefaultFontManager called more than once"

    invoke-static {v0, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    invoke-static {}, Lio/flutter/embedding/engine/FlutterJNI;->nativePrefetchDefaultFontManager()V

    .line 170
    const/4 v0, 0x1

    sput-boolean v0, Lio/flutter/embedding/engine/FlutterJNI;->prefetchDefaultFontManagerCalled:Z

    .line 171
    return-void
.end method

.method public registerImageTexture(JLio/flutter/view/TextureRegistry$ImageConsumer;Z)V
    .locals 8
    .param p1, "textureId"    # J
    .param p3, "imageTexture"    # Lio/flutter/view/TextureRegistry$ImageConsumer;
    .param p4, "resetOnBackground"    # Z

    .line 990
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 991
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 992
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    .line 993
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 992
    move-object v1, p0

    move-wide v4, p1

    move v7, p4

    .end local p1    # "textureId":J
    .end local p4    # "resetOnBackground":Z
    .local v4, "textureId":J
    .local v7, "resetOnBackground":Z
    invoke-direct/range {v1 .. v7}, Lio/flutter/embedding/engine/FlutterJNI;->nativeRegisterImageTexture(JJLjava/lang/ref/WeakReference;Z)V

    .line 997
    return-void
.end method

.method public registerTexture(JLio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;)V
    .locals 7
    .param p1, "textureId"    # J
    .param p3, "textureWrapper"    # Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;

    .line 969
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 970
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 971
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    .line 972
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 971
    move-object v1, p0

    move-wide v4, p1

    .end local p1    # "textureId":J
    .local v4, "textureId":J
    invoke-direct/range {v1 .. v6}, Lio/flutter/embedding/engine/FlutterJNI;->nativeRegisterTexture(JJLjava/lang/ref/WeakReference;)V

    .line 973
    return-void
.end method

.method public removeEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V
    .locals 1
    .param p1, "engineLifecycleListener"    # Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    .line 1264
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1265
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->engineLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1266
    return-void
.end method

.method public removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V
    .locals 1
    .param p1, "listener"    # Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 538
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 539
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiDisplayListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 540
    return-void
.end method

.method public removeResizingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;)V
    .locals 1
    .param p1, "listener"    # Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;

    .line 558
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 559
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiResizeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 560
    return-void
.end method

.method public requestDartDeferredLibrary(I)V
    .locals 2
    .param p1, "loadingUnitId"    # I

    .line 1560
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->deferredComponentManager:Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->deferredComponentManager:Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;->installDeferredComponent(ILjava/lang/String;)V

    goto :goto_0

    .line 1564
    :cond_0
    const-string v0, "FlutterJNI"

    const-string v1, "No DeferredComponentManager found. Android setup must be completed before using split AOT deferred components."

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    :goto_0
    return-void
.end method

.method public runBundleAndSnapshotFromLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/util/List;J)V
    .locals 10
    .param p1, "bundlePath"    # Ljava/lang/String;
    .param p2, "entrypointFunctionName"    # Ljava/lang/String;
    .param p3, "pathToEntrypointFunction"    # Ljava/lang/String;
    .param p4, "assetManager"    # Landroid/content/res/AssetManager;
    .param p6, "engineId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/res/AssetManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 1060
    .local p5, "entrypointArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1061
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 1062
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    .line 1063
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1062
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lio/flutter/embedding/engine/FlutterJNI;->nativeRunBundleAndSnapshotFromLibrary(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/util/List;J)V

    .line 1070
    return-void
.end method

.method public scheduleFrame()V
    .locals 2

    .line 1024
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1025
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 1026
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeScheduleFrame(J)V

    .line 1027
    return-void
.end method

.method public setAccessibilityDelegate(Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;)V
    .locals 0
    .param p1, "accessibilityDelegate"    # Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;

    .line 815
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 816
    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;

    .line 817
    return-void
.end method

.method public setAccessibilityFeatures(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 948
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 949
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setAccessibilityFeaturesInNative(I)V

    .line 952
    :cond_0
    return-void
.end method

.method public setAccessibilityFeaturesInNative(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 956
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSetAccessibilityFeatures(JI)V

    .line 957
    return-void
.end method

.method public setAsyncWaitForVsyncDelegate(Lio/flutter/embedding/engine/FlutterJNI$AsyncWaitForVsyncDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lio/flutter/embedding/engine/FlutterJNI$AsyncWaitForVsyncDelegate;

    .line 308
    sput-object p1, Lio/flutter/embedding/engine/FlutterJNI;->asyncWaitForVsyncDelegate:Lio/flutter/embedding/engine/FlutterJNI$AsyncWaitForVsyncDelegate;

    .line 309
    return-void
.end method

.method public setDeferredComponentManager(Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;)V
    .locals 0
    .param p1, "deferredComponentManager"    # Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    .line 1540
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1541
    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->deferredComponentManager:Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    .line 1542
    if-eqz p1, :cond_0

    .line 1543
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;->setJNI(Lio/flutter/embedding/engine/FlutterJNI;)V

    .line 1545
    :cond_0
    return-void
.end method

.method public setLocalizationPlugin(Lio/flutter/plugin/localization/LocalizationPlugin;)V
    .locals 0
    .param p1, "localizationPlugin"    # Lio/flutter/plugin/localization/LocalizationPlugin;

    .line 1465
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1466
    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    .line 1467
    return-void
.end method

.method public setPlatformMessageHandler(Lio/flutter/embedding/engine/dart/PlatformMessageHandler;)V
    .locals 0
    .param p1, "platformMessageHandler"    # Lio/flutter/embedding/engine/dart/PlatformMessageHandler;

    .line 1109
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1110
    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformMessageHandler:Lio/flutter/embedding/engine/dart/PlatformMessageHandler;

    .line 1111
    return-void
.end method

.method public setPlatformViewsController(Lio/flutter/plugin/platform/PlatformViewsController;)V
    .locals 0
    .param p1, "platformViewsController"    # Lio/flutter/plugin/platform/PlatformViewsController;

    .line 791
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 792
    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 793
    return-void
.end method

.method public setPlatformViewsController2(Lio/flutter/plugin/platform/PlatformViewsController2;)V
    .locals 0
    .param p1, "platformViewsController2"    # Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 798
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 799
    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 800
    return-void
.end method

.method public setRefreshRateFPS(F)V
    .locals 0
    .param p1, "refreshRateFPS"    # F

    .line 274
    sput p1, Lio/flutter/embedding/engine/FlutterJNI;->refreshRateFPS:F

    .line 275
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->updateRefreshRate()V

    .line 276
    return-void
.end method

.method public setSemanticsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 933
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 934
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setSemanticsEnabledInNative(Z)V

    .line 937
    :cond_0
    return-void
.end method

.method public setSemanticsEnabledInNative(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 941
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSetSemanticsEnabled(JZ)V

    .line 942
    return-void
.end method

.method public setSemanticsTreeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 858
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 859
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 860
    if-nez p1, :cond_0

    .line 861
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;

    invoke-interface {v0}, Lio/flutter/embedding/engine/FlutterJNI$AccessibilityDelegate;->resetSemantics()V

    .line 864
    :cond_0
    return-void
.end method

.method public setSettingsChannel(Lio/flutter/embedding/engine/systemchannels/SettingsChannel;)V
    .locals 0
    .param p1, "settingsChannel"    # Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    .line 1530
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1531
    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->settingsChannel:Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    .line 1532
    return-void
.end method

.method public setViewportMetrics(FIIIIIIIIIIIIIII[I[I[IIIIIIIII)V
    .locals 32
    .param p1, "devicePixelRatio"    # F
    .param p2, "physicalWidth"    # I
    .param p3, "physicalHeight"    # I
    .param p4, "physicalPaddingTop"    # I
    .param p5, "physicalPaddingRight"    # I
    .param p6, "physicalPaddingBottom"    # I
    .param p7, "physicalPaddingLeft"    # I
    .param p8, "physicalViewInsetTop"    # I
    .param p9, "physicalViewInsetRight"    # I
    .param p10, "physicalViewInsetBottom"    # I
    .param p11, "physicalViewInsetLeft"    # I
    .param p12, "systemGestureInsetTop"    # I
    .param p13, "systemGestureInsetRight"    # I
    .param p14, "systemGestureInsetBottom"    # I
    .param p15, "systemGestureInsetLeft"    # I
    .param p16, "physicalTouchSlop"    # I
    .param p17, "displayFeaturesBounds"    # [I
    .param p18, "displayFeaturesType"    # [I
    .param p19, "displayFeaturesState"    # [I
    .param p20, "minWidth"    # I
    .param p21, "maxWidth"    # I
    .param p22, "minHeight"    # I
    .param p23, "maxHeight"    # I
    .param p24, "physicalDisplayCornerRadiusTopLeft"    # I
    .param p25, "physicalDisplayCornerRadiusTopRight"    # I
    .param p26, "physicalDisplayCornerRadiusBottomRight"    # I
    .param p27, "physicalDisplayCornerRadiusBottomLeft"    # I

    .line 710
    invoke-direct/range {p0 .. p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 711
    invoke-direct/range {p0 .. p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 712
    const-string v0, "FlutterJNI"

    const-string v1, "Sending viewport metrics to the engine."

    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    move-object/from16 v2, p0

    iget-object v0, v2, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    .line 714
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 713
    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v18, p14

    move/from16 v19, p15

    move/from16 v20, p16

    move-object/from16 v21, p17

    move-object/from16 v22, p18

    move-object/from16 v23, p19

    move/from16 v24, p20

    move/from16 v25, p21

    move/from16 v26, p22

    move/from16 v27, p23

    move/from16 v28, p24

    move/from16 v29, p25

    move/from16 v30, p26

    move/from16 v31, p27

    invoke-direct/range {v2 .. v31}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSetViewportMetrics(JFIIIIIIIIIIIIIII[I[I[IIIIIIIII)V

    .line 742
    return-void
.end method

.method public showOverlaySurface2()V
    .locals 2

    .line 1397
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->showOverlaySurface()V

    .line 1402
    return-void

    .line 1398
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "platformViewsController must be set before attempting to destroy an overlay surface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spawn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)Lio/flutter/embedding/engine/FlutterJNI;
    .locals 9
    .param p1, "entrypointFunctionName"    # Ljava/lang/String;
    .param p2, "pathToEntrypointFunction"    # Ljava/lang/String;
    .param p3, "initialRoute"    # Ljava/lang/String;
    .param p5, "engineId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)",
            "Lio/flutter/embedding/engine/FlutterJNI;"
        }
    .end annotation

    .line 454
    .local p4, "entrypointArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 455
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 456
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    .line 458
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 457
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSpawn(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v1

    .line 464
    .local v1, "spawnedJNI":Lio/flutter/embedding/engine/FlutterJNI;
    iget-object v0, v1, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    .line 465
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 464
    :goto_0
    const-string v2, "Failed to spawn new JNI connected shell from existing shell."

    invoke-static {v0, v2}, Lio/flutter/util/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 468
    return-object v1
.end method

.method public swapTransactions()V
    .locals 2

    .line 1356
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->swapTransactions()V

    .line 1360
    return-void

    .line 1357
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterTexture(J)V
    .locals 2
    .param p1, "textureId"    # J

    .line 1037
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1038
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 1039
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeUnregisterTexture(JJ)V

    .line 1040
    return-void
.end method

.method public updateDisplayMetrics(IFFF)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "density"    # F

    .line 279
    sput p2, Lio/flutter/embedding/engine/FlutterJNI;->displayWidth:F

    .line 280
    sput p3, Lio/flutter/embedding/engine/FlutterJNI;->displayHeight:F

    .line 281
    sput p4, Lio/flutter/embedding/engine/FlutterJNI;->displayDensity:F

    .line 282
    sget-boolean v0, Lio/flutter/embedding/engine/FlutterJNI;->loadLibraryCalled:Z

    if-nez v0, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeUpdateDisplayMetrics(J)V

    .line 286
    return-void
.end method

.method public updateJavaAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "assetBundlePath"    # Ljava/lang/String;

    .line 1609
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    .line 1610
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    .line 1611
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeUpdateJavaAssetManager(JLandroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 1612
    return-void
.end method

.method public updateRefreshRate()V
    .locals 1

    .line 291
    sget-boolean v0, Lio/flutter/embedding/engine/FlutterJNI;->loadLibraryCalled:Z

    if-nez v0, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    sget v0, Lio/flutter/embedding/engine/FlutterJNI;->refreshRateFPS:F

    invoke-direct {p0, v0}, Lio/flutter/embedding/engine/FlutterJNI;->nativeUpdateRefreshRate(F)V

    .line 295
    return-void
.end method
