.class Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetIndicatorInfo"
.end annotation


# instance fields
.field public setHomeActionContentDescription:Ljava/lang/reflect/Method;

.field public setHomeAsUpIndicator:Ljava/lang/reflect/Method;

.field public upIndicatorView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    :try_start_0
    const-class v0, Landroid/app/ActionBar;

    const-string v1, "setHomeAsUpIndicator"

    const-class v2, Landroid/graphics/drawable/Drawable;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    .line 105
    const-class v0, Landroid/app/ActionBar;

    const-string v1, "setHomeActionContentDescription"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 114
    const v0, 0x102002c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "home":Landroid/view/View;
    if-nez v1, :cond_0

    .line 117
    return-void

    .line 120
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 121
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 122
    .local v3, "childCount":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 124
    return-void

    .line 127
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 128
    .local v4, "first":Landroid/view/View;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 129
    .local v5, "second":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v0, :cond_2

    move-object v0, v5

    goto :goto_0

    :cond_2
    move-object v0, v4

    .line 131
    .local v0, "up":Landroid/view/View;
    :goto_0
    instance-of v6, v0, Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    .line 133
    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    .line 135
    :cond_3
    return-void
.end method
