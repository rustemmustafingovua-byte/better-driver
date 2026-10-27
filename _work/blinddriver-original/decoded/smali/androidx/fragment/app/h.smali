.class public final Landroidx/fragment/app/h;
.super Landroidx/fragment/app/m;
.source "SourceFile"


# instance fields
.field public final b:Z

.field public c:Z

.field public d:Lg5/l;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/s1;Z)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/fragment/app/m;-><init>(Landroidx/fragment/app/s1;)V

    iput-boolean p2, p0, Landroidx/fragment/app/h;->b:Z

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lg5/l;
    .locals 8

    iget-boolean v0, p0, Landroidx/fragment/app/h;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/h;->d:Lg5/l;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    iget-object v1, v0, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    iget v0, v0, Landroidx/fragment/app/s1;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/l0;->getNextTransition()I

    move-result v2

    iget-boolean v5, p0, Landroidx/fragment/app/h;->b:Z

    if-eqz v5, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/l0;->getPopEnterAnim()I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/l0;->getPopExitAnim()I

    move-result v5

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroidx/fragment/app/l0;->getEnterAnim()I

    move-result v5

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroidx/fragment/app/l0;->getExitAnim()I

    move-result v5

    :goto_1
    invoke-virtual {v1, v3, v3, v3, v3}, Landroidx/fragment/app/l0;->setAnimations(IIII)V

    iget-object v3, v1, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    const v7, 0x7f080094

    invoke-virtual {v3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5
    iget-object v3, v1, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v3

    if-eqz v3, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v1, v2, v0, v5}, Landroidx/fragment/app/l0;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_7

    new-instance v6, Lg5/l;

    invoke-direct {v6, v3}, Lg5/l;-><init>(Landroid/view/animation/Animation;)V

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v1, v2, v0, v5}, Landroidx/fragment/app/l0;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v6, Lg5/l;

    invoke-direct {v6, v1}, Lg5/l;-><init>(Landroid/animation/Animator;)V

    goto/16 :goto_5

    :cond_8
    if-nez v5, :cond_13

    if-eqz v2, :cond_13

    const/16 v1, 0x1001

    if-eq v2, v1, :cond_11

    const/16 v1, 0x2002

    if-eq v2, v1, :cond_f

    const/16 v1, 0x2005

    if-eq v2, v1, :cond_d

    const/16 v1, 0x1003

    if-eq v2, v1, :cond_b

    const/16 v1, 0x1004

    if-eq v2, v1, :cond_9

    const/4 v0, -0x1

    :goto_2
    move v5, v0

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_a

    const v0, 0x10100b8

    invoke-static {p1, v0}, Lg6/c1;->D(Landroid/content/Context;I)I

    move-result v0

    goto :goto_2

    :cond_a
    const v0, 0x10100b9

    invoke-static {p1, v0}, Lg6/c1;->D(Landroid/content/Context;I)I

    move-result v0

    goto :goto_2

    :cond_b
    if-eqz v0, :cond_c

    const v0, 0x7f020002

    goto :goto_2

    :cond_c
    const v0, 0x7f020003

    goto :goto_2

    :cond_d
    if-eqz v0, :cond_e

    const v0, 0x10100ba

    invoke-static {p1, v0}, Lg6/c1;->D(Landroid/content/Context;I)I

    move-result v0

    goto :goto_2

    :cond_e
    const v0, 0x10100bb

    invoke-static {p1, v0}, Lg6/c1;->D(Landroid/content/Context;I)I

    move-result v0

    goto :goto_2

    :cond_f
    if-eqz v0, :cond_10

    const/high16 v0, 0x7f020000

    goto :goto_2

    :cond_10
    const v0, 0x7f020001

    goto :goto_2

    :cond_11
    if-eqz v0, :cond_12

    const v0, 0x7f020004

    goto :goto_2

    :cond_12
    const v0, 0x7f020005

    goto :goto_2

    :cond_13
    :goto_3
    if-eqz v5, :cond_16

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "anim"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :try_start_0
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v2, Lg5/l;

    invoke-direct {v2, v1}, Lg5/l;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_4
    move-object v6, v2

    goto :goto_5

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    :cond_14
    :try_start_1
    invoke-static {p1, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v2, Lg5/l;

    invoke-direct {v2, v1}, Lg5/l;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    if-nez v0, :cond_15

    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_16

    new-instance v6, Lg5/l;

    invoke-direct {v6, p1}, Lg5/l;-><init>(Landroid/view/animation/Animation;)V

    goto :goto_5

    :cond_15
    throw v1

    :cond_16
    :goto_5
    iput-object v6, p0, Landroidx/fragment/app/h;->d:Lg5/l;

    iput-boolean v4, p0, Landroidx/fragment/app/h;->c:Z

    return-object v6
.end method
