.class public final Landroidx/fragment/app/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg5/s;

.field public final b:Landroidx/fragment/app/e1;

.field public final c:Landroidx/fragment/app/l0;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Lg5/s;Landroidx/fragment/app/e1;Landroidx/fragment/app/l0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/d1;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/d1;->e:I

    iput-object p1, p0, Landroidx/fragment/app/d1;->a:Lg5/s;

    iput-object p2, p0, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/e1;

    iput-object p3, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/l0;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v2, "savedInstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/fragment/app/l0;->performActivityCreated(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroidx/fragment/app/d1;->a:Lg5/s;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lg5/s;->x(Landroidx/fragment/app/l0;Z)V

    return-void
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    iget-object v1, v0, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const v3, 0x7f080047

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/fragment/app/l0;

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/fragment/app/l0;

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_1

    move-object v2, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getParentFragment()Landroidx/fragment/app/l0;

    move-result-object v1

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Landroidx/fragment/app/l0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, v0, Landroidx/fragment/app/l0;->mContainerId:I

    sget-object v3, Lz3/b;->a:Lz3/a;

    new-instance v3, Lz3/f;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Attempting to nest fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " within the view of parent fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " via container with ID "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " without using parent\'s childFragmentManager"

    invoke-static {v1, v2, v4}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lz3/g;-><init>(Landroidx/fragment/app/l0;Ljava/lang/String;)V

    invoke-static {v3}, Lz3/b;->b(Lz3/g;)V

    invoke-static {v0}, Lz3/b;->a(Landroidx/fragment/app/l0;)Lz3/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    iget-object p0, p0, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/e1;

    iget-object p0, p0, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    iget-object v1, v0, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    :goto_3
    if-ltz v4, :cond_7

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/l0;

    iget-object v6, v5, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    if-ne v6, v1, :cond_6

    iget-object v5, v5, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    if-eqz v5, :cond_6

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    add-int/lit8 v2, p0, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/l0;

    iget-object v5, v4, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    if-ne v5, v1, :cond_8

    iget-object v4, v4, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    if-eqz v4, :cond_8

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    goto :goto_5

    :cond_8
    goto :goto_4

    :cond_9
    :goto_5
    iget-object p0, v0, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    iget-object v0, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final c()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto ATTACHED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/l0;->mTarget:Landroidx/fragment/app/l0;

    const-string v2, " that does not belong to this FragmentManager!"

    const-string v3, " declared target fragment "

    const-string v4, "Fragment "

    iget-object v5, p0, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/e1;

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    iget-object v5, v5, Landroidx/fragment/app/e1;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/d1;

    if-eqz v0, :cond_1

    iget-object v2, v1, Landroidx/fragment/app/l0;->mTarget:Landroidx/fragment/app/l0;

    iget-object v2, v2, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    iput-object v2, v1, Landroidx/fragment/app/l0;->mTargetWho:Ljava/lang/String;

    iput-object v6, v1, Landroidx/fragment/app/l0;->mTarget:Landroidx/fragment/app/l0;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/fragment/app/l0;->mTarget:Landroidx/fragment/app/l0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, v1, Landroidx/fragment/app/l0;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v5, v5, Landroidx/fragment/app/e1;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/d1;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/fragment/app/l0;->mTargetWho:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    move-object v0, v6

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/fragment/app/d1;->k()V

    :cond_5
    iget-object v0, v1, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    iget-object v0, v0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    iput-object v0, v1, Landroidx/fragment/app/l0;->mParentFragment:Landroidx/fragment/app/l0;

    iget-object p0, p0, Landroidx/fragment/app/d1;->a:Lg5/s;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v6
.end method

.method public final d()I
    .locals 11

    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    iget-object v1, v0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    if-nez v1, :cond_0

    iget p0, v0, Landroidx/fragment/app/l0;->mState:I

    return p0

    :cond_0
    iget v1, p0, Landroidx/fragment/app/d1;->e:I

    iget-object v2, v0, Landroidx/fragment/app/l0;->mMaxState:Landroidx/lifecycle/p;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, -0x1

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v2, v9, :cond_3

    if-eq v2, v8, :cond_2

    if-eq v2, v6, :cond_1

    if-eq v2, v7, :cond_4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    :goto_0
    iget-boolean v2, v0, Landroidx/fragment/app/l0;->mFromLayout:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Landroidx/fragment/app/l0;->mInLayout:Z

    if-eqz v2, :cond_5

    iget p0, p0, Landroidx/fragment/app/d1;->e:I

    invoke-static {p0, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object p0, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_7

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_5
    iget p0, p0, Landroidx/fragment/app/d1;->e:I

    if-ge p0, v7, :cond_6

    iget p0, v0, Landroidx/fragment/app/l0;->mState:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_7
    :goto_1
    iget-boolean p0, v0, Landroidx/fragment/app/l0;->mInDynamicContainer:Z

    if-eqz p0, :cond_8

    iget-object p0, v0, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    if-nez p0, :cond_8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_8
    iget-boolean p0, v0, Landroidx/fragment/app/l0;->mAdded:Z

    if-nez p0, :cond_9

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_9
    iget-object p0, v0, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    if-eqz p0, :cond_d

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getParentFragmentManager()Landroidx/fragment/app/w0;

    move-result-object v2

    invoke-static {p0, v2}, Landroidx/fragment/app/u;->j(Landroid/view/ViewGroup;Landroidx/fragment/app/w0;)Landroidx/fragment/app/u;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/u;->g(Landroidx/fragment/app/l0;)Landroidx/fragment/app/s1;

    move-result-object v2

    if-eqz v2, :cond_a

    iget v2, v2, Landroidx/fragment/app/s1;->b:I

    goto :goto_2

    :cond_a
    move v2, v3

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/u;->h(Landroidx/fragment/app/l0;)Landroidx/fragment/app/s1;

    move-result-object p0

    if-eqz p0, :cond_b

    iget v3, p0, Landroidx/fragment/app/s1;->b:I

    :cond_b
    if-nez v2, :cond_c

    move p0, v5

    goto :goto_3

    :cond_c
    sget-object p0, Landroidx/fragment/app/u1;->a:[I

    invoke-static {v2}, Landroidx/fragment/app/t1;->d(I)I

    move-result v10

    aget p0, p0, v10

    :goto_3
    if-eq p0, v5, :cond_d

    if-eq p0, v9, :cond_d

    move v3, v2

    :cond_d
    if-ne v3, v8, :cond_e

    const/4 p0, 0x6

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_4

    :cond_e
    if-ne v3, v6, :cond_f

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_4

    :cond_f
    iget-boolean p0, v0, Landroidx/fragment/app/l0;->mRemoving:Z

    if-eqz p0, :cond_11

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->isInBackStack()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_4

    :cond_10
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_11
    :goto_4
    iget-boolean p0, v0, Landroidx/fragment/app/l0;->mDeferStart:Z

    if-eqz p0, :cond_12

    iget p0, v0, Landroidx/fragment/app/l0;->mState:I

    if-ge p0, v4, :cond_12

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_12
    iget-boolean p0, v0, Landroidx/fragment/app/l0;->mTransitioning:Z

    if-eqz p0, :cond_13

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_13
    invoke-static {v8}, Landroidx/fragment/app/w0;->l(I)Z

    move-result p0

    if-eqz p0, :cond_14

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "computeExpectedState() of "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return v1
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/l0;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v2, "savedInstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, v1, Landroidx/fragment/app/l0;->mIsCreated:Z

    if-nez v2, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/d1;->a:Lg5/s;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lg5/s;->B(Landroidx/fragment/app/l0;Z)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/l0;->performCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1, v2}, Lg5/s;->y(Landroidx/fragment/app/l0;Z)V

    return-void

    :cond_2
    const/4 p0, 0x1

    iput p0, v1, Landroidx/fragment/app/l0;->mState:I

    invoke-virtual {v1}, Landroidx/fragment/app/l0;->restoreChildFragmentState()V

    return-void
.end method

.method public final f()V
    .locals 9

    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    iget-boolean v1, v0, Landroidx/fragment/app/l0;->mFromLayout:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v2

    const-string v3, "FragmentManager"

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "moveto CREATE_VIEW: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, v0, Landroidx/fragment/app/l0;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const-string v5, "savedInstanceState"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/fragment/app/l0;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v6, v0, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    move-object v4, v6

    goto/16 :goto_2

    :cond_3
    iget v6, v0, Landroidx/fragment/app/l0;->mContainerId:I

    if-eqz v6, :cond_7

    const/4 v4, -0x1

    if-eq v6, v4, :cond_6

    iget-object v4, v0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    iget-object v4, v4, Landroidx/fragment/app/w0;->n:Landroidx/fragment/app/o0;

    invoke-virtual {v4, v6}, Landroidx/fragment/app/o0;->a(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-nez v4, :cond_5

    iget-boolean v6, v0, Landroidx/fragment/app/l0;->mRestored:Z

    if-nez v6, :cond_7

    iget-boolean v6, v0, Landroidx/fragment/app/l0;->mInDynamicContainer:Z

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v1, v0, Landroidx/fragment/app/l0;->mContainerId:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "unknown"

    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No view found for id 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroidx/fragment/app/l0;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") for fragment "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    instance-of v6, v4, Landroidx/fragment/app/p0;

    if-nez v6, :cond_7

    sget-object v6, Lz3/b;->a:Lz3/a;

    new-instance v6, Lz3/f;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Attempting to add fragment "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " to container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " which is not a FragmentContainerView"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lz3/g;-><init>(Landroidx/fragment/app/l0;Ljava/lang/String;)V

    invoke-static {v6}, Lz3/b;->b(Lz3/g;)V

    invoke-static {v0}, Lz3/b;->a(Landroidx/fragment/app/l0;)Lz3/a;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create fragment "

    const-string v2, " for a container view with no id"

    invoke-static {v1, v0, v2}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    iput-object v4, v0, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4, v2}, Landroidx/fragment/app/l0;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v2, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    const/4 v5, 0x2

    if-eqz v2, :cond_d

    invoke-static {v1}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto VIEW_CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v1, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v1, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    const v6, 0x7f080047

    invoke-virtual {v1, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/d1;->b()V

    :cond_9
    iget-boolean v1, v0, Landroidx/fragment/app/l0;->mHidden:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v1, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    sget-object v4, Lq3/q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->requestApplyInsets()V

    goto :goto_3

    :cond_b
    iget-object v1, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    new-instance v4, Landroidx/fragment/app/c1;

    invoke-direct {v4, v1}, Landroidx/fragment/app/c1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_3
    invoke-virtual {v0}, Landroidx/fragment/app/l0;->performViewCreated()V

    iget-object p0, p0, Landroidx/fragment/app/d1;->a:Lg5/s;

    iget-object v1, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lg5/s;->I(Landroidx/fragment/app/l0;Landroid/view/View;Z)V

    iget-object p0, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    iget-object v1, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/l0;->setPostOnViewCreatedAlpha(F)V

    iget-object v1, v0, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_d

    if-nez p0, :cond_d

    iget-object p0, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {v0, p0}, Landroidx/fragment/app/l0;->setFocusedView(Landroid/view/View;)V

    invoke-static {v5}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestFocus: Saved focused view "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for Fragment "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object p0, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_d
    iput v5, v0, Landroidx/fragment/app/l0;->mState:I

    return-void
.end method

.method public final g()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom CREATED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, v1, Landroidx/fragment/app/l0;->mRemoving:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/l0;->isInBackStack()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    iget-object p0, p0, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/e1;

    if-eqz v0, :cond_2

    iget-boolean v5, v1, Landroidx/fragment/app/l0;->mBeingSaved:Z

    if-nez v5, :cond_2

    iget-object v5, v1, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Landroidx/fragment/app/e1;->f(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_2
    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/fragment/app/e1;->d:Landroidx/fragment/app/a1;

    iget-object v5, v0, Landroidx/fragment/app/a1;->b:Ljava/util/HashMap;

    iget-object v6, v1, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v5, v0, Landroidx/fragment/app/a1;->e:Z

    if-eqz v5, :cond_4

    iget-boolean v2, v0, Landroidx/fragment/app/a1;->f:Z

    :cond_4
    :goto_1
    if-nez v2, :cond_6

    iget-object v0, v1, Landroidx/fragment/app/l0;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Landroidx/fragment/app/e1;->a(Ljava/lang/String;)Landroidx/fragment/app/l0;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mRetainInstance:Z

    if-eqz v0, :cond_5

    iput-object p0, v1, Landroidx/fragment/app/l0;->mTarget:Landroidx/fragment/app/l0;

    :cond_5
    iput v3, v1, Landroidx/fragment/app/l0;->mState:I

    return-void

    :cond_6
    throw v4
.end method

.method public final h()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom CREATE_VIEW: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v2, v1, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/l0;->performDestroyView()V

    iget-object p0, p0, Landroidx/fragment/app/d1;->a:Lg5/s;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lg5/s;->J(Landroidx/fragment/app/l0;Z)V

    const/4 p0, 0x0

    iput-object p0, v1, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    iput-object p0, v1, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    iput-object p0, v1, Landroidx/fragment/app/l0;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    iget-object v2, v1, Landroidx/fragment/app/l0;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/d0;

    invoke-virtual {v2, p0}, Landroidx/lifecycle/d0;->c(Ljava/lang/Object;)V

    iput-boolean v0, v1, Landroidx/fragment/app/l0;->mInLayout:Z

    return-void
.end method

.method public final i()V
    .locals 5

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    iget-object v3, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "movefrom ATTACHED: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v3}, Landroidx/fragment/app/l0;->performDetach()V

    iget-object v1, p0, Landroidx/fragment/app/d1;->a:Lg5/s;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lg5/s;->z(Landroidx/fragment/app/l0;Z)V

    const/4 v1, -0x1

    iput v1, v3, Landroidx/fragment/app/l0;->mState:I

    const/4 v1, 0x0

    iput-object v1, v3, Landroidx/fragment/app/l0;->mParentFragment:Landroidx/fragment/app/l0;

    iput-object v1, v3, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    iget-boolean v1, v3, Landroidx/fragment/app/l0;->mRemoving:Z

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Landroidx/fragment/app/l0;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/e1;

    iget-object p0, p0, Landroidx/fragment/app/e1;->d:Landroidx/fragment/app/a1;

    iget-object v1, p0, Landroidx/fragment/app/a1;->b:Ljava/util/HashMap;

    iget-object v4, v3, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Landroidx/fragment/app/a1;->e:Z

    if-eqz v1, :cond_3

    iget-boolean p0, p0, Landroidx/fragment/app/a1;->f:Z

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_5

    :goto_2
    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "initState called for fragment: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v3}, Landroidx/fragment/app/l0;->initState()V

    :cond_5
    return-void
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    iget-boolean v1, v0, Landroidx/fragment/app/l0;->mFromLayout:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Landroidx/fragment/app/l0;->mInLayout:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Landroidx/fragment/app/l0;->mPerformedCreateView:Z

    if-nez v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATE_VIEW: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/l0;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "savedInstanceState"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/l0;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/l0;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v1, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v1, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    const v3, 0x7f080047

    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean v1, v0, Landroidx/fragment/app/l0;->mHidden:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/l0;->performViewCreated()V

    iget-object p0, p0, Landroidx/fragment/app/d1;->a:Lg5/s;

    iget-object v1, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lg5/s;->I(Landroidx/fragment/app/l0;Landroid/view/View;Z)V

    const/4 p0, 0x2

    iput p0, v0, Landroidx/fragment/app/l0;->mState:I

    :cond_3
    return-void
.end method

.method public final k()V
    .locals 10

    iget-boolean v0, p0, Landroidx/fragment/app/d1;->d:Z

    const/4 v1, 0x2

    const-string v2, "FragmentManager"

    iget-object v3, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroidx/fragment/app/w0;->l(I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v4, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/d1;->d:Z

    move v5, v4

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->d()I

    move-result v6

    iget v7, v3, Landroidx/fragment/app/l0;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x3

    iget-object v9, p0, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/e1;

    if-eq v6, v7, :cond_11

    iget-object v5, p0, Landroidx/fragment/app/d1;->a:Lg5/s;

    if-le v6, v7, :cond_8

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->l()V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :pswitch_1
    const/4 v5, 0x6

    iput v5, v3, Landroidx/fragment/app/l0;->mState:I

    goto/16 :goto_3

    :pswitch_2
    invoke-static {v8}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "moveto STARTED: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v3}, Landroidx/fragment/app/l0;->performStart()V

    invoke-virtual {v5, v3, v4}, Lg5/s;->G(Landroidx/fragment/app/l0;Z)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v5, v3, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    const/4 v6, 0x4

    if-eqz v5, :cond_7

    iget-object v5, v3, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Landroidx/fragment/app/l0;->getParentFragmentManager()Landroidx/fragment/app/w0;

    move-result-object v7

    invoke-static {v5, v7}, Landroidx/fragment/app/u;->j(Landroid/view/ViewGroup;Landroidx/fragment/app/w0;)Landroidx/fragment/app/u;

    move-result-object v5

    iget-object v7, v3, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_5

    if-eq v7, v6, :cond_4

    const/16 v9, 0x8

    if-ne v7, v9, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown visibility "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v8, v6

    goto :goto_1

    :cond_5
    move v8, v1

    :goto_1
    const-string v7, "finalState"

    invoke-static {v8, v7}, La6/q;->r(ILjava/lang/String;)V

    invoke-static {v1}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v5, v8, v1, p0}, Landroidx/fragment/app/u;->d(IILandroidx/fragment/app/d1;)V

    :cond_7
    iput v6, v3, Landroidx/fragment/app/l0;->mState:I

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->a()V

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->j()V

    invoke-virtual {p0}, Landroidx/fragment/app/d1;->f()V

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->e()V

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->c()V

    const/4 v0, 0x0

    throw v0

    :cond_8
    add-int/lit8 v7, v7, -0x1

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_8
    invoke-static {v8}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "movefrom RESUMED: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v3}, Landroidx/fragment/app/l0;->performPause()V

    invoke-virtual {v5, v3, v4}, Lg5/s;->A(Landroidx/fragment/app/l0;Z)V

    goto/16 :goto_3

    :pswitch_9
    const/4 v5, 0x5

    iput v5, v3, Landroidx/fragment/app/l0;->mState:I

    goto/16 :goto_3

    :pswitch_a
    invoke-static {v8}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "movefrom STARTED: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v3}, Landroidx/fragment/app/l0;->performStop()V

    invoke-virtual {v5, v3, v4}, Lg5/s;->H(Landroidx/fragment/app/l0;Z)V

    goto/16 :goto_3

    :pswitch_b
    invoke-static {v8}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-boolean v5, v3, Landroidx/fragment/app/l0;->mBeingSaved:Z

    if-eqz v5, :cond_c

    iget-object v5, v3, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/d1;->m()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Landroidx/fragment/app/e1;->f(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_2

    :cond_c
    iget-object v5, v3, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    if-eqz v5, :cond_d

    iget-object v5, v3, Landroidx/fragment/app/l0;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v5, :cond_d

    invoke-virtual {p0}, Landroidx/fragment/app/d1;->n()V

    :cond_d
    :goto_2
    iget-object v5, v3, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    if-eqz v5, :cond_f

    iget-object v5, v3, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_f

    invoke-virtual {v3}, Landroidx/fragment/app/l0;->getParentFragmentManager()Landroidx/fragment/app/w0;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/fragment/app/u;->j(Landroid/view/ViewGroup;Landroidx/fragment/app/w0;)Landroidx/fragment/app/u;

    move-result-object v5

    invoke-static {v1}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v5, v0, v8, p0}, Landroidx/fragment/app/u;->d(IILandroidx/fragment/app/d1;)V

    :cond_f
    iput v8, v3, Landroidx/fragment/app/l0;->mState:I

    goto :goto_3

    :pswitch_c
    iput-boolean v4, v3, Landroidx/fragment/app/l0;->mInLayout:Z

    iput v1, v3, Landroidx/fragment/app/l0;->mState:I

    goto :goto_3

    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->h()V

    iput v0, v3, Landroidx/fragment/app/l0;->mState:I

    goto :goto_3

    :pswitch_e
    iget-boolean v5, v3, Landroidx/fragment/app/l0;->mBeingSaved:Z

    if-eqz v5, :cond_10

    iget-object v5, v3, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    iget-object v6, v9, Landroidx/fragment/app/e1;->c:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    if-nez v5, :cond_10

    iget-object v5, v3, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/d1;->m()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Landroidx/fragment/app/e1;->f(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->g()V

    goto :goto_3

    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->i()V

    :goto_3
    move v5, v0

    goto/16 :goto_0

    :cond_11
    if-nez v5, :cond_15

    const/4 v5, -0x1

    if-ne v7, v5, :cond_15

    iget-boolean v5, v3, Landroidx/fragment/app/l0;->mRemoving:Z

    if-eqz v5, :cond_15

    invoke-virtual {v3}, Landroidx/fragment/app/l0;->isInBackStack()Z

    move-result v5

    if-nez v5, :cond_15

    iget-boolean v5, v3, Landroidx/fragment/app/l0;->mBeingSaved:Z

    if-nez v5, :cond_15

    invoke-static {v8}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning up state of never attached fragment: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v5, v9, Landroidx/fragment/app/e1;->d:Landroidx/fragment/app/a1;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v6

    if-eqz v6, :cond_13

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Clearing non-config state for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v6, v3, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/fragment/app/a1;->e(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/d1;)V

    invoke-static {v8}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v5

    if-eqz v5, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initState called for fragment: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-virtual {v3}, Landroidx/fragment/app/l0;->initState()V

    :cond_15
    iget-boolean v5, v3, Landroidx/fragment/app/l0;->mHiddenChanged:Z

    if-eqz v5, :cond_1b

    iget-object v5, v3, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    if-eqz v5, :cond_19

    iget-object v5, v3, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_19

    invoke-virtual {v3}, Landroidx/fragment/app/l0;->getParentFragmentManager()Landroidx/fragment/app/w0;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/fragment/app/u;->j(Landroid/view/ViewGroup;Landroidx/fragment/app/w0;)Landroidx/fragment/app/u;

    move-result-object v5

    iget-boolean v6, v3, Landroidx/fragment/app/l0;->mHidden:Z

    if-eqz v6, :cond_17

    invoke-static {v1}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    invoke-virtual {v5, v8, v0, p0}, Landroidx/fragment/app/u;->d(IILandroidx/fragment/app/d1;)V

    goto :goto_4

    :cond_17
    invoke-static {v1}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v6

    if-eqz v6, :cond_18

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    invoke-virtual {v5, v1, v0, p0}, Landroidx/fragment/app/u;->d(IILandroidx/fragment/app/d1;)V

    :cond_19
    :goto_4
    iget-object v1, v3, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    if-eqz v1, :cond_1a

    iget-boolean v2, v3, Landroidx/fragment/app/l0;->mAdded:Z

    if-eqz v2, :cond_1a

    invoke-static {v3}, Landroidx/fragment/app/w0;->m(Landroidx/fragment/app/l0;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iput-boolean v0, v1, Landroidx/fragment/app/w0;->s:Z

    :cond_1a
    iput-boolean v4, v3, Landroidx/fragment/app/l0;->mHiddenChanged:Z

    iget-boolean v0, v3, Landroidx/fragment/app/l0;->mHidden:Z

    invoke-virtual {v3, v0}, Landroidx/fragment/app/l0;->onHiddenChanged(Z)V

    iget-object v0, v3, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {v0}, Landroidx/fragment/app/w0;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1b
    iput-boolean v4, p0, Landroidx/fragment/app/d1;->d:Z

    return-void

    :goto_5
    iput-boolean v4, p0, Landroidx/fragment/app/d1;->d:Z

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final l()V
    .locals 6

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    iget-object v2, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "moveto RESUMED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/l0;->getFocusedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, v2, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_4

    iget-object v4, v2, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    if-ne v3, v4, :cond_3

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v3

    const/4 v4, 0x2

    invoke-static {v4}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "requestFocus: Restoring focused view "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    const-string v0, "succeeded"

    goto :goto_2

    :cond_2
    const-string v0, "failed"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on Fragment "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resulting in focused view "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    :cond_4
    :goto_3
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroidx/fragment/app/l0;->setFocusedView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroidx/fragment/app/l0;->performResume()V

    iget-object v1, p0, Landroidx/fragment/app/d1;->a:Lg5/s;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lg5/s;->C(Landroidx/fragment/app/l0;Z)V

    iget-object p0, p0, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/e1;

    iget-object v1, v2, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/e1;->f(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iput-object v0, v2, Landroidx/fragment/app/l0;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v0, v2, Landroidx/fragment/app/l0;->mSavedViewState:Landroid/util/SparseArray;

    iput-object v0, v2, Landroidx/fragment/app/l0;->mSavedViewRegistryState:Landroid/os/Bundle;

    return-void
.end method

.method public final m()Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    iget v2, v1, Landroidx/fragment/app/l0;->mState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Landroidx/fragment/app/l0;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    new-instance v2, Landroidx/fragment/app/b1;

    invoke-direct {v2, v1}, Landroidx/fragment/app/b1;-><init>(Landroidx/fragment/app/l0;)V

    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v2, v1, Landroidx/fragment/app/l0;->mState:I

    if-lez v2, :cond_7

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/l0;->performSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "savedInstanceState"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/d1;->a:Lg5/s;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lg5/s;->D(Landroidx/fragment/app/l0;Landroid/os/Bundle;Z)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v1, Landroidx/fragment/app/l0;->mSavedStateRegistryController:Ln4/f;

    invoke-virtual {v2, p0}, Ln4/f;->b(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "registryState"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    iget-object p0, v1, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/w0;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/u;

    iget-boolean v2, v1, Landroidx/fragment/app/u;->f:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "FragmentManager"

    const-string v4, "SpecialEffectsController: Forcing postponed operations"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-boolean v3, v1, Landroidx/fragment/app/u;->f:Z

    invoke-virtual {v1}, Landroidx/fragment/app/u;->e()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/w0;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/u;

    invoke-virtual {v1}, Landroidx/fragment/app/u;->i()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/w0;->i()V

    const/4 p0, 0x0

    throw p0

    :cond_7
    iget-object p0, v1, Landroidx/fragment/app/l0;->mArguments:Landroid/os/Bundle;

    if-eqz p0, :cond_8

    const-string v1, "arguments"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    return-object v0
.end method

.method public final n()V
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    iget-object v0, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saving view state for fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    iput-object v0, p0, Landroidx/fragment/app/l0;->mSavedViewState:Landroid/util/SparseArray;

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/l0;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    iget-object v1, v1, Landroidx/fragment/app/o1;->q:Ln4/f;

    invoke-virtual {v1, v0}, Ln4/f;->b(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iput-object v0, p0, Landroidx/fragment/app/l0;->mSavedViewRegistryState:Landroid/os/Bundle;

    :cond_3
    :goto_0
    return-void
.end method
