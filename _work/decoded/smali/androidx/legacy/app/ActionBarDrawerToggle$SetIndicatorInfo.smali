.class Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/legacy/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetIndicatorInfo"
.end annotation


# instance fields
.field mSetHomeActionContentDescription:Ljava/lang/reflect/Method;

.field mSetHomeAsUpIndicator:Ljava/lang/reflect/Method;

.field mUpIndicatorView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    :try_start_0
    const-class v0, Landroid/app/ActionBar;

    const-string v1, "setHomeAsUpIndicator"

    const-class v2, Landroid/graphics/drawable/Drawable;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;->mSetHomeAsUpIndicator:Ljava/lang/reflect/Method;

    .line 510
    const-class v0, Landroid/app/ActionBar;

    const-string v1, "setHomeActionContentDescription"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;->mSetHomeActionContentDescription:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 519
    const v0, 0x102002c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 520
    .local v1, "home":Landroid/view/View;
    if-nez v1, :cond_0

    .line 522
    return-void

    .line 525
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 526
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 527
    .local v3, "childCount":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 529
    return-void

    .line 532
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 533
    .local v4, "first":Landroid/view/View;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 534
    .local v5, "second":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v0, :cond_2

    move-object v0, v5

    goto :goto_0

    :cond_2
    move-object v0, v4

    .line 536
    .local v0, "up":Landroid/view/View;
    :goto_0
    instance-of v6, v0, Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    .line 538
    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;->mUpIndicatorView:Landroid/widget/ImageView;

    .line 540
    :cond_3
    return-void
.end method
