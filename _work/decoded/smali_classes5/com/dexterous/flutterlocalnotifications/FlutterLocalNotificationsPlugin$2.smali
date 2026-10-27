.class Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$2;
.super Ljava/lang/Object;
.source "FlutterLocalNotificationsPlugin.java"

# interfaces
.implements Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;

.field final synthetic val$result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method constructor <init>(Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1438
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$2;->this$0:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;

    iput-object p2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$2;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Z)V
    .locals 2
    .param p1, "granted"    # Z

    .line 1441
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$2;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1442
    return-void
.end method

.method public fail(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 1446
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$2;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    const-string v1, "permissionRequestInProgress"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1447
    return-void
.end method
