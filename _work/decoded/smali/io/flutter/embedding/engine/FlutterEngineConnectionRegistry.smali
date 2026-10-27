.class Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;
.super Ljava/lang/Object;
.source "FlutterEngineConnectionRegistry.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/PluginRegistry;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;
.implements Lio/flutter/embedding/engine/plugins/service/ServiceControlSurface;
.implements Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverControlSurface;
.implements Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderControlSurface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$DefaultFlutterAssets;,
        Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;,
        Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineServicePluginBinding;,
        Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineBroadcastReceiverPluginBinding;,
        Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineContentProviderPluginBinding;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterEngineCxnRegstry"


# instance fields
.field private final activityAwarePlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
            ">;",
            "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
            ">;"
        }
    .end annotation
.end field

.field private activityPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final broadcastReceiverAwarePlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
            ">;",
            "Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;",
            ">;"
        }
    .end annotation
.end field

.field private broadcastReceiverPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineBroadcastReceiverPluginBinding;

.field private contentProvider:Landroid/content/ContentProvider;

.field private final contentProviderAwarePlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
            ">;",
            "Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;",
            ">;"
        }
    .end annotation
.end field

.field private contentProviderPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineContentProviderPluginBinding;

.field private exclusiveActivity:Lio/flutter/embedding/android/ExclusiveAppComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/flutter/embedding/android/ExclusiveAppComponent<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

.field private final flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;

.field private isWaitingForActivityReattachment:Z

.field private final pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private final plugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
            ">;",
            "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private service:Landroid/app/Service;

.field private final serviceAwarePlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
            ">;",
            "Lio/flutter/embedding/engine/plugins/service/ServiceAware;",
            ">;"
        }
    .end annotation
.end field

.field private servicePluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineServicePluginBinding;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/FlutterEngine;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterEngineGroup;)V
    .locals 9
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "flutterEngine"    # Lio/flutter/embedding/engine/FlutterEngine;
    .param p3, "flutterLoader"    # Lio/flutter/embedding/engine/loader/FlutterLoader;
    .param p4, "group"    # Lio/flutter/embedding/engine/FlutterEngineGroup;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->plugins:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->activityAwarePlugins:Ljava/util/Map;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isWaitingForActivityReattachment:Z

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->serviceAwarePlugins:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->broadcastReceiverAwarePlugins:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->contentProviderAwarePlugins:Ljava/util/Map;

    .line 103
    iput-object p2, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 104
    iput-object p3, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 105
    new-instance v1, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 109
    invoke-virtual {p2}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v4

    .line 110
    invoke-virtual {p2}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v5

    .line 111
    invoke-virtual {p2}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->getRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    move-result-object v6

    new-instance v7, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$DefaultFlutterAssets;

    const/4 v0, 0x0

    invoke-direct {v7, p3, v0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$DefaultFlutterAssets;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$1;)V

    move-object v2, p1

    move-object v3, p2

    move-object v8, p4

    .end local p1    # "appContext":Landroid/content/Context;
    .end local p2    # "flutterEngine":Lio/flutter/embedding/engine/FlutterEngine;
    .end local p4    # "group":Lio/flutter/embedding/engine/FlutterEngineGroup;
    .local v2, "appContext":Landroid/content/Context;
    .local v3, "flutterEngine":Lio/flutter/embedding/engine/FlutterEngine;
    .local v8, "group":Lio/flutter/embedding/engine/FlutterEngineGroup;
    invoke-direct/range {v1 .. v8}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/FlutterEngine;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/view/TextureRegistry;Lio/flutter/plugin/platform/PlatformViewRegistry;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;Lio/flutter/embedding/engine/FlutterEngineGroup;)V

    iput-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 114
    return-void
.end method

.method private attachToActivityInternal(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 330
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;

    invoke-direct {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;-><init>(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->activityPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;

    .line 331
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 336
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 337
    const-string v2, "enable-software-rendering"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    .line 338
    :cond_0
    move v2, v1

    :goto_0
    nop

    .line 345
    .local v2, "useSoftwareRendering":Z
    if-eqz v2, :cond_1

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "If you are attempting to set --enable-software-rendering via Intent extras to launch a Flutter component outside of using the Flutter CLI, note that support for setting engine flags on Android via Intent will soon be dropped; see https://github.com/flutter/flutter/issues/172553 for more information on this breaking change. To migrate, set the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->ENABLE_SOFTWARE_RENDERING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    iget-object v4, v4, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->metadataKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " metadata in the application manifest. See https://github.com/flutter/flutter/blob/main/docs/engine/Flutter-Android-Engine-Flags.md for more info."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FlutterEngineCxnRegstry"

    invoke-static {v4, v3}, Lio/flutter/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 353
    :cond_1
    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;

    invoke-virtual {v3}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getSofwareRenderingEnabledViaManifest()Z

    move-result v2

    .line 356
    :goto_1
    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v3}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/flutter/plugin/platform/PlatformViewsController;->setSoftwareRendering(Z)V

    .line 361
    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 362
    invoke-virtual {v3}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsControllerDelegator()Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;

    move-result-object v3

    iget-object v4, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 363
    invoke-virtual {v4}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v4

    iget-object v5, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v5}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->attach(Landroid/content/Context;Lio/flutter/view/TextureRegistry;Lio/flutter/embedding/engine/dart/DartExecutor;)V

    .line 366
    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->activityAwarePlugins:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/flutter/embedding/engine/plugins/activity/ActivityAware;

    .line 367
    .local v4, "activityAware":Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
    iget-boolean v5, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isWaitingForActivityReattachment:Z

    if-eqz v5, :cond_2

    .line 368
    iget-object v5, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->activityPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;

    invoke-interface {v4, v5}, Lio/flutter/embedding/engine/plugins/activity/ActivityAware;->onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    goto :goto_3

    .line 370
    :cond_2
    iget-object v5, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->activityPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;

    invoke-interface {v4, v5}, Lio/flutter/embedding/engine/plugins/activity/ActivityAware;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 372
    .end local v4    # "activityAware":Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
    :goto_3
    goto :goto_2

    .line 373
    :cond_3
    iput-boolean v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isWaitingForActivityReattachment:Z

    .line 374
    return-void
.end method

.method private attachedActivity()Landroid/app/Activity;
    .locals 1

    .line 312
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->exclusiveActivity:Lio/flutter/embedding/android/ExclusiveAppComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->exclusiveActivity:Lio/flutter/embedding/android/ExclusiveAppComponent;

    invoke-interface {v0}, Lio/flutter/embedding/android/ExclusiveAppComponent;->getAppComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private detachFromActivityInternal()V
    .locals 1

    .line 413
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->detach()V

    .line 414
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController2()Lio/flutter/plugin/platform/PlatformViewsController2;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->detach()V

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->exclusiveActivity:Lio/flutter/embedding/android/ExclusiveAppComponent;

    .line 417
    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->activityPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;

    .line 418
    return-void
.end method

.method private detachFromAppComponent()V
    .locals 1

    .line 295
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->detachFromActivity()V

    goto :goto_0

    .line 297
    :cond_0
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->detachFromService()V

    goto :goto_0

    .line 299
    :cond_1
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToBroadcastReceiver()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->detachFromBroadcastReceiver()V

    goto :goto_0

    .line 301
    :cond_2
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToContentProvider()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->detachFromContentProvider()V

    .line 304
    :cond_3
    :goto_0
    return-void
.end method

.method private isAttachedToActivity()Z
    .locals 1

    .line 308
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->exclusiveActivity:Lio/flutter/embedding/android/ExclusiveAppComponent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAttachedToBroadcastReceiver()Z
    .locals 1

    .line 577
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAttachedToContentProvider()Z
    .locals 1

    .line 625
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->contentProvider:Landroid/content/ContentProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAttachedToService()Z
    .locals 1

    .line 516
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->service:Landroid/app/Service;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V
    .locals 4
    .param p1, "plugin"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlutterEngineConnectionRegistry#add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 133
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->has(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "FlutterEngineCxnRegstry"

    if-eqz v1, :cond_1

    .line 134
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to register plugin ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") but it was already registered with this FlutterEngine ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 142
    :cond_0
    return-void

    .line 145
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding plugin: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->plugins:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    invoke-interface {p1, v1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin;->onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V

    .line 154
    instance-of v1, p1, Lio/flutter/embedding/engine/plugins/activity/ActivityAware;

    if-eqz v1, :cond_2

    .line 155
    move-object v1, p1

    check-cast v1, Lio/flutter/embedding/engine/plugins/activity/ActivityAware;

    .line 156
    .local v1, "activityAware":Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->activityAwarePlugins:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->activityPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/plugins/activity/ActivityAware;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 166
    .end local v1    # "activityAware":Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
    :cond_2
    instance-of v1, p1, Lio/flutter/embedding/engine/plugins/service/ServiceAware;

    if-eqz v1, :cond_3

    .line 167
    move-object v1, p1

    check-cast v1, Lio/flutter/embedding/engine/plugins/service/ServiceAware;

    .line 168
    .local v1, "serviceAware":Lio/flutter/embedding/engine/plugins/service/ServiceAware;
    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->serviceAwarePlugins:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToService()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->servicePluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineServicePluginBinding;

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/plugins/service/ServiceAware;->onAttachedToService(Lio/flutter/embedding/engine/plugins/service/ServicePluginBinding;)V

    .line 178
    .end local v1    # "serviceAware":Lio/flutter/embedding/engine/plugins/service/ServiceAware;
    :cond_3
    instance-of v1, p1, Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;

    if-eqz v1, :cond_4

    .line 179
    move-object v1, p1

    check-cast v1, Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;

    .line 180
    .local v1, "broadcastReceiverAware":Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;
    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->broadcastReceiverAwarePlugins:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToBroadcastReceiver()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 183
    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->broadcastReceiverPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineBroadcastReceiverPluginBinding;

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;->onAttachedToBroadcastReceiver(Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverPluginBinding;)V

    .line 190
    .end local v1    # "broadcastReceiverAware":Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;
    :cond_4
    instance-of v1, p1, Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;

    if-eqz v1, :cond_5

    .line 191
    move-object v1, p1

    check-cast v1, Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;

    .line 192
    .local v1, "contentProviderAware":Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;
    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->contentProviderAwarePlugins:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToContentProvider()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 195
    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->contentProviderPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineContentProviderPluginBinding;

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;->onAttachedToContentProvider(Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderPluginBinding;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    .end local v1    # "contentProviderAware":Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 199
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_6
    return-void

    .line 130
    .restart local v0    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_7

    :try_start_3
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    throw v1
.end method

.method public add(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p1, "plugins":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/embedding/engine/plugins/FlutterPlugin;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/plugins/FlutterPlugin;

    .line 204
    .local v1, "plugin":Lio/flutter/embedding/engine/plugins/FlutterPlugin;
    invoke-virtual {p0, v1}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V

    .line 205
    .end local v1    # "plugin":Lio/flutter/embedding/engine/plugins/FlutterPlugin;
    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method

.method public attachToActivity(Lio/flutter/embedding/android/ExclusiveAppComponent;Landroidx/lifecycle/Lifecycle;)V
    .locals 3
    .param p2, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/embedding/android/ExclusiveAppComponent<",
            "Landroid/app/Activity;",
            ">;",
            "Landroidx/lifecycle/Lifecycle;",
            ")V"
        }
    .end annotation

    .line 318
    .local p1, "exclusiveActivity":Lio/flutter/embedding/android/ExclusiveAppComponent;, "Lio/flutter/embedding/android/ExclusiveAppComponent<Landroid/app/Activity;>;"
    const-string v0, "FlutterEngineConnectionRegistry#attachToActivity"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 319
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->exclusiveActivity:Lio/flutter/embedding/android/ExclusiveAppComponent;

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->exclusiveActivity:Lio/flutter/embedding/android/ExclusiveAppComponent;

    invoke-interface {v1}, Lio/flutter/embedding/android/ExclusiveAppComponent;->detachFromFlutterEngine()V

    .line 323
    :cond_0
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->detachFromAppComponent()V

    .line 324
    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->exclusiveActivity:Lio/flutter/embedding/android/ExclusiveAppComponent;

    .line 325
    invoke-interface {p1}, Lio/flutter/embedding/android/ExclusiveAppComponent;->getAppComponent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p0, v1, p2}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->attachToActivityInternal(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 327
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_1
    return-void

    .line 318
    .restart local v0    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method public attachToBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroidx/lifecycle/Lifecycle;)V
    .locals 4
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 583
    nop

    .line 584
    const-string v0, "FlutterEngineConnectionRegistry#attachToBroadcastReceiver"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 586
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->detachFromAppComponent()V

    .line 588
    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 589
    new-instance v1, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineBroadcastReceiverPluginBinding;

    invoke-direct {v1, p1}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineBroadcastReceiverPluginBinding;-><init>(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->broadcastReceiverPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineBroadcastReceiverPluginBinding;

    .line 596
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->broadcastReceiverAwarePlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;

    .line 597
    .local v2, "broadcastReceiverAware":Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;
    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->broadcastReceiverPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineBroadcastReceiverPluginBinding;

    invoke-interface {v2, v3}, Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;->onAttachedToBroadcastReceiver(Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverPluginBinding;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    .end local v2    # "broadcastReceiverAware":Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;
    goto :goto_0

    .line 599
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 600
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_1
    return-void

    .line 583
    .restart local v0    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public attachToContentProvider(Landroid/content/ContentProvider;Landroidx/lifecycle/Lifecycle;)V
    .locals 4
    .param p1, "contentProvider"    # Landroid/content/ContentProvider;
    .param p2, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 632
    nop

    .line 633
    const-string v0, "FlutterEngineConnectionRegistry#attachToContentProvider"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 635
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->detachFromAppComponent()V

    .line 637
    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->contentProvider:Landroid/content/ContentProvider;

    .line 638
    new-instance v1, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineContentProviderPluginBinding;

    invoke-direct {v1, p1}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineContentProviderPluginBinding;-><init>(Landroid/content/ContentProvider;)V

    iput-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->contentProviderPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineContentProviderPluginBinding;

    .line 645
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->contentProviderAwarePlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;

    .line 646
    .local v2, "contentProviderAware":Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;
    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->contentProviderPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineContentProviderPluginBinding;

    invoke-interface {v2, v3}, Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;->onAttachedToContentProvider(Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderPluginBinding;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    .end local v2    # "contentProviderAware":Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;
    goto :goto_0

    .line 648
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 649
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_1
    return-void

    .line 632
    .restart local v0    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public attachToService(Landroid/app/Service;Landroidx/lifecycle/Lifecycle;Z)V
    .locals 4
    .param p1, "service"    # Landroid/app/Service;
    .param p2, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .param p3, "isForeground"    # Z

    .line 522
    const-string v0, "FlutterEngineConnectionRegistry#attachToService"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 524
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->detachFromAppComponent()V

    .line 526
    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->service:Landroid/app/Service;

    .line 527
    new-instance v1, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineServicePluginBinding;

    invoke-direct {v1, p1, p2}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineServicePluginBinding;-><init>(Landroid/app/Service;Landroidx/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->servicePluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineServicePluginBinding;

    .line 530
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->serviceAwarePlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/embedding/engine/plugins/service/ServiceAware;

    .line 531
    .local v2, "serviceAware":Lio/flutter/embedding/engine/plugins/service/ServiceAware;
    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->servicePluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineServicePluginBinding;

    invoke-interface {v2, v3}, Lio/flutter/embedding/engine/plugins/service/ServiceAware;->onAttachedToService(Lio/flutter/embedding/engine/plugins/service/ServicePluginBinding;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    .end local v2    # "serviceAware":Lio/flutter/embedding/engine/plugins/service/ServiceAware;
    goto :goto_0

    .line 533
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 534
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_1
    return-void

    .line 522
    .restart local v0    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public destroy()V
    .locals 2

    .line 117
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Destroying."

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->detachFromAppComponent()V

    .line 125
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->removeAll()V

    .line 126
    return-void
.end method

.method public detachFromActivity()V
    .locals 3

    .line 397
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    nop

    .line 399
    const-string v0, "FlutterEngineConnectionRegistry#detachFromActivity"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 400
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->activityAwarePlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/embedding/engine/plugins/activity/ActivityAware;

    .line 401
    .local v2, "activityAware":Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
    invoke-interface {v2}, Lio/flutter/embedding/engine/plugins/activity/ActivityAware;->onDetachedFromActivity()V

    .line 402
    .end local v2    # "activityAware":Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
    goto :goto_0

    .line 404
    :cond_0
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->detachFromActivityInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 398
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_1
    goto :goto_2

    .restart local v0    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1

    .line 407
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_3
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to detach plugins from an Activity when no Activity was attached."

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :goto_2
    return-void
.end method

.method public detachFromActivityForConfigChanges()V
    .locals 3

    .line 378
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    nop

    .line 380
    const-string v0, "FlutterEngineConnectionRegistry#detachFromActivityForConfigChanges"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 382
    .local v0, "e":Lio/flutter/util/TraceSection;
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isWaitingForActivityReattachment:Z

    .line 384
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->activityAwarePlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/embedding/engine/plugins/activity/ActivityAware;

    .line 385
    .local v2, "activityAware":Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
    invoke-interface {v2}, Lio/flutter/embedding/engine/plugins/activity/ActivityAware;->onDetachedFromActivityForConfigChanges()V

    .line 386
    .end local v2    # "activityAware":Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
    goto :goto_0

    .line 388
    :cond_0
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->detachFromActivityInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 379
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_1
    goto :goto_2

    .restart local v0    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1

    .line 391
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_3
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to detach plugins from an Activity when no Activity was attached."

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_2
    return-void
.end method

.method public detachFromBroadcastReceiver()V
    .locals 3

    .line 604
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToBroadcastReceiver()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 605
    nop

    .line 606
    const-string v0, "FlutterEngineConnectionRegistry#detachFromBroadcastReceiver"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 610
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->broadcastReceiverAwarePlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;

    .line 611
    .local v2, "broadcastReceiverAware":Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;
    invoke-interface {v2}, Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;->onDetachedFromBroadcastReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    .end local v2    # "broadcastReceiverAware":Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;
    goto :goto_0

    .line 613
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 605
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_1
    goto :goto_2

    .restart local v0    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1

    .line 615
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_3
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to detach plugins from a BroadcastReceiver when no BroadcastReceiver was attached."

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :goto_2
    return-void
.end method

.method public detachFromContentProvider()V
    .locals 3

    .line 653
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToContentProvider()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 654
    nop

    .line 655
    const-string v0, "FlutterEngineConnectionRegistry#detachFromContentProvider"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 658
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->contentProviderAwarePlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;

    .line 659
    .local v2, "contentProviderAware":Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;
    invoke-interface {v2}, Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;->onDetachedFromContentProvider()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    .end local v2    # "contentProviderAware":Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;
    goto :goto_0

    .line 661
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 654
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_1
    goto :goto_2

    .restart local v0    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1

    .line 663
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_3
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to detach plugins from a ContentProvider when no ContentProvider was attached."

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :goto_2
    return-void
.end method

.method public detachFromService()V
    .locals 3

    .line 538
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToService()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 539
    nop

    .line 540
    const-string v0, "FlutterEngineConnectionRegistry#detachFromService"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 542
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->serviceAwarePlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/embedding/engine/plugins/service/ServiceAware;

    .line 543
    .local v2, "serviceAware":Lio/flutter/embedding/engine/plugins/service/ServiceAware;
    invoke-interface {v2}, Lio/flutter/embedding/engine/plugins/service/ServiceAware;->onDetachedFromService()V

    .line 544
    .end local v2    # "serviceAware":Lio/flutter/embedding/engine/plugins/service/ServiceAware;
    goto :goto_0

    .line 546
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->service:Landroid/app/Service;

    .line 547
    iput-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->servicePluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineServicePluginBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 539
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_1
    goto :goto_2

    .restart local v0    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1

    .line 550
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_3
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to detach plugins from a Service when no Service was attached."

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :goto_2
    return-void
.end method

.method public get(Ljava/lang/Class;)Lio/flutter/embedding/engine/plugins/FlutterPlugin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
            ">;)",
            "Lio/flutter/embedding/engine/plugins/FlutterPlugin;"
        }
    .end annotation

    .line 215
    .local p1, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/flutter/embedding/engine/plugins/FlutterPlugin;>;"
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->plugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/plugins/FlutterPlugin;

    return-object v0
.end method

.method public has(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
            ">;)Z"
        }
    .end annotation

    .line 210
    .local p1, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/flutter/embedding/engine/plugins/FlutterPlugin;>;"
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->plugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 440
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    nop

    .line 442
    const-string v0, "FlutterEngineConnectionRegistry#onActivityResult"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 443
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->activityPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;

    invoke-virtual {v1, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 443
    :cond_0
    return v1

    .line 441
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 446
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_2
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to notify ActivityAware plugins of onActivityResult, but no Activity was attached."

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public onMoveToBackground()V
    .locals 3

    .line 566
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    nop

    .line 568
    const-string v0, "FlutterEngineConnectionRegistry#onMoveToBackground"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 569
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->servicePluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineServicePluginBinding;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineServicePluginBinding;->onMoveToBackground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    goto :goto_1

    .line 567
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 572
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_1
    :goto_1
    return-void
.end method

.method public onMoveToForeground()V
    .locals 3

    .line 556
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    nop

    .line 558
    const-string v0, "FlutterEngineConnectionRegistry#onMoveToForeground"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 559
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->servicePluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineServicePluginBinding;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineServicePluginBinding;->onMoveToForeground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    goto :goto_1

    .line 557
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 562
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_1
    :goto_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 456
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    const-string v0, "FlutterEngineConnectionRegistry#onNewIntent"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 458
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->activityPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;

    invoke-virtual {v1, p1}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onNewIntent(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 457
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_0
    goto :goto_1

    .restart local v0    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 461
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_2
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to notify ActivityAware plugins of onNewIntent, but no Activity was attached."

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResult"    # [I

    .line 423
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    nop

    .line 425
    const-string v0, "FlutterEngineConnectionRegistry#onRequestPermissionsResult"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 426
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->activityPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;

    invoke-virtual {v1, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 426
    :cond_0
    return v1

    .line 424
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 430
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_2
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to notify ActivityAware plugins of onRequestPermissionsResult, but no Activity was attached."

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 500
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    nop

    .line 502
    const-string v0, "FlutterEngineConnectionRegistry#onRestoreInstanceState"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 503
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->activityPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;

    invoke-virtual {v1, p1}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 501
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_0
    goto :goto_1

    .restart local v0    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 506
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_2
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to notify ActivityAware plugins of onRestoreInstanceState, but no Activity was attached."

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 485
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    nop

    .line 487
    const-string v0, "FlutterEngineConnectionRegistry#onSaveInstanceState"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 488
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->activityPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;

    invoke-virtual {v1, p1}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 486
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_0
    goto :goto_1

    .restart local v0    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 491
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_2
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to notify ActivityAware plugins of onSaveInstanceState, but no Activity was attached."

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :goto_1
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 3

    .line 470
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    nop

    .line 472
    const-string v0, "FlutterEngineConnectionRegistry#onUserLeaveHint"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 473
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->activityPluginBinding:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onUserLeaveHint()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 471
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_0
    goto :goto_1

    .restart local v0    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 476
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_2
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to notify ActivityAware plugins of onUserLeaveHint, but no Activity was attached."

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :goto_1
    return-void
.end method

.method public remove(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p1, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/flutter/embedding/engine/plugins/FlutterPlugin;>;"
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->plugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/plugins/FlutterPlugin;

    .line 221
    .local v0, "plugin":Lio/flutter/embedding/engine/plugins/FlutterPlugin;
    if-nez v0, :cond_0

    .line 222
    return-void

    .line 225
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FlutterEngineConnectionRegistry#remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {v1}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v1

    .line 231
    .local v1, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    instance-of v2, v0, Lio/flutter/embedding/engine/plugins/activity/ActivityAware;

    if-eqz v2, :cond_2

    .line 232
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToActivity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    move-object v2, v0

    check-cast v2, Lio/flutter/embedding/engine/plugins/activity/ActivityAware;

    .line 234
    .local v2, "activityAware":Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
    invoke-interface {v2}, Lio/flutter/embedding/engine/plugins/activity/ActivityAware;->onDetachedFromActivity()V

    .line 236
    .end local v2    # "activityAware":Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
    :cond_1
    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->activityAwarePlugins:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_2
    instance-of v2, v0, Lio/flutter/embedding/engine/plugins/service/ServiceAware;

    if-eqz v2, :cond_4

    .line 243
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToService()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    move-object v2, v0

    check-cast v2, Lio/flutter/embedding/engine/plugins/service/ServiceAware;

    .line 245
    .local v2, "serviceAware":Lio/flutter/embedding/engine/plugins/service/ServiceAware;
    invoke-interface {v2}, Lio/flutter/embedding/engine/plugins/service/ServiceAware;->onDetachedFromService()V

    .line 247
    .end local v2    # "serviceAware":Lio/flutter/embedding/engine/plugins/service/ServiceAware;
    :cond_3
    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->serviceAwarePlugins:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_4
    instance-of v2, v0, Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;

    if-eqz v2, :cond_6

    .line 254
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToBroadcastReceiver()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 255
    move-object v2, v0

    check-cast v2, Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;

    .line 256
    .local v2, "broadcastReceiverAware":Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;
    invoke-interface {v2}, Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;->onDetachedFromBroadcastReceiver()V

    .line 258
    .end local v2    # "broadcastReceiverAware":Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverAware;
    :cond_5
    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->broadcastReceiverAwarePlugins:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_6
    instance-of v2, v0, Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;

    if-eqz v2, :cond_8

    .line 265
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->isAttachedToContentProvider()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 266
    move-object v2, v0

    check-cast v2, Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;

    .line 267
    .local v2, "contentProviderAware":Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;
    invoke-interface {v2}, Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;->onDetachedFromContentProvider()V

    .line 269
    .end local v2    # "contentProviderAware":Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderAware;
    :cond_7
    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->contentProviderAwarePlugins:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_8
    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    invoke-interface {v0, v2}, Lio/flutter/embedding/engine/plugins/FlutterPlugin;->onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V

    .line 275
    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->plugins:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lio/flutter/util/TraceSection;->close()V

    .line 277
    .end local v1    # "e":Lio/flutter/util/TraceSection;
    :cond_9
    return-void

    .line 225
    .restart local v1    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_a

    :try_start_1
    invoke-virtual {v1}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_0
    throw v2
.end method

.method public remove(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
            ">;>;)V"
        }
    .end annotation

    .line 281
    .local p1, "pluginClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Lio/flutter/embedding/engine/plugins/FlutterPlugin;>;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 282
    .local v1, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/flutter/embedding/engine/plugins/FlutterPlugin;>;"
    invoke-virtual {p0, v1}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->remove(Ljava/lang/Class;)V

    .line 283
    .end local v1    # "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/flutter/embedding/engine/plugins/FlutterPlugin;>;"
    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method

.method public removeAll()V
    .locals 2

    .line 290
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->plugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->remove(Ljava/util/Set;)V

    .line 291
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->plugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 292
    return-void
.end method
