.class final Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/internal/gestures/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewWithLocation"
.end annotation


# instance fields
.field final view:Landroid/view/View;

.field final x:F

.field final y:F


# direct methods
.method constructor <init>(Landroid/view/View;FF)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;->view:Landroid/view/View;

    .line 140
    iput p2, p0, Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;->x:F

    .line 141
    iput p3, p0, Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;->y:F

    .line 142
    return-void
.end method
