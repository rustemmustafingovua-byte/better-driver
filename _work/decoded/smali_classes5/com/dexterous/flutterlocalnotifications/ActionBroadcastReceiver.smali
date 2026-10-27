.class public Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActionBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;
    }
.end annotation


# static fields
.field public static final ACTION_TAPPED:Ljava/lang/String; = "com.dexterous.flutterlocalnotifications.ActionBroadcastReceiver.ACTION_TAPPED"

.field private static final TAG:Ljava/lang/String; = "ActionBroadcastReceiver"

.field private static actionEventSink:Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;

.field private static engine:Lio/flutter/embedding/engine/FlutterEngine;


# instance fields
.field preferences:Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;)V
    .locals 0
    .param p1, "preferences"    # Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->preferences:Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;

    .line 39
    return-void
.end method

.method private initializeEventChannel(Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 3
    .param p1, "dartExecutor"    # Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 106
    new-instance v0, Lio/flutter/plugin/common/EventChannel;

    .line 108
    invoke-virtual {p1}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    const-string v2, "dexterous.com/flutter/local_notifications/actions"

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 109
    .local v0, "channel":Lio/flutter/plugin/common/EventChannel;
    sget-object v1, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->actionEventSink:Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 110
    return-void
.end method

.method private startEngine(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    const-string v1, "ActionBroadcastReceiver"

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "Engine is already initialised"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 80
    :cond_0
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    .line 81
    .local v0, "injector":Lio/flutter/FlutterInjector;
    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object v2

    .line 83
    .local v2, "loader":Lio/flutter/embedding/engine/loader/FlutterLoader;
    invoke-virtual {v2, p1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;)V

    .line 84
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lio/flutter/embedding/engine/loader/FlutterLoader;->ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;)V

    .line 86
    new-instance v3, Lio/flutter/embedding/engine/FlutterEngine;

    invoke-direct {v3, p1}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 90
    iget-object v3, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->preferences:Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;

    invoke-virtual {v3}, Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;->lookupDispatcherHandle()Lio/flutter/view/FlutterCallbackInformation;

    move-result-object v3

    .line 91
    .local v3, "dispatcherHandle":Lio/flutter/view/FlutterCallbackInformation;
    if-nez v3, :cond_1

    .line 92
    const-string v4, "Callback information could not be retrieved"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 96
    :cond_1
    sget-object v1, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v1

    .line 98
    .local v1, "dartExecutor":Lio/flutter/embedding/engine/dart/DartExecutor;
    invoke-direct {p0, v1}, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->initializeEventChannel(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    .line 100
    invoke-virtual {v2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->findAppBundlePath()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "dartBundlePath":Ljava/lang/String;
    new-instance v5, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6, v4, v3}, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lio/flutter/view/FlutterCallbackInformation;)V

    .line 101
    invoke-virtual {v1, v5}, Lio/flutter/embedding/engine/dart/DartExecutor;->executeDartCallback(Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;)V

    .line 103
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 46
    const-string v0, "com.dexterous.flutterlocalnotifications.ActionBroadcastReceiver.ACTION_TAPPED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->preferences:Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;

    if-nez v0, :cond_1

    new-instance v0, Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;

    invoke-direct {v0, p1}, Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->preferences:Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;

    :goto_0
    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->preferences:Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;

    .line 52
    nop

    .line 53
    invoke-static {p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->extractNotificationResponseMap(Landroid/content/Intent;)Ljava/util/Map;

    move-result-object v0

    .line 55
    .local v0, "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "cancelNotification"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    const-string v1, "notificationId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 57
    .local v1, "notificationId":I
    const-string v2, "notificationTag"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 59
    .local v2, "tag":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 60
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    goto :goto_1

    .line 62
    :cond_2
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 66
    .end local v1    # "notificationId":I
    .end local v2    # "tag":Ljava/lang/Object;
    :cond_3
    :goto_1
    sget-object v1, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->actionEventSink:Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;

    if-nez v1, :cond_4

    .line 67
    new-instance v1, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;-><init>(Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$1;)V

    sput-object v1, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->actionEventSink:Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;

    .line 69
    :cond_4
    sget-object v1, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->actionEventSink:Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;

    invoke-virtual {v1, v0}, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;->addItem(Ljava/util/Map;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->startEngine(Landroid/content/Context;)V

    .line 72
    return-void
.end method
