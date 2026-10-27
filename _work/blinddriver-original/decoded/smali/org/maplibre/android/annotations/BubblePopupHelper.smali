.class Lorg/maplibre/android/annotations/BubblePopupHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lorg/maplibre/android/annotations/BubbleLayout;)Landroid/widget/PopupWindow;
    .locals 1

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 p1, -0x2

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const p1, 0x1030002

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    sget p1, Lorg/maplibre/android/R$drawable;->maplibre_popup_window_transparent:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
