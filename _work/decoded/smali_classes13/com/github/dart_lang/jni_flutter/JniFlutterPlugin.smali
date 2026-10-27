.class public Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;
.super Ljava/lang/Object;
.source "JniFlutterPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# static fields
.field private static context:Landroid/content/Context;

.field private static final pluginMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile activity:Landroid/app/Activity;

.field private engineId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;->pluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity(J)Landroid/app/Activity;
    .locals 2
    .param p0, "engineId"    # J

    .line 34
    sget-object v0, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;->pluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;

    iget-object v0, v0, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 30
    sget-object v0, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;->context:Landroid/content/Context;

    return-object v0
.end method

.method private setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "newActivity"    # Landroid/app/Activity;

    .line 53
    iput-object p1, p0, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;->activity:Landroid/app/Activity;

    .line 54
    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 58
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;->setActivity(Landroid/app/Activity;)V

    .line 59
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 41
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getEngineId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;->engineId:J

    .line 42
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;->context:Landroid/content/Context;

    .line 43
    sget-object v0, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;->pluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v1, p0, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;->engineId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;->setActivity(Landroid/app/Activity;)V

    .line 74
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;->setActivity(Landroid/app/Activity;)V

    .line 64
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;->activity:Landroid/app/Activity;

    .line 49
    sget-object v0, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;->pluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v1, p0, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;->engineId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 68
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;->setActivity(Landroid/app/Activity;)V

    .line 69
    return-void
.end method
