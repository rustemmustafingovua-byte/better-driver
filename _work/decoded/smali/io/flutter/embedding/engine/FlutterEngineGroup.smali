.class public Lio/flutter/embedding/engine/FlutterEngineGroup;
.super Ljava/lang/Object;
.source "FlutterEngineGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/FlutterEngineGroup$Options;
    }
.end annotation


# instance fields
.field final activeEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/embedding/engine/FlutterEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/FlutterEngineGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dartVmArgs"    # [Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineGroup;->activeEngines:Ljava/util/List;

    .line 60
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object v0

    .line 61
    .local v0, "loader":Lio/flutter/embedding/engine/loader/FlutterLoader;
    invoke-virtual {v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->initialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public createAndRunDefaultEngine(Landroid/content/Context;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/flutter/embedding/engine/FlutterEngineGroup;->createAndRunEngine(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v0

    return-object v0
.end method

.method public createAndRunEngine(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dartEntrypoint"    # Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/flutter/embedding/engine/FlutterEngineGroup;->createAndRunEngine(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v0

    return-object v0
.end method

.method public createAndRunEngine(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dartEntrypoint"    # Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;
    .param p3, "initialRoute"    # Ljava/lang/String;

    .line 121
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    invoke-direct {v0, p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v0, p2}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->setDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;)Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    move-result-object v0

    invoke-virtual {v0, p3}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->setInitialRoute(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/FlutterEngineGroup;->createAndRunEngine(Lio/flutter/embedding/engine/FlutterEngineGroup$Options;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v0

    return-object v0
.end method

.method public createAndRunEngine(Lio/flutter/embedding/engine/FlutterEngineGroup$Options;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 10
    .param p1, "options"    # Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "engine":Lio/flutter/embedding/engine/FlutterEngine;
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 143
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getDartEntrypoint()Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;

    move-result-object v1

    .line 144
    .local v1, "dartEntrypoint":Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getInitialRoute()Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "initialRoute":Ljava/lang/String;
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getDartEntrypointArgs()Ljava/util/List;

    move-result-object v5

    .line 146
    .local v5, "dartEntrypointArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v3

    .line 148
    .local v3, "platformViewsController":Lio/flutter/plugin/platform/PlatformViewsController;
    if-eqz v3, :cond_0

    move-object v6, v3

    goto :goto_0

    :cond_0
    new-instance v6, Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-direct {v6}, Lio/flutter/plugin/platform/PlatformViewsController;-><init>()V

    .line 149
    .end local v3    # "platformViewsController":Lio/flutter/plugin/platform/PlatformViewsController;
    .local v6, "platformViewsController":Lio/flutter/plugin/platform/PlatformViewsController;
    :goto_0
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getAutomaticallyRegisterPlugins()Z

    move-result v7

    .line 150
    .local v7, "automaticallyRegisterPlugins":Z
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getWaitForRestorationData()Z

    move-result v8

    .line 152
    .local v8, "waitForRestorationData":Z
    if-nez v1, :cond_1

    .line 153
    invoke-static {}, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->createDefault()Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;

    move-result-object v1

    move-object v3, v1

    goto :goto_1

    .line 152
    :cond_1
    move-object v3, v1

    .line 156
    .end local v1    # "dartEntrypoint":Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;
    .local v3, "dartEntrypoint":Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;
    :goto_1
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineGroup;->activeEngines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 157
    nop

    .line 158
    invoke-virtual {p0, v2, v6, v7, v8}, Lio/flutter/embedding/engine/FlutterEngineGroup;->createEngine(Landroid/content/Context;Lio/flutter/plugin/platform/PlatformViewsController;ZZ)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v0

    .line 163
    if-eqz v4, :cond_2

    .line 164
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getNavigationChannel()Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    move-result-object v1

    invoke-virtual {v1, v4}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->setInitialRoute(Ljava/lang/String;)V

    .line 166
    :cond_2
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Lio/flutter/embedding/engine/dart/DartExecutor;->executeDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/util/List;)V

    goto :goto_2

    .line 168
    :cond_3
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineGroup;->activeEngines:Ljava/util/List;

    .line 170
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/FlutterEngine;

    .line 171
    invoke-virtual/range {v1 .. v8}, Lio/flutter/embedding/engine/FlutterEngine;->spawn(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/lang/String;Ljava/util/List;Lio/flutter/plugin/platform/PlatformViewsController;ZZ)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v0

    .line 181
    :goto_2
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngineGroup;->activeEngines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    move-object v1, v0

    .line 184
    .local v1, "engineToCleanUpOnDestroy":Lio/flutter/embedding/engine/FlutterEngine;
    new-instance v9, Lio/flutter/embedding/engine/FlutterEngineGroup$1;

    invoke-direct {v9, p0, v1}, Lio/flutter/embedding/engine/FlutterEngineGroup$1;-><init>(Lio/flutter/embedding/engine/FlutterEngineGroup;Lio/flutter/embedding/engine/FlutterEngine;)V

    invoke-virtual {v0, v9}, Lio/flutter/embedding/engine/FlutterEngine;->addEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V

    .line 197
    return-object v0
.end method

.method createEngine(Landroid/content/Context;Lio/flutter/plugin/platform/PlatformViewsController;ZZ)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "platformViewsController"    # Lio/flutter/plugin/platform/PlatformViewsController;
    .param p3, "automaticallyRegisterPlugins"    # Z
    .param p4, "waitForRestorationData"    # Z

    .line 206
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngine;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v8, p0

    move-object v1, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "platformViewsController":Lio/flutter/plugin/platform/PlatformViewsController;
    .end local p3    # "automaticallyRegisterPlugins":Z
    .end local p4    # "waitForRestorationData":Z
    .local v1, "context":Landroid/content/Context;
    .local v4, "platformViewsController":Lio/flutter/plugin/platform/PlatformViewsController;
    .local v6, "automaticallyRegisterPlugins":Z
    .local v7, "waitForRestorationData":Z
    invoke-direct/range {v0 .. v8}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;ZZLio/flutter/embedding/engine/FlutterEngineGroup;)V

    return-object v0
.end method
