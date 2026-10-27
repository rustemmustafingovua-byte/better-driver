.class public final Lio/sentry/android/replay/screenshot/PixelCopyStrategyKt;
.super Ljava/lang/Object;
.source "PixelCopyStrategy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u001a`\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "compositeSurfaceViewInto",
        "",
        "destCanvas",
        "Landroid/graphics/Canvas;",
        "destPaint",
        "Landroid/graphics/Paint;",
        "tmpSrc",
        "Landroid/graphics/Rect;",
        "tmpDst",
        "Landroid/graphics/RectF;",
        "sourceBitmap",
        "Landroid/graphics/Bitmap;",
        "sourceX",
        "",
        "sourceY",
        "windowX",
        "windowY",
        "scaleFactorX",
        "",
        "scaleFactorY",
        "sentry-android-replay_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final compositeSurfaceViewInto(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Bitmap;IIIIFF)V
    .locals 5
    .param p0, "destCanvas"    # Landroid/graphics/Canvas;
    .param p1, "destPaint"    # Landroid/graphics/Paint;
    .param p2, "tmpSrc"    # Landroid/graphics/Rect;
    .param p3, "tmpDst"    # Landroid/graphics/RectF;
    .param p4, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p5, "sourceX"    # I
    .param p6, "sourceY"    # I
    .param p7, "windowX"    # I
    .param p8, "windowY"    # I
    .param p9, "scaleFactorX"    # F
    .param p10, "scaleFactorY"    # F

    const-string v0, "destCanvas"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destPaint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tmpSrc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tmpDst"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceBitmap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    sub-int v0, p5, p7

    int-to-float v0, v0

    mul-float/2addr v0, p9

    .line 469
    .local v0, "left":F
    sub-int v1, p6, p8

    int-to-float v1, v1

    mul-float/2addr v1, p10

    .line 470
    .local v1, "top":F
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 471
    nop

    .line 472
    nop

    .line 473
    nop

    .line 474
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p9

    add-float/2addr v2, v0

    .line 475
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p10

    add-float/2addr v3, v1

    .line 471
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 477
    invoke-virtual {p0, p4, p2, p3, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 478
    return-void
.end method
