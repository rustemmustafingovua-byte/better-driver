.class Lio/flutter/embedding/android/FlutterView$2;
.super Landroid/database/ContentObserver;
.source "FlutterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/android/FlutterView;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/FlutterView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lio/flutter/embedding/android/FlutterView;
    .param p2, "arg0"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView$2;->this$0:Lio/flutter/embedding/android/FlutterView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 174
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 175
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView$2;->this$0:Lio/flutter/embedding/android/FlutterView;

    invoke-static {v0}, Lio/flutter/embedding/android/FlutterView;->access$100(Lio/flutter/embedding/android/FlutterView;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    const-string v0, "FlutterView"

    const-string v1, "System settings changed. Sending user settings to Flutter."

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView$2;->this$0:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->sendUserSettingsToFlutter()V

    .line 180
    return-void
.end method
