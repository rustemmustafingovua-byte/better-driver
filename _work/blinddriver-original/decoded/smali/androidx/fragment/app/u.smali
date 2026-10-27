.class public final Landroidx/fragment/app/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/u;->a:Landroid/view/ViewGroup;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/u;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/u;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static f(Lk/e;Landroid/view/View;)V
    .locals 4

    sget-object v0, Lq3/q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lk/v0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, v2}, Landroidx/fragment/app/u;->f(Lk/e;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final j(Landroid/view/ViewGroup;Landroidx/fragment/app/w0;)Landroidx/fragment/app/u;
    .locals 2

    const-string v0, "container"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/w0;->k()Ld7/g;

    move-result-object p1

    const-string v0, "fragmentManager.specialEffectsControllerFactory"

    invoke-static {p1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f08006d

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/u;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/u;

    return-object v0

    :cond_0
    new-instance v0, Landroidx/fragment/app/u;

    invoke-direct {v0, p0}, Landroidx/fragment/app/u;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static k(Ljava/util/ArrayList;)Z
    .locals 8

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v1

    :cond_0
    :goto_0
    move v3, v2

    :goto_1
    if-ge v4, v0, :cond_4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Landroidx/fragment/app/s1;

    iget-object v5, v3, Landroidx/fragment/app/s1;->k:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v3, v3, Landroidx/fragment/app/s1;->k:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :cond_2
    if-ge v6, v5, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroidx/fragment/app/r1;

    invoke-virtual {v7}, Landroidx/fragment/app/r1;->a()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_5

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroidx/fragment/app/s1;

    iget-object v5, v5, Landroidx/fragment/app/s1;->k:Ljava/util/ArrayList;

    invoke-static {v5, v0}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v1
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/s1;)V
    .locals 3

    const-string v0, "operation"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Landroidx/fragment/app/s1;->i:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroidx/fragment/app/s1;->a:I

    iget-object v1, p1, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v1}, Landroidx/fragment/app/l0;->requireView()Landroid/view/View;

    move-result-object v1

    const-string v2, "operation.fragment.requireView()"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/u;->a:Landroid/view/ViewGroup;

    invoke-static {v0, v1, p0}, Landroidx/fragment/app/t1;->a(ILandroid/view/View;Landroid/view/ViewGroup;)V

    const/4 p0, 0x0

    iput-boolean p0, p1, Landroidx/fragment/app/s1;->i:Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/ArrayList;Z)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, p2

    const/4 v15, 0x2

    invoke-static {v15}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v2

    const-string v3, "FragmentManager"

    if-eqz v2, :cond_0

    const-string v2, "Collecting Effects"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    move v5, v4

    :cond_1
    :goto_0
    const-string v6, "Unknown visibility "

    const/16 v7, 0x8

    const/4 v8, 0x4

    const-string v10, "operation.fragment.mView"

    if-ge v5, v2, :cond_5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v5, v5, 0x1

    move-object v13, v12

    check-cast v13, Landroidx/fragment/app/s1;

    const/16 v16, 0x0

    iget-object v9, v13, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    iget-object v9, v9, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-static {v9, v10}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v17

    cmpg-float v17, v17, v16

    if-nez v17, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_4

    if-eq v9, v8, :cond_1

    if-ne v9, v7, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v9, v6}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v9, v13, Landroidx/fragment/app/s1;->a:I

    if-eq v9, v15, :cond_1

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    const/4 v12, 0x0

    :goto_1
    check-cast v12, Landroidx/fragment/app/s1;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroidx/fragment/app/s1;

    iget-object v13, v9, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    iget-object v13, v13, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-static {v13, v10}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v17

    cmpg-float v17, v17, v16

    if-nez v17, :cond_7

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_6

    if-eq v13, v8, :cond_9

    if-ne v13, v7, :cond_8

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v13, v6}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_2
    iget v9, v9, Landroidx/fragment/app/s1;->a:I

    if-ne v9, v15, :cond_6

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    :goto_3
    check-cast v5, Landroidx/fragment/app/s1;

    invoke-static {v15}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Executing operations from "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/s1;

    iget-object v7, v7, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v4

    :goto_4
    if-ge v9, v8, :cond_c

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Landroidx/fragment/app/s1;

    iget-object v10, v10, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    iget-object v10, v10, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    iget-object v13, v7, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    move/from16 v16, v15

    iget v15, v13, Landroidx/fragment/app/h0;->b:I

    iput v15, v10, Landroidx/fragment/app/h0;->b:I

    iget v15, v13, Landroidx/fragment/app/h0;->c:I

    iput v15, v10, Landroidx/fragment/app/h0;->c:I

    iget v15, v13, Landroidx/fragment/app/h0;->d:I

    iput v15, v10, Landroidx/fragment/app/h0;->d:I

    iget v13, v13, Landroidx/fragment/app/h0;->e:I

    iput v13, v10, Landroidx/fragment/app/h0;->e:I

    move/from16 v15, v16

    goto :goto_4

    :cond_c
    move/from16 v16, v15

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :goto_5
    const/4 v15, 0x1

    if-ge v8, v7, :cond_f

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Landroidx/fragment/app/s1;

    new-instance v10, Landroidx/fragment/app/h;

    invoke-direct {v10, v9, v14}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/s1;Z)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Landroidx/fragment/app/s;

    if-eqz v14, :cond_e

    if-ne v9, v12, :cond_d

    :goto_6
    move v13, v15

    goto :goto_7

    :cond_d
    move v13, v4

    goto :goto_7

    :cond_e
    if-ne v9, v5, :cond_d

    goto :goto_6

    :goto_7
    invoke-direct {v10, v9, v14, v13}, Landroidx/fragment/app/s;-><init>(Landroidx/fragment/app/s1;ZZ)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Landroidx/fragment/app/q1;

    invoke-direct {v10, v0, v9, v15}, Landroidx/fragment/app/q1;-><init>(Landroidx/fragment/app/u;Landroidx/fragment/app/s1;I)V

    iget-object v9, v9, Landroidx/fragment/app/s1;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :cond_10
    :goto_8
    if-ge v8, v7, :cond_11

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    move-object v10, v9

    check-cast v10, Landroidx/fragment/app/s;

    invoke-virtual {v10}, Landroidx/fragment/app/m;->a()Z

    move-result v10

    if-nez v10, :cond_10

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :cond_12
    :goto_9
    if-ge v8, v7, :cond_13

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    move-object v10, v9

    check-cast v10, Landroidx/fragment/app/s;

    invoke-virtual {v10}, Landroidx/fragment/app/s;->b()Landroidx/fragment/app/n1;

    move-result-object v10

    if-eqz v10, :cond_12

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_13
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v8, v4

    const/4 v7, 0x0

    :goto_a
    if-ge v8, v1, :cond_16

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Landroidx/fragment/app/s;

    invoke-virtual {v9}, Landroidx/fragment/app/s;->b()Landroidx/fragment/app/n1;

    move-result-object v10

    if-eqz v7, :cond_15

    if-ne v10, v7, :cond_14

    goto :goto_b

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    iget-object v1, v1, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned Transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Landroidx/fragment/app/s;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which uses a different Transition type than other Fragments."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    :goto_b
    move-object v7, v10

    goto :goto_a

    :cond_16
    if-nez v7, :cond_17

    move-object v0, v3

    move/from16 v17, v15

    move-object v15, v2

    goto/16 :goto_18

    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lk/e;

    invoke-direct {v9, v4}, Lk/v0;-><init>(I)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move/from16 v17, v15

    new-instance v15, Lk/e;

    invoke-direct {v15, v4}, Lk/v0;-><init>(I)V

    move-object/from16 v18, v13

    new-instance v13, Lk/e;

    invoke-direct {v13, v4}, Lk/v0;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v11, 0x0

    :goto_c
    const/16 v19, 0x0

    :goto_d
    if-ge v11, v4, :cond_25

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    add-int/lit8 v11, v11, 0x1

    move-object/from16 p1, v1

    move-object/from16 v1, v20

    check-cast v1, Landroidx/fragment/app/s;

    iget-object v1, v1, Landroidx/fragment/app/s;->d:Ljava/lang/Object;

    if-eqz v1, :cond_24

    if-eqz v12, :cond_24

    move-object/from16 v20, v2

    iget-object v2, v12, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    if-eqz v5, :cond_23

    iget-object v10, v5, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v7, v1}, Landroidx/fragment/app/n1;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroidx/fragment/app/n1;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move/from16 v21, v4

    invoke-virtual {v10}, Landroidx/fragment/app/l0;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v22, v7

    const-string v7, "lastIn.fragment.sharedElementSourceNames"

    invoke-static {v4, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/l0;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v23, v8

    const-string v8, "firstOut.fragment.sharedElementSourceNames"

    invoke-static {v7, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/l0;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v8

    move/from16 v24, v11

    const-string v11, "firstOut.fragment.sharedElementTargetNames"

    invoke-static {v8, v11}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v14, 0x0

    :goto_e
    const/4 v0, -0x1

    if-ge v14, v11, :cond_19

    move/from16 v18, v11

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    if-eq v11, v0, :cond_18

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v11, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_18
    add-int/lit8 v14, v14, 0x1

    move/from16 v11, v18

    goto :goto_e

    :cond_19
    invoke-virtual {v10}, Landroidx/fragment/app/l0;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v7

    const-string v8, "lastIn.fragment.sharedElementTargetNames"

    invoke-static {v7, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_1a

    invoke-virtual {v2}, Landroidx/fragment/app/l0;->getExitTransitionCallback()Li3/h;

    invoke-virtual {v10}, Landroidx/fragment/app/l0;->getEnterTransitionCallback()Li3/h;

    new-instance v8, Lt8/j;

    const/4 v11, 0x0

    invoke-direct {v8, v11, v11}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f

    :cond_1a
    const/4 v11, 0x0

    invoke-virtual {v2}, Landroidx/fragment/app/l0;->getEnterTransitionCallback()Li3/h;

    invoke-virtual {v10}, Landroidx/fragment/app/l0;->getExitTransitionCallback()Li3/h;

    new-instance v8, Lt8/j;

    invoke-direct {v8, v11, v11}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_f
    iget-object v14, v8, Lt8/j;->l:Ljava/lang/Object;

    if-nez v14, :cond_22

    iget-object v8, v8, Lt8/j;->m:Ljava/lang/Object;

    if-nez v8, :cond_21

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v14, 0x0

    :goto_10
    if-ge v14, v8, :cond_1b

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    const-string v0, "exitingNames[i]"

    invoke-static {v11, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move/from16 v19, v8

    const-string v8, "enteringNames[i]"

    invoke-static {v0, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v11, v0}, Lk/v0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v19

    const/4 v0, -0x1

    const/4 v11, 0x0

    goto :goto_10

    :cond_1b
    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, ">>> entering view names <<<"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v8, 0x0

    :goto_11
    const-string v11, "Name: "

    if-ge v8, v0, :cond_1c

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v8, v8, 0x1

    check-cast v14, Ljava/lang/String;

    move/from16 v19, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v19

    goto :goto_11

    :cond_1c
    const-string v0, ">>> exiting view names <<<"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v0, :cond_1d

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v8, v8, 0x1

    check-cast v14, Ljava/lang/String;

    move/from16 v19, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v19

    goto :goto_12

    :cond_1d
    iget-object v0, v2, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    const-string v2, "firstOut.fragment.mView"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v0}, Landroidx/fragment/app/u;->f(Lk/e;Landroid/view/View;)V

    invoke-virtual {v15, v4}, Lk/e;->l(Ljava/util/Collection;)Z

    invoke-virtual {v15}, Lk/e;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v9, v0}, Lk/e;->l(Ljava/util/Collection;)Z

    iget-object v0, v10, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    const-string v2, "lastIn.fragment.mView"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v0}, Landroidx/fragment/app/u;->f(Lk/e;Landroid/view/View;)V

    invoke-virtual {v13, v7}, Lk/e;->l(Ljava/util/Collection;)Z

    invoke-virtual {v9}, Lk/e;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v13, v0}, Lk/e;->l(Ljava/util/Collection;)Z

    sget-object v0, Landroidx/fragment/app/g1;->a:Landroidx/fragment/app/l1;

    iget v0, v9, Lk/v0;->n:I

    add-int/lit8 v0, v0, -0x1

    const/4 v2, -0x1

    :goto_13
    if-ge v2, v0, :cond_1f

    invoke-virtual {v9, v0}, Lk/v0;->i(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v13, v8}, Lk/v0;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    invoke-virtual {v9, v0}, Lk/v0;->g(I)Ljava/lang/Object;

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_1f
    invoke-virtual {v9}, Lk/e;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v15}, Lk/e;->entrySet()Ljava/util/Set;

    move-result-object v2

    new-instance v8, Landroidx/fragment/app/t;

    const/4 v11, 0x0

    invoke-direct {v8, v11, v0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v8, v11}, Lu8/m;->d0(Ljava/util/Collection;Li9/c;Z)Z

    invoke-virtual {v9}, Lk/e;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v13}, Lk/e;->entrySet()Ljava/util/Set;

    move-result-object v2

    new-instance v8, Landroidx/fragment/app/t;

    invoke-direct {v8, v11, v0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v8, v11}, Lu8/m;->d0(Ljava/util/Collection;Li9/c;Z)Z

    invoke-virtual {v9}, Lk/v0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring shared elements transition "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as there are no matching elements in both the entering and exiting fragment. In order to run a SharedElementTransition, both fragments involved must have the element."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, p2

    move-object/from16 v18, v4

    move-object v10, v7

    move-object/from16 v2, v20

    move/from16 v4, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v11, v24

    goto/16 :goto_c

    :cond_20
    move-object/from16 v0, p0

    move/from16 v14, p2

    move-object/from16 v19, v1

    move-object/from16 v18, v4

    move-object v10, v7

    move-object/from16 v2, v20

    move/from16 v4, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v11, v24

    move-object/from16 v1, p1

    goto/16 :goto_d

    :cond_21
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_22
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_23
    :goto_14
    move/from16 v21, v4

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move/from16 v24, v11

    const/4 v11, 0x0

    goto :goto_15

    :cond_24
    move-object/from16 v20, v2

    goto :goto_14

    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, p2

    move-object/from16 v2, v20

    move/from16 v4, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v11, v24

    goto/16 :goto_d

    :cond_25
    move-object/from16 p1, v1

    move-object/from16 v20, v2

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    const/4 v11, 0x0

    if-nez v19, :cond_28

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_26
    move-object v0, v3

    move-object/from16 v15, v20

    goto :goto_18

    :cond_27
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v11

    :goto_16
    if-ge v1, v0, :cond_26

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroidx/fragment/app/s;

    iget-object v2, v2, Landroidx/fragment/app/s;->b:Ljava/lang/Object;

    if-nez v2, :cond_28

    goto :goto_16

    :cond_28
    new-instance v1, Landroidx/fragment/app/r;

    move-object/from16 v7, p1

    move/from16 v14, p2

    move-object v0, v3

    move-object v4, v5

    move-object v2, v6

    move-object v3, v12

    move-object v12, v15

    move-object/from16 v11, v18

    move-object/from16 v6, v19

    move-object/from16 v15, v20

    move-object/from16 v5, v22

    move-object/from16 v8, v23

    invoke-direct/range {v1 .. v14}, Landroidx/fragment/app/r;-><init>(Ljava/util/ArrayList;Landroidx/fragment/app/s1;Landroidx/fragment/app/s1;Landroidx/fragment/app/n1;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;Lk/e;Ljava/util/ArrayList;Ljava/util/ArrayList;Lk/e;Lk/e;Z)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_29

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroidx/fragment/app/s;

    iget-object v5, v5, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    iget-object v5, v5, Landroidx/fragment/app/s1;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_29
    :goto_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_2a

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroidx/fragment/app/h;

    iget-object v5, v5, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    iget-object v5, v5, Landroidx/fragment/app/s1;->k:Ljava/util/ArrayList;

    invoke-static {v5, v2}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    goto :goto_19

    :cond_2a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_2b
    :goto_1a
    if-ge v5, v3, :cond_30

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroidx/fragment/app/h;

    move-object/from16 v7, p0

    iget-object v8, v7, Landroidx/fragment/app/u;->a:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v6, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    const-string v10, "context"

    invoke-static {v8, v10}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroidx/fragment/app/h;->b(Landroid/content/Context;)Lg5/l;

    move-result-object v8

    if-nez v8, :cond_2c

    goto :goto_1a

    :cond_2c
    iget-object v8, v8, Lg5/l;->n:Ljava/lang/Object;

    check-cast v8, Landroid/animation/AnimatorSet;

    if-nez v8, :cond_2d

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2d
    iget-object v8, v9, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    iget-object v10, v9, Landroidx/fragment/app/s1;->k:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2e

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Ignoring Animator set on "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " as this Fragment was involved in a Transition."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_2e
    iget v4, v9, Landroidx/fragment/app/s1;->a:I

    const/4 v8, 0x3

    if-ne v4, v8, :cond_2f

    const/4 v11, 0x0

    iput-boolean v11, v9, Landroidx/fragment/app/s1;->i:Z

    goto :goto_1b

    :cond_2f
    const/4 v11, 0x0

    :goto_1b
    new-instance v4, Landroidx/fragment/app/j;

    invoke-direct {v4, v6}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/h;)V

    iget-object v6, v9, Landroidx/fragment/app/s1;->j:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v4, v17

    goto :goto_1a

    :cond_30
    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_31
    :goto_1c
    if-ge v11, v3, :cond_34

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v11, v11, 0x1

    check-cast v5, Landroidx/fragment/app/h;

    iget-object v6, v5, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    iget-object v7, v6, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    const-string v8, "Ignoring Animation set on "

    if-nez v2, :cond_32

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v5

    if-eqz v5, :cond_31

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " as Animations cannot run alongside Transitions."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_32
    if-eqz v4, :cond_33

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v5

    if-eqz v5, :cond_31

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " as Animations cannot run alongside Animators."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_33
    new-instance v7, Landroidx/fragment/app/g;

    invoke-direct {v7, v5}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/h;)V

    iget-object v5, v6, Landroidx/fragment/app/s1;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_34
    return-void
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroidx/fragment/app/s1;

    iget-object v4, v4, Landroidx/fragment/app/s1;->k:Ljava/util/ArrayList;

    invoke-static {v4, v0}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/r1;

    iget-object v5, p0, Landroidx/fragment/app/u;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/r1;->c(Landroid/view/ViewGroup;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/s1;

    invoke-virtual {p0, v3}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/s1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    :goto_3
    if-ge v2, p1, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/s1;

    iget-object v1, v0, Landroidx/fragment/app/s1;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/s1;->b()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final d(IILandroidx/fragment/app/d1;)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/u;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p3, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    const-string v2, "fragmentStateManager.fragment"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/u;->g(Landroidx/fragment/app/l0;)Landroidx/fragment/app/s1;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p3, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    iget-boolean v2, v1, Landroidx/fragment/app/l0;->mTransitioning:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/l0;->mRemoving:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/u;->h(Landroidx/fragment/app/l0;)Landroidx/fragment/app/s1;

    move-result-object v1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/s1;->d(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_3
    :try_start_1
    new-instance v1, Landroidx/fragment/app/s1;

    invoke-direct {v1, p1, p2, p3}, Landroidx/fragment/app/s1;-><init>(IILandroidx/fragment/app/d1;)V

    iget-object p1, p0, Landroidx/fragment/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/fragment/app/q1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v1, p2}, Landroidx/fragment/app/q1;-><init>(Landroidx/fragment/app/u;Landroidx/fragment/app/s1;I)V

    iget-object p2, v1, Landroidx/fragment/app/s1;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/fragment/app/q1;

    const/4 p2, 0x2

    invoke-direct {p1, p0, v1, p2}, Landroidx/fragment/app/q1;-><init>(Landroidx/fragment/app/u;Landroidx/fragment/app/s1;I)V

    iget-object p0, v1, Landroidx/fragment/app/s1;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final e()V
    .locals 10

    iget-boolean v0, p0, Landroidx/fragment/app/u;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/u;->i()V

    iput-boolean v1, p0, Landroidx/fragment/app/u;->e:Z

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Ljava/util/ArrayList;

    invoke-static {v2}, Lu8/m;->C0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Landroidx/fragment/app/s1;

    iget-object v7, p0, Landroidx/fragment/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v6, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    iget-boolean v7, v7, Landroidx/fragment/app/l0;->mTransitioning:Z

    if-eqz v7, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_2
    move v5, v1

    :goto_1
    iput-boolean v5, v6, Landroidx/fragment/app/s1;->g:Z

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :cond_4
    :goto_2
    const/4 v6, 0x2

    if-ge v4, v3, :cond_8

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    check-cast v7, Landroidx/fragment/app/s1;

    iget-boolean v8, p0, Landroidx/fragment/app/u;->d:Z

    if-eqz v8, :cond_6

    invoke-static {v6}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SpecialEffectsController: Completing non-seekable operation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v7}, Landroidx/fragment/app/s1;->b()V

    goto :goto_3

    :cond_6
    invoke-static {v6}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v6, p0, Landroidx/fragment/app/u;->a:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroidx/fragment/app/s1;->a(Landroid/view/ViewGroup;)V

    :goto_3
    iput-boolean v1, p0, Landroidx/fragment/app/u;->d:Z

    iget-boolean v6, v7, Landroidx/fragment/app/s1;->f:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Landroidx/fragment/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-object v2, p0, Landroidx/fragment/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p0}, Landroidx/fragment/app/u;->m()V

    iget-object v2, p0, Landroidx/fragment/app/u;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Lu8/m;->C0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    :try_start_1
    iget-object v3, p0, Landroidx/fragment/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Landroidx/fragment/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v6}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "FragmentManager"

    const-string v4, "SpecialEffectsController: Executing pending operations"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-boolean v3, p0, Landroidx/fragment/app/u;->e:Z

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/u;->b(Ljava/util/ArrayList;Z)V

    invoke-static {v2}, Landroidx/fragment/app/u;->k(Ljava/util/ArrayList;)Z

    move-result v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v8, v1

    move v7, v5

    :cond_b
    :goto_4
    if-ge v8, v4, :cond_c

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Landroidx/fragment/app/s1;

    iget-object v9, v9, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    iget-boolean v9, v9, Landroidx/fragment/app/l0;->mTransitioning:Z

    if-nez v9, :cond_b

    move v7, v1

    goto :goto_4

    :cond_c
    if-eqz v7, :cond_d

    if-nez v3, :cond_d

    goto :goto_5

    :cond_d
    move v5, v1

    :goto_5
    iput-boolean v5, p0, Landroidx/fragment/app/u;->d:Z

    invoke-static {v6}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SpecialEffectsController: Operation seekable = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " \ntransition = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-nez v7, :cond_f

    invoke-virtual {p0, v2}, Landroidx/fragment/app/u;->l(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/u;->c(Ljava/util/ArrayList;)V

    goto :goto_7

    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {p0, v2}, Landroidx/fragment/app/u;->l(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_6
    if-ge v4, v3, :cond_10

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/s1;

    invoke-virtual {p0, v5}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/s1;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_10
    :goto_7
    iput-boolean v1, p0, Landroidx/fragment/app/u;->e:Z

    invoke-static {v6}, Landroidx/fragment/app/w0;->l(I)Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "FragmentManager"

    const-string v1, "SpecialEffectsController: Finished executing pending operations"

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_11
    monitor-exit v0

    return-void

    :goto_8
    monitor-exit v0

    throw p0
.end method

.method public final g(Landroidx/fragment/app/l0;)Landroidx/fragment/app/s1;
    .locals 5

    iget-object p0, p0, Landroidx/fragment/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    check-cast v3, Landroidx/fragment/app/s1;

    iget-object v4, v3, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    invoke-static {v4, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v3, v3, Landroidx/fragment/app/s1;->e:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Landroidx/fragment/app/s1;

    return-object v2
.end method

.method public final h(Landroidx/fragment/app/l0;)Landroidx/fragment/app/s1;
    .locals 5

    iget-object p0, p0, Landroidx/fragment/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    check-cast v3, Landroidx/fragment/app/s1;

    iget-object v4, v3, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    invoke-static {v4, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v3, v3, Landroidx/fragment/app/s1;->e:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Landroidx/fragment/app/s1;

    return-object v2
.end method

.method public final i()V
    .locals 12

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    const-string v2, "SpecialEffectsController: Forcing all operations to complete"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/u;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    iget-object v2, p0, Landroidx/fragment/app/u;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/u;->m()V

    iget-object v3, p0, Landroidx/fragment/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Landroidx/fragment/app/u;->l(Ljava/util/ArrayList;)V

    iget-object v3, p0, Landroidx/fragment/app/u;->c:Ljava/util/ArrayList;

    invoke-static {v3}, Lu8/m;->C0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroidx/fragment/app/s1;

    iput-boolean v5, v7, Landroidx/fragment/app/s1;->g:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_4

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroidx/fragment/app/s1;

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v1, :cond_2

    const-string v8, ""

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroidx/fragment/app/u;->a:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is not attached to window. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SpecialEffectsController: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Cancelling running operation "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v8, p0, Landroidx/fragment/app/u;->a:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Landroidx/fragment/app/s1;->a(Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroidx/fragment/app/u;->b:Ljava/util/ArrayList;

    invoke-static {v3}, Lu8/m;->C0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    :goto_3
    if-ge v6, v4, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroidx/fragment/app/s1;

    iput-boolean v5, v7, Landroidx/fragment/app/s1;->g:Z

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_4
    if-ge v5, v4, :cond_8

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroidx/fragment/app/s1;

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v1, :cond_6

    const-string v7, ""

    goto :goto_5

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/fragment/app/u;->a:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not attached to window. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_5
    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SpecialEffectsController: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Cancelling pending operation "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v7, p0, Landroidx/fragment/app/u;->a:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroidx/fragment/app/s1;->a(Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_8
    monitor-exit v2

    return-void

    :goto_6
    monitor-exit v2

    throw p0
.end method

.method public final l(Ljava/util/ArrayList;)V
    .locals 12

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_9

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/s1;

    iget-object v5, v4, Landroidx/fragment/app/s1;->l:Landroidx/fragment/app/d1;

    iget-boolean v6, v4, Landroidx/fragment/app/s1;->h:Z

    if-eqz v6, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-boolean v3, v4, Landroidx/fragment/app/s1;->h:Z

    iget v3, v4, Landroidx/fragment/app/s1;->b:I

    const/4 v6, 0x2

    const-string v7, " for Fragment "

    const-string v8, "fragmentStateManager.fragment"

    const-string v9, "FragmentManager"

    if-ne v3, v6, :cond_6

    iget-object v3, v5, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    invoke-static {v3, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v3, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v3, v8}, Landroidx/fragment/app/l0;->setFocusedView(Landroid/view/View;)V

    invoke-static {v6}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "requestFocus: Saved focused view "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, v4, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v4}, Landroidx/fragment/app/l0;->requireView()Landroid/view/View;

    move-result-object v4

    const-string v7, "this.fragment.requireView()"

    invoke-static {v4, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    invoke-static {v6}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Adding fragment "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " view "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " to container in onStart"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v5}, Landroidx/fragment/app/d1;->b()V

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpg-float v5, v5, v8

    if-nez v5, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v6}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Making view "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " INVISIBLE in onStart"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {v3}, Landroidx/fragment/app/l0;->getPostOnViewCreatedAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v6}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Setting view alpha to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/l0;->getPostOnViewCreatedAlpha()F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " in onStart"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    iget-object v3, v5, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    invoke-static {v3, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/l0;->requireView()Landroid/view/View;

    move-result-object v4

    const-string v5, "fragment.requireView()"

    invoke-static {v4, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Clearing focus "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " on view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    :cond_8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_a

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroidx/fragment/app/s1;

    iget-object v5, v5, Landroidx/fragment/app/s1;->k:Ljava/util/ArrayList;

    invoke-static {v5, v0}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    goto :goto_2

    :cond_a
    invoke-static {v0}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/r1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "container"

    iget-object v5, p0, Landroidx/fragment/app/u;->a:Landroid/view/ViewGroup;

    invoke-static {v5, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v4, v2, Landroidx/fragment/app/r1;->a:Z

    if-nez v4, :cond_b

    invoke-virtual {v2, v5}, Landroidx/fragment/app/r1;->e(Landroid/view/ViewGroup;)V

    :cond_b
    iput-boolean v3, v2, Landroidx/fragment/app/r1;->a:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    return-void
.end method

.method public final m()V
    .locals 6

    iget-object p0, p0, Landroidx/fragment/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroidx/fragment/app/s1;

    iget v3, v2, Landroidx/fragment/app/s1;->b:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v3}, Landroidx/fragment/app/l0;->requireView()Landroid/view/View;

    move-result-object v3

    const-string v5, "fragment.requireView()"

    invoke-static {v3, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown visibility "

    invoke-static {v3, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Landroidx/fragment/app/s1;->d(II)V

    goto :goto_0

    :cond_3
    return-void
.end method
