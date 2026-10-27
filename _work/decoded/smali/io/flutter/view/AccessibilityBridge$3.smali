.class Lio/flutter/view/AccessibilityBridge$3;
.super Landroid/database/ContentObserver;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/view/AccessibilityBridge;


# direct methods
.method constructor <init>(Lio/flutter/view/AccessibilityBridge;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lio/flutter/view/AccessibilityBridge;
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

    .line 429
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$3;->this$0:Lio/flutter/view/AccessibilityBridge;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/flutter/view/AccessibilityBridge$3;->onChange(ZLandroid/net/Uri;)V

    .line 433
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 437
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$3;->this$0:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$400(Lio/flutter/view/AccessibilityBridge;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$3;->this$0:Lio/flutter/view/AccessibilityBridge;

    .line 443
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$900(Lio/flutter/view/AccessibilityBridge;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 442
    const-string v1, "transition_animation_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 447
    .local v0, "value":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 448
    .local v1, "shouldAnimationsBeDisabled":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 449
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$3;->this$0:Lio/flutter/view/AccessibilityBridge;

    sget-object v3, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->DISABLE_ANIMATIONS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    iget v3, v3, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->value:I

    invoke-static {v2, v3}, Lio/flutter/view/AccessibilityBridge;->access$1076(Lio/flutter/view/AccessibilityBridge;I)I

    goto :goto_1

    .line 451
    :cond_2
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$3;->this$0:Lio/flutter/view/AccessibilityBridge;

    sget-object v3, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->DISABLE_ANIMATIONS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    iget v3, v3, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->value:I

    not-int v3, v3

    invoke-static {v2, v3}, Lio/flutter/view/AccessibilityBridge;->access$1072(Lio/flutter/view/AccessibilityBridge;I)I

    .line 453
    :goto_1
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$3;->this$0:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge;->access$1100(Lio/flutter/view/AccessibilityBridge;)V

    .line 454
    return-void
.end method
