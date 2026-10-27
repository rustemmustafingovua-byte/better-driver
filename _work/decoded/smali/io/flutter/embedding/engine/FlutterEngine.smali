.class public Lio/flutter/embedding/engine/FlutterEngine;
.super Ljava/lang/Object;
.source "FlutterEngine.java"

# interfaces
.implements Lio/flutter/util/ViewUtils$DisplayUpdater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterEngine"

.field private static final idToEngine:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lio/flutter/embedding/engine/FlutterEngine;",
            ">;"
        }
    .end annotation
.end field

.field private static nextEngineId:J


# instance fields
.field private final accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

.field private final backGestureChannel:Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;

.field private final dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

.field private final deferredComponentChannel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

.field private final engineId:J

.field private final engineLifecycleListener:Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

.field private final engineLifecycleListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

.field private final lifecycleChannel:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

.field private final localizationChannel:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

.field private final localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

.field private final mouseCursorChannel:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;

.field private final navigationChannel:Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

.field private final platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

.field private final platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

.field private final platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

.field private final platformViewsControllerDelegator:Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;

.field private final pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

.field private final processTextChannel:Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;

.field private final renderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field private final restorationChannel:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

.field private final scribeChannel:Lio/flutter/embedding/engine/systemchannels/ScribeChannel;

.field private final sensitiveContentChannel:Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;

.field private final settingsChannel:Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

.field private final spellCheckChannel:Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;

.field private final systemChannel:Lio/flutter/embedding/engine/systemchannels/SystemChannel;

.field private final textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 134
    const-wide/16 v0, 0x1

    sput-wide v0, Lio/flutter/embedding/engine/FlutterEngine;->nextEngineId:J

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngine;->idToEngine:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flutterLoader"    # Lio/flutter/embedding/engine/loader/FlutterLoader;
    .param p3, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;

    .line 261
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "flutterLoader":Lio/flutter/embedding/engine/loader/FlutterLoader;
    .end local p3    # "flutterJNI":Lio/flutter/embedding/engine/FlutterJNI;
    .local v1, "context":Landroid/content/Context;
    .local v2, "flutterLoader":Lio/flutter/embedding/engine/loader/FlutterLoader;
    .local v3, "flutterJNI":Lio/flutter/embedding/engine/FlutterJNI;
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;[Ljava/lang/String;Z)V

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flutterLoader"    # Lio/flutter/embedding/engine/loader/FlutterLoader;
    .param p3, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;
    .param p4, "platformViewsController"    # Lio/flutter/plugin/platform/PlatformViewsController;
    .param p5, "dartVmArgs"    # [Ljava/lang/String;
    .param p6, "automaticallyRegisterPlugins"    # Z

    .line 296
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "flutterLoader":Lio/flutter/embedding/engine/loader/FlutterLoader;
    .end local p3    # "flutterJNI":Lio/flutter/embedding/engine/FlutterJNI;
    .end local p4    # "platformViewsController":Lio/flutter/plugin/platform/PlatformViewsController;
    .end local p5    # "dartVmArgs":[Ljava/lang/String;
    .end local p6    # "automaticallyRegisterPlugins":Z
    .local v1, "context":Landroid/content/Context;
    .local v2, "flutterLoader":Lio/flutter/embedding/engine/loader/FlutterLoader;
    .local v3, "flutterJNI":Lio/flutter/embedding/engine/FlutterJNI;
    .local v4, "platformViewsController":Lio/flutter/plugin/platform/PlatformViewsController;
    .local v5, "dartVmArgs":[Ljava/lang/String;
    .local v6, "automaticallyRegisterPlugins":Z
    invoke-direct/range {v0 .. v7}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;ZZ)V

    .line 304
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;ZZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flutterLoader"    # Lio/flutter/embedding/engine/loader/FlutterLoader;
    .param p3, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;
    .param p4, "platformViewsController"    # Lio/flutter/plugin/platform/PlatformViewsController;
    .param p5, "dartVmArgs"    # [Ljava/lang/String;
    .param p6, "automaticallyRegisterPlugins"    # Z
    .param p7, "waitForRestorationData"    # Z

    .line 315
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;ZZLio/flutter/embedding/engine/FlutterEngineGroup;)V

    .line 324
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;ZZLio/flutter/embedding/engine/FlutterEngineGroup;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flutterLoader"    # Lio/flutter/embedding/engine/loader/FlutterLoader;
    .param p3, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;
    .param p4, "platformViewsController"    # Lio/flutter/plugin/platform/PlatformViewsController;
    .param p5, "dartVmArgs"    # [Ljava/lang/String;
    .param p6, "automaticallyRegisterPlugins"    # Z
    .param p7, "waitForRestorationData"    # Z
    .param p8, "group"    # Lio/flutter/embedding/engine/FlutterEngineGroup;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListeners:Ljava/util/Set;

    .line 139
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngine$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/FlutterEngine$1;-><init>(Lio/flutter/embedding/engine/FlutterEngine;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListener:Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    .line 337
    sget-wide v0, Lio/flutter/embedding/engine/FlutterEngine;->nextEngineId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lio/flutter/embedding/engine/FlutterEngine;->nextEngineId:J

    iput-wide v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineId:J

    .line 338
    sget-object v0, Lio/flutter/embedding/engine/FlutterEngine;->idToEngine:Ljava/util/Map;

    iget-wide v1, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    goto :goto_0

    .line 343
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    move-object v0, v1

    .line 347
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :goto_0
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v1

    .line 349
    .local v1, "injector":Lio/flutter/FlutterInjector;
    if-nez p3, :cond_0

    .line 350
    invoke-virtual {v1}, Lio/flutter/FlutterInjector;->getFlutterJNIFactory()Lio/flutter/embedding/engine/FlutterJNI$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lio/flutter/embedding/engine/FlutterJNI$Factory;->provideFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p3

    .line 352
    :cond_0
    iput-object p3, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 354
    new-instance v2, Lio/flutter/embedding/engine/dart/DartExecutor;

    iget-wide v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineId:J

    invoke-direct {v2, p3, v0, v3, v4}, Lio/flutter/embedding/engine/dart/DartExecutor;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;J)V

    iput-object v2, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 355
    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/dart/DartExecutor;->onAttachedToJNI()V

    .line 358
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v2

    invoke-virtual {v2}, Lio/flutter/FlutterInjector;->deferredComponentManager()Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    move-result-object v2

    .line 360
    .local v2, "deferredComponentManager":Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v3, v4, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 361
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v3, v4}, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->deferredComponentChannel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    .line 362
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v3, v4}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->lifecycleChannel:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    .line 363
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v3, v4}, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->localizationChannel:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    .line 364
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v3, v4}, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->mouseCursorChannel:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;

    .line 365
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v3, v4}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->navigationChannel:Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    .line 366
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v3, v4}, Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->backGestureChannel:Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;

    .line 367
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v3, v4}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 368
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;Landroid/content/pm/PackageManager;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->processTextChannel:Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;

    .line 369
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v3, v4, p7}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;Z)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->restorationChannel:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    .line 370
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v3, v4}, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->scribeChannel:Lio/flutter/embedding/engine/systemchannels/ScribeChannel;

    .line 371
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v3, v4}, Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->sensitiveContentChannel:Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;

    .line 372
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v3, v4}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->settingsChannel:Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    .line 373
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v3, v4}, Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->spellCheckChannel:Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;

    .line 374
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/SystemChannel;

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v3, v4}, Lio/flutter/embedding/engine/systemchannels/SystemChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->systemChannel:Lio/flutter/embedding/engine/systemchannels/SystemChannel;

    .line 375
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v3, v4}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 377
    if-eqz v2, :cond_1

    .line 378
    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->deferredComponentChannel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    invoke-interface {v2, v3}, Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;->setDeferredComponentChannel(Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;)V

    .line 381
    :cond_1
    new-instance v3, Lio/flutter/plugin/localization/LocalizationPlugin;

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->localizationChannel:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    invoke-direct {v3, p1, v4}, Lio/flutter/plugin/localization/LocalizationPlugin;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    .line 383
    if-nez p2, :cond_2

    .line 384
    invoke-virtual {v1}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object p2

    .line 387
    :cond_2
    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v3

    if-nez v3, :cond_3

    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2, v3}, Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;)V

    .line 389
    invoke-virtual {p2, p1, p5}, Lio/flutter/embedding/engine/loader/FlutterLoader;->ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;)V

    .line 392
    :cond_3
    new-instance v3, Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-direct {v3}, Lio/flutter/plugin/platform/PlatformViewsController2;-><init>()V

    .line 393
    .local v3, "platformViewsController2":Lio/flutter/plugin/platform/PlatformViewsController2;
    invoke-virtual {p4}, Lio/flutter/plugin/platform/PlatformViewsController;->getRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/flutter/plugin/platform/PlatformViewsController2;->setRegistry(Lio/flutter/plugin/platform/PlatformViewRegistry;)V

    .line 394
    invoke-virtual {v3, p3}, Lio/flutter/plugin/platform/PlatformViewsController2;->setFlutterJNI(Lio/flutter/embedding/engine/FlutterJNI;)V

    .line 396
    invoke-virtual {p4, p3}, Lio/flutter/plugin/platform/PlatformViewsController;->setFlutterJNI(Lio/flutter/embedding/engine/FlutterJNI;)V

    .line 398
    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListener:Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    invoke-virtual {p3, v4}, Lio/flutter/embedding/engine/FlutterJNI;->addEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V

    .line 399
    invoke-virtual {p3, p4}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformViewsController(Lio/flutter/plugin/platform/PlatformViewsController;)V

    .line 400
    invoke-virtual {p3, v3}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformViewsController2(Lio/flutter/plugin/platform/PlatformViewsController2;)V

    .line 401
    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-virtual {p3, v4}, Lio/flutter/embedding/engine/FlutterJNI;->setLocalizationPlugin(Lio/flutter/plugin/localization/LocalizationPlugin;)V

    .line 402
    invoke-virtual {v1}, Lio/flutter/FlutterInjector;->deferredComponentManager()Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    move-result-object v4

    invoke-virtual {p3, v4}, Lio/flutter/embedding/engine/FlutterJNI;->setDeferredComponentManager(Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;)V

    .line 403
    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->settingsChannel:Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    invoke-virtual {p3, v4}, Lio/flutter/embedding/engine/FlutterJNI;->setSettingsChannel(Lio/flutter/embedding/engine/systemchannels/SettingsChannel;)V

    .line 408
    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v4

    if-nez v4, :cond_4

    .line 409
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngine;->attachToJni()V

    .line 412
    :cond_4
    new-instance v4, Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-direct {v4, p3}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->renderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 413
    iput-object p4, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 414
    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 416
    new-instance v4, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;

    invoke-direct {v4, p4, v3}, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;-><init>(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/plugin/platform/PlatformViewsController2;)V

    iput-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsControllerDelegator:Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;

    .line 419
    new-instance v4, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    .line 421
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p0, p2, p8}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/FlutterEngine;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterEngineGroup;)V

    iput-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    .line 423
    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/flutter/plugin/localization/LocalizationPlugin;->sendLocalesToFlutter(Landroid/content/res/Configuration;)V

    .line 427
    if-eqz p6, :cond_5

    invoke-virtual {p2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->automaticallyRegisterPlugins()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 428
    invoke-static {p0}, Lio/flutter/embedding/engine/plugins/util/GeneratedPluginRegister;->registerGeneratedPlugins(Lio/flutter/embedding/engine/FlutterEngine;)V

    .line 431
    :cond_5
    invoke-static {p1, p0}, Lio/flutter/util/ViewUtils;->calculateMaximumDisplayMetrics(Landroid/content/Context;Lio/flutter/util/ViewUtils$DisplayUpdater;)V

    .line 433
    new-instance v4, Lio/flutter/plugin/text/ProcessTextPlugin;

    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->getProcessTextChannel()Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/flutter/plugin/text/ProcessTextPlugin;-><init>(Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;)V

    .line 434
    .local v4, "processTextPlugin":Lio/flutter/plugin/text/ProcessTextPlugin;
    iget-object v5, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    invoke-virtual {v5, v4}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V

    .line 435
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;[Ljava/lang/String;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flutterLoader"    # Lio/flutter/embedding/engine/loader/FlutterLoader;
    .param p3, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;
    .param p4, "dartVmArgs"    # [Ljava/lang/String;
    .param p5, "automaticallyRegisterPlugins"    # Z

    .line 276
    new-instance v4, Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-direct {v4}, Lio/flutter/plugin/platform/PlatformViewsController;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "flutterLoader":Lio/flutter/embedding/engine/loader/FlutterLoader;
    .end local p3    # "flutterJNI":Lio/flutter/embedding/engine/FlutterJNI;
    .end local p4    # "dartVmArgs":[Ljava/lang/String;
    .end local p5    # "automaticallyRegisterPlugins":Z
    .local v1, "context":Landroid/content/Context;
    .local v2, "flutterLoader":Lio/flutter/embedding/engine/loader/FlutterLoader;
    .local v3, "flutterJNI":Lio/flutter/embedding/engine/FlutterJNI;
    .local v5, "dartVmArgs":[Ljava/lang/String;
    .local v6, "automaticallyRegisterPlugins":Z
    invoke-direct/range {v0 .. v6}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;Z)V

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dartVmArgs"    # [Ljava/lang/String;

    .line 196
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "dartVmArgs":[Ljava/lang/String;
    .local v1, "context":Landroid/content/Context;
    .local v4, "dartVmArgs":[Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;[Ljava/lang/String;Z)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dartVmArgs"    # [Ljava/lang/String;
    .param p3, "automaticallyRegisterPlugins"    # Z

    .line 209
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "dartVmArgs":[Ljava/lang/String;
    .end local p3    # "automaticallyRegisterPlugins":Z
    .local v1, "context":Landroid/content/Context;
    .local v4, "dartVmArgs":[Ljava/lang/String;
    .local v5, "automaticallyRegisterPlugins":Z
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;[Ljava/lang/String;Z)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dartVmArgs"    # [Ljava/lang/String;
    .param p3, "automaticallyRegisterPlugins"    # Z
    .param p4, "waitForRestorationData"    # Z

    .line 240
    new-instance v4, Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-direct {v4}, Lio/flutter/plugin/platform/PlatformViewsController;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "dartVmArgs":[Ljava/lang/String;
    .end local p3    # "automaticallyRegisterPlugins":Z
    .end local p4    # "waitForRestorationData":Z
    .local v1, "context":Landroid/content/Context;
    .local v5, "dartVmArgs":[Ljava/lang/String;
    .local v6, "automaticallyRegisterPlugins":Z
    .local v7, "waitForRestorationData":Z
    invoke-direct/range {v0 .. v7}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;ZZ)V

    .line 248
    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/FlutterEngine;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/FlutterEngine;

    .line 90
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/plugin/platform/PlatformViewsController;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/FlutterEngine;

    .line 90
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    return-object v0
.end method

.method static synthetic access$200(Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/plugin/platform/PlatformViewsController2;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/FlutterEngine;

    .line 90
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    return-object v0
.end method

.method static synthetic access$300(Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/embedding/engine/systemchannels/RestorationChannel;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/FlutterEngine;

    .line 90
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->restorationChannel:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    return-object v0
.end method

.method private attachToJni()V
    .locals 2

    .line 438
    const-string v0, "FlutterEngine"

    const-string v1, "Attaching to JNI."

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->attachToNative()V

    .line 441
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngine;->isAttachedToJni()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    return-void

    .line 442
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FlutterEngine failed to attach to its native Object reference."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static engineForId(J)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 2
    .param p0, "handle"    # J

    .line 743
    sget-object v0, Lio/flutter/embedding/engine/FlutterEngine;->idToEngine:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/FlutterEngine;

    return-object v0
.end method

.method private isAttachedToJni()Z
    .locals 1

    .line 448
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    return v0
.end method

.method public static resetNextEngineId()V
    .locals 2

    .line 130
    const-wide/16 v0, 0x1

    sput-wide v0, Lio/flutter/embedding/engine/FlutterEngine;->nextEngineId:J

    .line 131
    return-void
.end method


# virtual methods
.method public addEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V
    .locals 1
    .param p1, "listener"    # Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    .line 530
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 531
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 506
    const-string v0, "FlutterEngine"

    const-string v1, "Destroying."

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    .line 508
    .local v1, "listener":Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;
    invoke-interface {v1}, Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;->onEngineWillDestroy()V

    .line 509
    .end local v1    # "listener":Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;
    goto :goto_0

    .line 511
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->destroy()V

    .line 512
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->onDetachedFromJNI()V

    .line 513
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->onDetachedFromJNI()V

    .line 514
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->onDetachedFromJNI()V

    .line 515
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListener:Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->removeEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V

    .line 516
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setDeferredComponentManager(Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;)V

    .line 517
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->detachFromNativeAndReleaseResources()V

    .line 518
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->deferredComponentManager()Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 519
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->deferredComponentManager()Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;->destroy()V

    .line 520
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->deferredComponentChannel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->setDeferredComponentManager(Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;)V

    .line 522
    :cond_1
    sget-object v0, Lio/flutter/embedding/engine/FlutterEngine;->idToEngine:Ljava/util/Map;

    iget-wide v1, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    return-void
.end method

.method public getAccessibilityChannel()Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;
    .locals 1

    .line 569
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    return-object v0
.end method

.method public getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;
    .locals 1

    .line 709
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    return-object v0
.end method

.method public getBackGestureChannel()Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;
    .locals 1

    .line 593
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->backGestureChannel:Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;

    return-object v0
.end method

.method public getBroadcastReceiverControlSurface()Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverControlSurface;
    .locals 1

    .line 719
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    return-object v0
.end method

.method public getContentProviderControlSurface()Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderControlSurface;
    .locals 1

    .line 724
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    return-object v0
.end method

.method public getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;
    .locals 1

    .line 552
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    return-object v0
.end method

.method public getDeferredComponentChannel()Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;
    .locals 1

    .line 635
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->deferredComponentChannel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    return-object v0
.end method

.method public getEngineId()J
    .locals 2

    .line 729
    iget-wide v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineId:J

    return-wide v0
.end method

.method public getLifecycleChannel()Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;
    .locals 1

    .line 575
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->lifecycleChannel:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    return-object v0
.end method

.method public getLocalizationChannel()Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;
    .locals 1

    .line 581
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->localizationChannel:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    return-object v0
.end method

.method public getLocalizationPlugin()Lio/flutter/plugin/localization/LocalizationPlugin;
    .locals 1

    .line 685
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    return-object v0
.end method

.method public getMouseCursorChannel()Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;
    .locals 1

    .line 647
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->mouseCursorChannel:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;

    return-object v0
.end method

.method public getNavigationChannel()Lio/flutter/embedding/engine/systemchannels/NavigationChannel;
    .locals 1

    .line 587
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->navigationChannel:Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    return-object v0
.end method

.method public getPlatformChannel()Lio/flutter/embedding/engine/systemchannels/PlatformChannel;
    .locals 1

    .line 602
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    return-object v0
.end method

.method public getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;
    .locals 1

    .line 694
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    return-object v0
.end method

.method public getPlatformViewsController2()Lio/flutter/plugin/platform/PlatformViewsController2;
    .locals 1

    .line 699
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    return-object v0
.end method

.method public getPlatformViewsControllerDelegator()Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;
    .locals 1

    .line 704
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsControllerDelegator:Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;

    return-object v0
.end method

.method public getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;
    .locals 1

    .line 679
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    return-object v0
.end method

.method public getProcessTextChannel()Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;
    .locals 1

    .line 608
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->processTextChannel:Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;

    return-object v0
.end method

.method public getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 1

    .line 563
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->renderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    return-object v0
.end method

.method public getRestorationChannel()Lio/flutter/embedding/engine/systemchannels/RestorationChannel;
    .locals 1

    .line 620
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->restorationChannel:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    return-object v0
.end method

.method public getScribeChannel()Lio/flutter/embedding/engine/systemchannels/ScribeChannel;
    .locals 1

    .line 659
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->scribeChannel:Lio/flutter/embedding/engine/systemchannels/ScribeChannel;

    return-object v0
.end method

.method public getSensitiveContentChannel()Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;
    .locals 1

    .line 665
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->sensitiveContentChannel:Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;

    return-object v0
.end method

.method public getServiceControlSurface()Lio/flutter/embedding/engine/plugins/service/ServiceControlSurface;
    .locals 1

    .line 714
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    return-object v0
.end method

.method public getSettingsChannel()Lio/flutter/embedding/engine/systemchannels/SettingsChannel;
    .locals 1

    .line 629
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->settingsChannel:Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    return-object v0
.end method

.method public getSpellCheckChannel()Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;
    .locals 1

    .line 671
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->spellCheckChannel:Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;

    return-object v0
.end method

.method public getSystemChannel()Lio/flutter/embedding/engine/systemchannels/SystemChannel;
    .locals 1

    .line 641
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->systemChannel:Lio/flutter/embedding/engine/systemchannels/SystemChannel;

    return-object v0
.end method

.method public getTextInputChannel()Lio/flutter/embedding/engine/systemchannels/TextInputChannel;
    .locals 1

    .line 653
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    return-object v0
.end method

.method public removeEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V
    .locals 1
    .param p1, "listener"    # Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    .line 538
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 539
    return-void
.end method

.method spawn(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/lang/String;Ljava/util/List;Lio/flutter/plugin/platform/PlatformViewsController;ZZ)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dartEntrypoint"    # Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;
    .param p3, "initialRoute"    # Ljava/lang/String;
    .param p5, "platformViewsController"    # Lio/flutter/plugin/platform/PlatformViewsController;
    .param p6, "automaticallyRegisterPlugins"    # Z
    .param p7, "waitForRestorationData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugin/platform/PlatformViewsController;",
            "ZZ)",
            "Lio/flutter/embedding/engine/FlutterEngine;"
        }
    .end annotation

    .line 476
    .local p4, "dartEntrypointArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-direct/range {p0 .. p0}, Lio/flutter/embedding/engine/FlutterEngine;->isAttachedToJni()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    move-object/from16 v1, p0

    iget-object v2, v1, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v3, v0, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->dartEntrypointFunctionName:Ljava/lang/String;

    iget-object v4, v0, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->dartEntrypointLibrary:Ljava/lang/String;

    sget-wide v7, Lio/flutter/embedding/engine/FlutterEngine;->nextEngineId:J

    .line 482
    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v8}, Lio/flutter/embedding/engine/FlutterJNI;->spawn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v12

    .line 488
    .local v12, "newFlutterJNI":Lio/flutter/embedding/engine/FlutterJNI;
    new-instance v9, Lio/flutter/embedding/engine/FlutterEngine;

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p1

    move-object/from16 v13, p5

    move/from16 v15, p6

    move/from16 v16, p7

    invoke-direct/range {v9 .. v16}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;ZZ)V

    return-object v9

    .line 477
    .end local v12    # "newFlutterJNI":Lio/flutter/embedding/engine/FlutterJNI;
    :cond_0
    move-object/from16 v1, p0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Spawn can only be called on a fully constructed FlutterEngine"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateDisplayMetrics(FFF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "density"    # F

    .line 760
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->updateDisplayMetrics(IFFF)V

    .line 761
    return-void
.end method
