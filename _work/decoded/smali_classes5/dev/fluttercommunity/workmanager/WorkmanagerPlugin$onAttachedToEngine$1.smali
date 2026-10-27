.class public final Ldev/fluttercommunity/workmanager/WorkmanagerPlugin$onAttachedToEngine$1;
.super Ljava/lang/Object;
.source "WorkmanagerPlugin.kt"

# interfaces
.implements Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$DispatcherHandleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "dev/fluttercommunity/workmanager/WorkmanagerPlugin$onAttachedToEngine$1",
        "Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$DispatcherHandleListener;",
        "onDispatcherHandleChanged",
        "",
        "handle",
        "",
        "workmanager_android_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;


# direct methods
.method constructor <init>(Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;)V
    .locals 0
    .param p1, "$receiver"    # Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;

    iput-object p1, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin$onAttachedToEngine$1;->this$0:Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatcherHandleChanged(J)V
    .locals 1
    .param p1, "handle"    # J

    .line 68
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin$onAttachedToEngine$1;->this$0:Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;

    invoke-static {v0, p1, p2}, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->access$setCurrentDispatcherHandle$p(Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;J)V

    .line 69
    return-void
.end method
