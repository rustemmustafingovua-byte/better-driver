.class Lio/flutter/view/AccessibilityBridge$Api31Impl;
.super Ljava/lang/Object;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api31Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isBoldText(Landroid/content/res/Configuration;)Z
    .locals 2
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .line 3270
    iget v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 3271
    .local v0, "fontWeightAdjustment":I
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
