.class public final Lio/sentry/android/core/internal/gestures/AndroidViewGestureTargetLocator;
.super Ljava/lang/Object;
.source "AndroidViewGestureTargetLocator.java"

# interfaces
.implements Lio/sentry/internal/gestures/GestureTargetLocator;


# static fields
.field private static final ORIGIN:Ljava/lang/String; = "old_view_system"


# instance fields
.field private final isAndroidXAvailable:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/util/LazyEvaluator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/util/LazyEvaluator<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p1, "isAndroidXAvailable":Lio/sentry/util/LazyEvaluator;, "Lio/sentry/util/LazyEvaluator<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/AndroidViewGestureTargetLocator;->isAndroidXAvailable:Lio/sentry/util/LazyEvaluator;

    .line 25
    return-void
.end method

.method private createUiElement(Landroid/view/View;)Lio/sentry/internal/gestures/UiElement;
    .locals 6
    .param p1, "targetView"    # Landroid/view/View;

    .line 44
    invoke-static {p1}, Lio/sentry/android/core/internal/gestures/ViewUtils;->getResourceIdOrNull(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "resourceName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    invoke-static {p1}, Lio/sentry/android/core/internal/util/ClassUtil;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "className":Ljava/lang/String;
    new-instance v0, Lio/sentry/internal/gestures/UiElement;

    const/4 v4, 0x0

    const-string v5, "old_view_system"

    move-object v1, p1

    .end local p1    # "targetView":Landroid/view/View;
    .local v1, "targetView":Landroid/view/View;
    invoke-direct/range {v0 .. v5}, Lio/sentry/internal/gestures/UiElement;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isJetpackScrollingView(Landroid/view/View;Z)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isAndroidXAvailable"    # Z

    .line 66
    if-nez p1, :cond_0

    .line 67
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_0
    const-class v0, Landroidx/core/view/ScrollingView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static isViewScrollable(Landroid/view/View;Z)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isAndroidXAvailable"    # Z

    .line 58
    invoke-static {p0, p1}, Lio/sentry/android/core/internal/gestures/AndroidViewGestureTargetLocator;->isJetpackScrollingView(Landroid/view/View;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Landroid/widget/AbsListView;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Landroid/widget/ScrollView;

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0
.end method

.method private static isViewTappable(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public locate(Ljava/lang/Object;FFLio/sentry/internal/gestures/UiElement$Type;)Lio/sentry/internal/gestures/UiElement;
    .locals 3
    .param p1, "root"    # Ljava/lang/Object;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "targetType"    # Lio/sentry/internal/gestures/UiElement$Type;

    .line 30
    instance-of v0, p1, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 31
    return-object v1

    .line 33
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 34
    .local v0, "view":Landroid/view/View;
    sget-object v2, Lio/sentry/internal/gestures/UiElement$Type;->CLICKABLE:Lio/sentry/internal/gestures/UiElement$Type;

    if-ne p4, v2, :cond_1

    invoke-static {v0}, Lio/sentry/android/core/internal/gestures/AndroidViewGestureTargetLocator;->isViewTappable(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/AndroidViewGestureTargetLocator;->createUiElement(Landroid/view/View;)Lio/sentry/internal/gestures/UiElement;

    move-result-object v1

    return-object v1

    .line 36
    :cond_1
    sget-object v2, Lio/sentry/internal/gestures/UiElement$Type;->SCROLLABLE:Lio/sentry/internal/gestures/UiElement$Type;

    if-ne p4, v2, :cond_2

    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/AndroidViewGestureTargetLocator;->isAndroidXAvailable:Lio/sentry/util/LazyEvaluator;

    .line 37
    invoke-virtual {v2}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v2}, Lio/sentry/android/core/internal/gestures/AndroidViewGestureTargetLocator;->isViewScrollable(Landroid/view/View;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/AndroidViewGestureTargetLocator;->createUiElement(Landroid/view/View;)Lio/sentry/internal/gestures/UiElement;

    move-result-object v1

    return-object v1

    .line 40
    :cond_2
    return-object v1
.end method
