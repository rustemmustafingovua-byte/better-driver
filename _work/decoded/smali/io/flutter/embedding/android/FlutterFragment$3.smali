.class Lio/flutter/embedding/android/FlutterFragment$3;
.super Landroidx/activity/OnBackPressedCallback;
.source "FlutterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/android/FlutterFragment;->createOnBackPressedCallback()Landroidx/activity/OnBackPressedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/android/FlutterFragment;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/FlutterFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lio/flutter/embedding/android/FlutterFragment;
    .param p2, "arg0"    # Z
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

    .line 1046
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$3;->this$0:Lio/flutter/embedding/android/FlutterFragment;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    .line 1049
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$3;->this$0:Lio/flutter/embedding/android/FlutterFragment;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterFragment;->onBackPressed()V

    .line 1050
    return-void
.end method
