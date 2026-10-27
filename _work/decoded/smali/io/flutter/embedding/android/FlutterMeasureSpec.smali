.class Lio/flutter/embedding/android/FlutterMeasureSpec;
.super Ljava/lang/Object;
.source "FlutterMeasureSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/FlutterMeasureSpec$MeasureCallback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onMeasure(IILio/flutter/embedding/android/FlutterMeasureSpec$MeasureCallback;)V
    .locals 7
    .param p0, "widthMeasureSpec"    # I
    .param p1, "heightMeasureSpec"    # I
    .param p2, "callback"    # Lio/flutter/embedding/android/FlutterMeasureSpec$MeasureCallback;

    .line 28
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 29
    .local v0, "widthMode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 30
    .local v1, "parentSuggestedWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 31
    .local v2, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 36
    .local v3, "parentSuggestedHeight":I
    nop

    .line 37
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 38
    .local v6, "finalHeight":I
    nop

    .line 39
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 41
    .local v4, "finalWidth":I
    invoke-interface {p2, v4, v6}, Lio/flutter/embedding/android/FlutterMeasureSpec$MeasureCallback;->onMeasure(II)V

    .line 42
    return-void
.end method
