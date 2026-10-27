.class Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;
.super Ljava/lang/Object;
.source "FlutterActivityAndFragmentDelegate.java"

# interfaces
.implements Lio/flutter/embedding/android/ExclusiveAppComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;,
        Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/flutter/embedding/android/ExclusiveAppComponent<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# static fields
.field private static final FLUTTER_SPLASH_VIEW_FALLBACK_ID:I = 0x1d063b02

.field private static final FRAMEWORK_RESTORATION_BUNDLE_KEY:Ljava/lang/String; = "framework"

.field static final ON_BACK_CALLBACK_ENABLED_KEY:Ljava/lang/String; = "enableOnBackInvokedCallbackState"

.field private static final PLUGINS_RESTORATION_BUNDLE_KEY:Ljava/lang/String; = "plugins"

.field private static final TAG:Ljava/lang/String; = "FlutterActivityAndFragmentDelegate"


# instance fields
.field activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private engineGroup:Lio/flutter/embedding/engine/FlutterEngineGroup;

.field private flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

.field private final flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

.field flutterView:Lio/flutter/embedding/android/FlutterView;

.field private host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

.field private isAttached:Z

.field private isFirstFrameRendered:Z

.field private isFlutterEngineFromHost:Z

.field private isFlutterUiDisplayed:Z

.field private platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

.field private previousVisibility:Ljava/lang/Integer;

.field private sensitiveContentPlugin:Lio/flutter/plugin/view/SensitiveContentPlugin;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;)V
    .locals 1
    .param p1, "host"    # Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;-><init>(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;Lio/flutter/embedding/engine/FlutterEngineGroup;)V

    .line 123
    return-void
.end method

.method constructor <init>(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;Lio/flutter/embedding/engine/FlutterEngineGroup;)V
    .locals 1
    .param p1, "host"    # Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;
    .param p2, "engineGroup"    # Lio/flutter/embedding/engine/FlutterEngineGroup;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$1;-><init>(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 126
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFirstFrameRendered:Z

    .line 128
    iput-object p2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->engineGroup:Lio/flutter/embedding/engine/FlutterEngineGroup;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;)Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 77
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    return-object v0
.end method

.method static synthetic access$100(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 77
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterUiDisplayed:Z

    return v0
.end method

.method static synthetic access$102(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterUiDisplayed:Z

    return p1
.end method

.method static synthetic access$202(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFirstFrameRendered:Z

    return p1
.end method

.method private addEntrypointOptions(Lio/flutter/embedding/engine/FlutterEngineGroup$Options;)Lio/flutter/embedding/engine/FlutterEngineGroup$Options;
    .locals 5
    .param p1, "options"    # Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    .line 244
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getAppBundlePath()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "appBundlePathOverride":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    :cond_0
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->findAppBundlePath()Ljava/lang/String;

    move-result-object v0

    .line 249
    :cond_1
    new-instance v1, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 251
    invoke-interface {v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getDartEntrypointFunctionName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .local v1, "dartEntrypoint":Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getInitialRoute()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "initialRoute":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 254
    iget-object v3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->maybeGetInitialRouteFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 255
    if-nez v2, :cond_2

    .line 256
    const-string v2, "/"

    .line 259
    :cond_2
    nop

    .line 260
    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->setDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;)Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    move-result-object v3

    .line 261
    invoke-virtual {v3, v2}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->setInitialRoute(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    move-result-object v3

    iget-object v4, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 262
    invoke-interface {v4}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getDartEntrypointArgs()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->setDartEntrypointArgs(Ljava/util/List;)Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    move-result-object v3

    .line 259
    return-object v3
.end method

.method private delayFirstAndroidViewDraw(Lio/flutter/embedding/android/FlutterView;)V
    .locals 2
    .param p1, "flutterView"    # Lio/flutter/embedding/android/FlutterView;

    .line 565
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getRenderMode()Lio/flutter/embedding/android/RenderMode;

    move-result-object v0

    sget-object v1, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    if-ne v0, v1, :cond_1

    .line 575
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p1}, Lio/flutter/embedding/android/FlutterView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 579
    :cond_0
    new-instance v0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$2;

    invoke-direct {v0, p0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$2;-><init>(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 590
    invoke-virtual {p1}, Lio/flutter/embedding/android/FlutterView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 591
    return-void

    .line 570
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot delay the first Android view draw when the render mode is not set to `RenderMode.surface`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doInitialFlutterViewRun()V
    .locals 6

    .line 504
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getCachedEngineId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->isExecutingDart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getInitialRoute()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "initialRoute":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 516
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->maybeGetInitialRouteFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 517
    if-nez v0, :cond_2

    .line 518
    const-string v0, "/"

    .line 521
    :cond_2
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getDartEntrypointLibraryUri()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "libraryUri":Ljava/lang/String;
    nop

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing Dart entrypoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 525
    invoke-interface {v3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getDartEntrypointFunctionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", library uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 529
    const-string v2, "\"\""

    goto :goto_0

    .line 530
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and sending initial route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    :goto_0
    const-string v3, "FlutterActivityAndFragmentDelegate"

    invoke-static {v3, v2}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/FlutterEngine;->getNavigationChannel()Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->setInitialRoute(Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getAppBundlePath()Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, "appBundlePathOverride":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 538
    :cond_4
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v3

    invoke-virtual {v3}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object v3

    invoke-virtual {v3}, Lio/flutter/embedding/engine/loader/FlutterLoader;->findAppBundlePath()Ljava/lang/String;

    move-result-object v2

    .line 543
    :cond_5
    if-nez v1, :cond_6

    .line 544
    new-instance v3, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;

    iget-object v4, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 545
    invoke-interface {v4}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getDartEntrypointFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 546
    :cond_6
    new-instance v3, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;

    iget-object v4, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 547
    invoke-interface {v4}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getDartEntrypointFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v1, v4}, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    nop

    .line 548
    .local v3, "entrypoint":Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;
    iget-object v4, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v4}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v4

    iget-object v5, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v5}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getDartEntrypointArgs()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lio/flutter/embedding/engine/dart/DartExecutor;->executeDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/util/List;)V

    .line 549
    return-void
.end method

.method private ensureAlive()V
    .locals 2

    .line 1083
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    if-eqz v0, :cond_0

    .line 1087
    return-void

    .line 1084
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute method on a destroyed FlutterActivityAndFragmentDelegate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private maybeGetInitialRouteFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 552
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldHandleDeeplinking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 554
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 558
    .end local v0    # "data":Landroid/net/Uri;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private warnIfEngineFlagsSetViaIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 354
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 355
    return-void

    .line 358
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 359
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 361
    .local v1, "extrasKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 362
    .local v3, "extrasKey":Ljava/lang/String;
    invoke-static {v3}, Lio/flutter/embedding/engine/FlutterEngineFlags;->getFlagFromIntentKey(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    move-result-object v4

    .line 363
    .local v4, "flag":Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    if-eqz v4, :cond_1

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "If you are attempting to set "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v4, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->engineArgument:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " via Intent extras to launch a Flutter component outside of using the Flutter CLI, note that support for setting engine flags on Android via Intent will soon be dropped; see https://github.com/flutter/flutter/issues/180686 for more information on this breaking change. To migrate, set "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v4, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->engineArgument:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " or any other flags specified via Intent extras on the command line instead or see https://github.com/flutter/flutter/blob/main/docs/engine/Flutter-Android-Engine-Flags.md for alternative methods."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "FlutterActivityAndFragmentDelegate"

    invoke-static {v5, v2}, Lio/flutter/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    goto :goto_1

    .line 373
    .end local v3    # "extrasKey":Ljava/lang/String;
    .end local v4    # "flag":Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    :cond_1
    goto :goto_0

    .line 374
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method cancelBackGesture()V
    .locals 2

    .line 922
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 923
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    .line 924
    const-string v0, "Forwarding cancelBackGesture() to FlutterEngine."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getBackGestureChannel()Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;->cancelBackGesture()V

    goto :goto_0

    .line 927
    :cond_0
    const-string v0, "Invoked cancelBackGesture() before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :goto_0
    return-void
.end method

.method commitBackGesture()V
    .locals 2

    .line 901
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 902
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    .line 903
    const-string v0, "Forwarding commitBackGesture() to FlutterEngine."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getBackGestureChannel()Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;->commitBackGesture()V

    goto :goto_0

    .line 906
    :cond_0
    const-string v0, "Invoked commitBackGesture() before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :goto_0
    return-void
.end method

.method public detachFromFlutterEngine()V
    .locals 3

    .line 741
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldDestroyEngineWithHost()Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->detachFromFlutterEngine()V

    .line 755
    return-void

    .line 744
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The internal FlutterEngine created by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been attached to by another activity. To persist a FlutterEngine beyond the ownership of this activity, explicitly create a FlutterEngine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getAppComponent()Landroid/app/Activity;
    .locals 3

    .line 234
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 235
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 240
    return-object v0

    .line 236
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "FlutterActivityAndFragmentDelegate\'s getAppComponent should only be queried after onAttach, when the host\'s activity should always be non-null"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic getAppComponent()Ljava/lang/Object;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->getAppComponent()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1

    .line 156
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    return-object v0
.end method

.method isAttached()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isAttached:Z

    return v0
.end method

.method isFlutterEngineFromHost()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterEngineFromHost:Z

    return v0
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 993
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 994
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forwarding onActivityResult() to FlutterEngine:\nrequestCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\nresultCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\ndata: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    .line 1008
    :cond_0
    const-string v0, "onActivityResult() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :goto_0
    return-void
.end method

.method onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 194
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 198
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->setUpFlutterEngine()V

    .line 202
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldAttachEngineToActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "Attaching FlutterEngine to the Activity that owns this delegate."

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->attachToActivity(Lio/flutter/embedding/android/ExclusiveAppComponent;Landroidx/lifecycle/Lifecycle;)V

    .line 224
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 225
    .local v0, "hostActivity":Landroid/app/Activity;
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-interface {v1, v0, v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->providePlatformPlugin(Landroid/app/Activity;Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/plugin/platform/PlatformPlugin;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 226
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-interface {v1, v0, v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->provideSensitiveContentPlugin(Landroid/app/Activity;Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/plugin/view/SensitiveContentPlugin;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->sensitiveContentPlugin:Lio/flutter/plugin/view/SensitiveContentPlugin;

    .line 228
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-interface {v1, v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V

    .line 229
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isAttached:Z

    .line 230
    return-void
.end method

.method onBackPressed()V
    .locals 2

    .line 832
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 833
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    .line 834
    const-string v0, "Forwarding onBackPressed() to FlutterEngine."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getNavigationChannel()Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->popRoute()V

    goto :goto_0

    .line 837
    :cond_0
    const-string v0, "Invoked onBackPressed() before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :goto_0
    return-void
.end method

.method onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;IZ)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .param p4, "flutterViewId"    # I
    .param p5, "shouldDelayFirstAndroidViewDraw"    # Z

    .line 407
    const-string v0, "Creating FlutterView."

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 410
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getRenderMode()Lio/flutter/embedding/android/RenderMode;

    move-result-object v0

    sget-object v2, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    .line 411
    new-instance v0, Lio/flutter/embedding/android/FlutterSurfaceView;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 413
    invoke-interface {v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v5}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getTransparencyMode()Lio/flutter/embedding/android/TransparencyMode;

    move-result-object v5

    sget-object v6, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-direct {v0, v2, v3}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;Z)V

    .line 416
    .local v0, "flutterSurfaceView":Lio/flutter/embedding/android/FlutterSurfaceView;
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v2, v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->onFlutterSurfaceViewCreated(Lio/flutter/embedding/android/FlutterSurfaceView;)V

    .line 419
    new-instance v2, Lio/flutter/embedding/android/FlutterView;

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Lio/flutter/embedding/android/FlutterSurfaceView;)V

    iput-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    .line 420
    .end local v0    # "flutterSurfaceView":Lio/flutter/embedding/android/FlutterSurfaceView;
    goto :goto_2

    .line 421
    :cond_1
    new-instance v0, Lio/flutter/embedding/android/FlutterTextureView;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/flutter/embedding/android/FlutterTextureView;-><init>(Landroid/content/Context;)V

    .line 423
    .local v0, "flutterTextureView":Lio/flutter/embedding/android/FlutterTextureView;
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getTransparencyMode()Lio/flutter/embedding/android/TransparencyMode;

    move-result-object v2

    sget-object v5, Lio/flutter/embedding/android/TransparencyMode;->opaque:Lio/flutter/embedding/android/TransparencyMode;

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lio/flutter/embedding/android/FlutterTextureView;->setOpaque(Z)V

    .line 426
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v2, v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->onFlutterTextureViewCreated(Lio/flutter/embedding/android/FlutterTextureView;)V

    .line 429
    new-instance v2, Lio/flutter/embedding/android/FlutterView;

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Lio/flutter/embedding/android/FlutterTextureView;)V

    iput-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    .line 433
    .end local v0    # "flutterTextureView":Lio/flutter/embedding/android/FlutterTextureView;
    :goto_2
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-virtual {v0, v2}, Lio/flutter/embedding/android/FlutterView;->addOnFirstFrameRenderedListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 435
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->attachToEngineAutomatically()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    const-string v0, "Attaching FlutterEngine to FlutterView."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/FlutterView;->attachToFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V

    .line 439
    :cond_3
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v0, p4}, Lio/flutter/embedding/android/FlutterView;->setId(I)V

    .line 441
    if-eqz p5, :cond_4

    .line 442
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->delayFirstAndroidViewDraw(Lio/flutter/embedding/android/FlutterView;)V

    .line 444
    :cond_4
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    return-object v0
.end method

.method onDestroyView()V
    .locals 2

    .line 700
    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 703
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 705
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 710
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    if-eqz v0, :cond_1

    .line 711
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->detachFromFlutterEngine()V

    .line 712
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/FlutterView;->removeOnFirstFrameRenderedListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 714
    :cond_1
    return-void
.end method

.method onDetach()V
    .locals 3

    .line 773
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isAttached:Z

    if-nez v0, :cond_0

    .line 775
    return-void

    .line 777
    :cond_0
    const-string v0, "onDetach()"

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 782
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-interface {v0, v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->cleanUpFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V

    .line 784
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldAttachEngineToActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 786
    const-string v0, "Detaching FlutterEngine from the Activity that owns this Fragment."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->detachFromActivityForConfigChanges()V

    goto :goto_0

    .line 790
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->detachFromActivity()V

    .line 796
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 797
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformPlugin;->destroy()V

    .line 798
    iput-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 800
    :cond_3
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->sensitiveContentPlugin:Lio/flutter/plugin/view/SensitiveContentPlugin;

    if-eqz v0, :cond_4

    .line 801
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->sensitiveContentPlugin:Lio/flutter/plugin/view/SensitiveContentPlugin;

    invoke-virtual {v0}, Lio/flutter/plugin/view/SensitiveContentPlugin;->destroy()V

    .line 802
    iput-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->sensitiveContentPlugin:Lio/flutter/plugin/view/SensitiveContentPlugin;

    .line 805
    :cond_4
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldDispatchAppLifecycleState()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_5

    .line 806
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getLifecycleChannel()Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->appIsDetached()V

    .line 810
    :cond_5
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldDestroyEngineWithHost()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 811
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->destroy()V

    .line 813
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getCachedEngineId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 814
    invoke-static {}, Lio/flutter/embedding/engine/FlutterEngineCache;->getInstance()Lio/flutter/embedding/engine/FlutterEngineCache;

    move-result-object v0

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getCachedEngineId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/flutter/embedding/engine/FlutterEngineCache;->remove(Ljava/lang/String;)V

    .line 817
    :cond_6
    iput-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 820
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isAttached:Z

    .line 821
    return-void
.end method

.method onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 971
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 972
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_1

    .line 973
    const-string v0, "Forwarding onNewIntent() to FlutterEngine and sending pushRouteInformation message."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->onNewIntent(Landroid/content/Intent;)V

    .line 977
    invoke-direct {p0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->maybeGetInitialRouteFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, "initialRoute":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 979
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getNavigationChannel()Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->pushRouteInformation(Ljava/lang/String;)V

    .line 981
    .end local v0    # "initialRoute":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 982
    :cond_1
    const-string v0, "onNewIntent() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    :goto_0
    return-void
.end method

.method onPause()V
    .locals 2

    .line 650
    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 652
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldDispatchAppLifecycleState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getLifecycleChannel()Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->appIsInactive()V

    .line 655
    :cond_0
    return-void
.end method

.method onPostResume()V
    .locals 2

    .line 620
    const-string v0, "onPostResume()"

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 622
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->updateSystemUiOverlays()V

    .line 624
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->onResume()V

    goto :goto_0

    .line 626
    :cond_0
    const-string v0, "onPostResume() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :goto_0
    return-void
.end method

.method onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 939
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 940
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forwarding onRequestPermissionsResult() to FlutterEngine:\nrequestCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\npermissions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 948
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\ngrantResults: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 951
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 941
    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 953
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v0

    .line 954
    invoke-interface {v0, p1, p2, p3}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    goto :goto_0

    .line 956
    :cond_0
    const-string v0, "onRequestPermissionResult() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    :goto_0
    return-void
.end method

.method onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 448
    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onRestoreInstanceState. Giving framework and plugins an opportunity to restore state."

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "pluginState":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 455
    .local v1, "frameworkState":[B
    if-eqz p1, :cond_0

    .line 456
    const-string v2, "plugins"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 457
    const-string v2, "framework"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 460
    :cond_0
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldRestoreAndSaveState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/FlutterEngine;->getRestorationChannel()Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->setRestorationData([B)V

    .line 464
    :cond_1
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldAttachEngineToActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 465
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 467
    :cond_2
    return-void
.end method

.method onResume()V
    .locals 2

    .line 600
    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 602
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->restoreSurfaceProducers()V

    .line 603
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldDispatchAppLifecycleState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getLifecycleChannel()Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->appIsResumed()V

    .line 606
    :cond_0
    return-void
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 717
    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onSaveInstanceState. Giving framework and plugins an opportunity to save state."

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 720
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldRestoreAndSaveState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 723
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getRestorationChannel()Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->getRestorationData()[B

    move-result-object v0

    .line 721
    const-string v1, "framework"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 726
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldAttachEngineToActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 728
    .local v0, "plugins":Landroid/os/Bundle;
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 729
    const-string v1, "plugins"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 734
    .end local v0    # "plugins":Landroid/os/Bundle;
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getCachedEngineId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldDestroyEngineWithHost()Z

    move-result v0

    if-nez v0, :cond_2

    .line 735
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getBackCallbackState()Z

    move-result v0

    const-string v1, "enableOnBackInvokedCallbackState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 737
    :cond_2
    return-void
.end method

.method onStart()V
    .locals 2

    .line 481
    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 483
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->doInitialFlutterViewRun()V

    .line 489
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->previousVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->previousVisibility:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/FlutterView;->setVisibility(I)V

    .line 492
    :cond_0
    return-void
.end method

.method onStop()V
    .locals 2

    .line 672
    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 675
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldDispatchAppLifecycleState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getLifecycleChannel()Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->appIsPaused()V

    .line 684
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->previousVisibility:Ljava/lang/Integer;

    .line 685
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/FlutterView;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->onTrimMemory(I)V

    .line 692
    :cond_1
    return-void
.end method

.method onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I

    .line 1060
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 1061
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_2

    .line 1067
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFirstFrameRendered:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1068
    .local v0, "trim":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1069
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/dart/DartExecutor;->notifyLowMemoryWarning()V

    .line 1070
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getSystemChannel()Lio/flutter/embedding/engine/systemchannels/SystemChannel;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/systemchannels/SystemChannel;->sendMemoryPressureWarning()V

    .line 1072
    :cond_1
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->onTrimMemory(I)V

    .line 1073
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->onTrimMemory(I)V

    .line 1075
    .end local v0    # "trim":Z
    :cond_2
    return-void
.end method

.method onUserLeaveHint()V
    .locals 2

    .line 1021
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 1022
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    .line 1023
    const-string v0, "Forwarding onUserLeaveHint() to FlutterEngine."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->onUserLeaveHint()V

    goto :goto_0

    .line 1026
    :cond_0
    const-string v0, "onUserLeaveHint() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :goto_0
    return-void
.end method

.method onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .line 1037
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received onWindowFocusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldDispatchAppLifecycleState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_2

    .line 1043
    if-eqz p1, :cond_1

    .line 1044
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getLifecycleChannel()Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->aWindowIsFocused()V

    goto :goto_1

    .line 1046
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getLifecycleChannel()Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->noWindowsAreFocused()V

    .line 1049
    :cond_2
    :goto_1
    return-void
.end method

.method release()V
    .locals 1

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 144
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 145
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    .line 146
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 147
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->sensitiveContentPlugin:Lio/flutter/plugin/view/SensitiveContentPlugin;

    .line 148
    return-void
.end method

.method setUpFlutterEngine()V
    .locals 7

    .line 286
    const-string v0, "Setting up FlutterEngine."

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getCachedEngineId()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "cachedEngineId":Ljava/lang/String;
    const-string v2, "\'"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 291
    invoke-static {}, Lio/flutter/embedding/engine/FlutterEngineCache;->getInstance()Lio/flutter/embedding/engine/FlutterEngineCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/FlutterEngineCache;->get(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 292
    iput-boolean v3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterEngineFromHost:Z

    .line 293
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v1, :cond_0

    .line 299
    return-void

    .line 294
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The requested cached FlutterEngine did not exist in the FlutterEngineCache: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_1
    iget-object v4, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    iget-object v5, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v5}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->provideFlutterEngine(Landroid/content/Context;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v4

    iput-object v4, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 304
    iget-object v4, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v4, :cond_2

    .line 305
    iput-boolean v3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterEngineFromHost:Z

    .line 306
    return-void

    .line 311
    :cond_2
    iget-object v3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getCachedEngineGroupId()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "cachedEngineGroupId":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 314
    invoke-static {}, Lio/flutter/embedding/engine/FlutterEngineGroupCache;->getInstance()Lio/flutter/embedding/engine/FlutterEngineGroupCache;

    move-result-object v1

    invoke-virtual {v1, v3}, Lio/flutter/embedding/engine/FlutterEngineGroupCache;->get(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngineGroup;

    move-result-object v1

    .line 315
    .local v1, "flutterEngineGroup":Lio/flutter/embedding/engine/FlutterEngineGroup;
    if-eqz v1, :cond_3

    .line 322
    new-instance v2, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    iget-object v5, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 324
    invoke-interface {v5}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->addEntrypointOptions(Lio/flutter/embedding/engine/FlutterEngineGroup$Options;)Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    move-result-object v2

    .line 323
    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/FlutterEngineGroup;->createAndRunEngine(Lio/flutter/embedding/engine/FlutterEngineGroup$Options;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v2

    iput-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 325
    iput-boolean v4, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterEngineFromHost:Z

    .line 326
    return-void

    .line 316
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The requested cached FlutterEngineGroup did not exist in the FlutterEngineGroupCache: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 331
    .end local v1    # "flutterEngineGroup":Lio/flutter/embedding/engine/FlutterEngineGroup;
    :cond_4
    const-string v2, "No preferred FlutterEngine was provided. Creating a new FlutterEngine for this FlutterFragment."

    invoke-static {v1, v2}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->warnIfEngineFlagsSetViaIntent(Landroid/content/Intent;)V

    .line 338
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->engineGroup:Lio/flutter/embedding/engine/FlutterEngineGroup;

    if-nez v1, :cond_5

    .line 339
    new-instance v1, Lio/flutter/embedding/engine/FlutterEngineGroup;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v5}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getFlutterShellArgs()Lio/flutter/embedding/engine/FlutterShellArgs;

    move-result-object v5

    invoke-virtual {v5}, Lio/flutter/embedding/engine/FlutterShellArgs;->toArray()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lio/flutter/embedding/engine/FlutterEngineGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_5
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->engineGroup:Lio/flutter/embedding/engine/FlutterEngineGroup;

    :goto_0
    nop

    .line 341
    .local v1, "group":Lio/flutter/embedding/engine/FlutterEngineGroup;
    new-instance v2, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    iget-object v5, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 344
    invoke-interface {v5}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;-><init>(Landroid/content/Context;)V

    .line 345
    invoke-virtual {v2, v4}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->setAutomaticallyRegisterPlugins(Z)Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    move-result-object v2

    iget-object v5, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 346
    invoke-interface {v5}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldRestoreAndSaveState()Z

    move-result v5

    invoke-virtual {v2, v5}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->setWaitForRestorationData(Z)Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    move-result-object v2

    .line 343
    invoke-direct {p0, v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->addEntrypointOptions(Lio/flutter/embedding/engine/FlutterEngineGroup$Options;)Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    move-result-object v2

    .line 342
    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/FlutterEngineGroup;->createAndRunEngine(Lio/flutter/embedding/engine/FlutterEngineGroup$Options;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v2

    iput-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 347
    iput-boolean v4, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterEngineFromHost:Z

    .line 348
    return-void
.end method

.method startBackGesture(Landroid/window/BackEvent;)V
    .locals 2
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 855
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 856
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    .line 857
    const-string v0, "Forwarding startBackGesture() to FlutterEngine."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getBackGestureChannel()Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;->startBackGesture(Landroid/window/BackEvent;)V

    goto :goto_0

    .line 860
    :cond_0
    const-string v0, "Invoked startBackGesture() before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :goto_0
    return-void
.end method

.method updateBackGestureProgress(Landroid/window/BackEvent;)V
    .locals 2
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 877
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 878
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    .line 879
    const-string v0, "Forwarding updateBackGestureProgress() to FlutterEngine."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getBackGestureChannel()Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;->updateBackGestureProgress(Landroid/window/BackEvent;)V

    goto :goto_0

    .line 882
    :cond_0
    const-string v0, "Invoked updateBackGestureProgress() before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :goto_0
    return-void
.end method

.method updateSystemUiOverlays()V
    .locals 1

    .line 635
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformPlugin;->updateSystemUiOverlays()V

    .line 641
    :cond_0
    return-void
.end method
