.class public final Lv4/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public l:Lv4/t;

.field public m:Landroid/view/ViewGroup;


# virtual methods
.method public final onPreDraw()Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lv4/w;->l:Lv4/t;

    iget-object v2, v0, Lv4/w;->m:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object v3, Lv4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    if-nez v3, :cond_0

    move v10, v6

    goto/16 :goto_10

    :cond_0
    invoke-static {}, Lv4/x;->a()Lk/e;

    move-result-object v3

    invoke-virtual {v3, v2}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2, v4}, Lk/v0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lv4/v;

    invoke-direct {v4, v0, v3}, Lv4/v;-><init>(Lv4/w;Lk/e;)V

    invoke-virtual {v1, v4}, Lv4/t;->a(Lv4/r;)V

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Lv4/t;->p(Landroid/view/ViewGroup;Z)V

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v8

    :goto_1
    if-ge v3, v0, :cond_3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lv4/t;

    invoke-virtual {v4, v2}, Lv4/t;->R(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lv4/t;->t:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lv4/t;->u:Ljava/util/ArrayList;

    iget-object v0, v1, Lv4/t;->p:Lg5/i;

    iget-object v3, v1, Lv4/t;->q:Lg5/i;

    new-instance v4, Lk/e;

    iget-object v7, v0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v7, Lk/e;

    invoke-direct {v4, v7}, Lk/e;-><init>(Lk/v0;)V

    new-instance v7, Lk/e;

    iget-object v9, v3, Lg5/i;->m:Ljava/lang/Object;

    check-cast v9, Lk/e;

    invoke-direct {v7, v9}, Lk/e;-><init>(Lk/v0;)V

    move v9, v8

    :goto_2
    iget-object v10, v1, Lv4/t;->s:[I

    array-length v11, v10

    const/4 v12, 0x2

    if-ge v9, v11, :cond_10

    aget v10, v10, v9

    if-eq v10, v6, :cond_d

    if-eq v10, v12, :cond_b

    const/4 v11, 0x3

    if-eq v10, v11, :cond_9

    const/4 v11, 0x4

    if-eq v10, v11, :cond_5

    :cond_4
    move/from16 v17, v6

    move v15, v9

    goto/16 :goto_8

    :cond_5
    iget-object v10, v0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v10, Lk/q;

    iget-object v11, v3, Lg5/i;->o:Ljava/lang/Object;

    check-cast v11, Lk/q;

    invoke-virtual {v10}, Lk/q;->size()I

    move-result v12

    move v13, v8

    :goto_3
    if-ge v13, v12, :cond_4

    invoke-virtual {v10, v13}, Lk/q;->o(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    if-eqz v14, :cond_7

    invoke-virtual {v1, v14}, Lv4/t;->I(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    move v15, v9

    invoke-virtual {v10, v13}, Lk/q;->h(I)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lk/q;->f(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-eqz v8, :cond_6

    invoke-virtual {v1, v8}, Lv4/t;->I(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v4, v14}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv4/a0;

    invoke-virtual {v7, v8}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Lv4/a0;

    if-eqz v9, :cond_8

    if-eqz v6, :cond_8

    iget-object v5, v1, Lv4/t;->t:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lv4/t;->u:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v14}, Lk/v0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lk/v0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    move/from16 v17, v6

    goto :goto_4

    :cond_7
    move/from16 v17, v6

    move v15, v9

    :cond_8
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move v9, v15

    move/from16 v6, v17

    const/4 v8, 0x0

    goto :goto_3

    :cond_9
    move/from16 v17, v6

    move v15, v9

    iget-object v5, v0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v5, Landroid/util/SparseArray;

    iget-object v6, v3, Lg5/i;->n:Ljava/lang/Object;

    check-cast v6, Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_f

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-eqz v10, :cond_a

    invoke-virtual {v1, v10}, Lv4/t;->I(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_a

    invoke-virtual {v1, v11}, Lv4/t;->I(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v4, v10}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lv4/a0;

    invoke-virtual {v7, v11}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lv4/a0;

    if-eqz v12, :cond_a

    if-eqz v13, :cond_a

    iget-object v14, v1, Lv4/t;->t:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lv4/t;->u:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v10}, Lk/v0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v11}, Lk/v0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_b
    move/from16 v17, v6

    move v15, v9

    iget-object v5, v0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v5, Lk/e;

    iget-object v6, v3, Lg5/i;->p:Ljava/lang/Object;

    check-cast v6, Lk/e;

    iget v8, v5, Lk/v0;->n:I

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_f

    invoke-virtual {v5, v9}, Lk/v0;->i(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-eqz v10, :cond_c

    invoke-virtual {v1, v10}, Lv4/t;->I(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v5, v9}, Lk/v0;->f(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6, v11}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_c

    invoke-virtual {v1, v11}, Lv4/t;->I(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v4, v10}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lv4/a0;

    invoke-virtual {v7, v11}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lv4/a0;

    if-eqz v12, :cond_c

    if-eqz v13, :cond_c

    iget-object v14, v1, Lv4/t;->t:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lv4/t;->u:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v10}, Lk/v0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v11}, Lk/v0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_d
    move/from16 v17, v6

    move v15, v9

    iget v5, v4, Lk/v0;->n:I

    add-int/lit8 v5, v5, -0x1

    :goto_7
    if-ltz v5, :cond_f

    invoke-virtual {v4, v5}, Lk/v0;->f(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_e

    invoke-virtual {v1, v6}, Lv4/t;->I(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v7, v6}, Lk/v0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv4/a0;

    if-eqz v6, :cond_e

    iget-object v8, v6, Lv4/a0;->b:Landroid/view/View;

    invoke-virtual {v1, v8}, Lv4/t;->I(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v4, v5}, Lk/v0;->g(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv4/a0;

    iget-object v9, v1, Lv4/t;->t:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lv4/t;->u:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_f
    :goto_8
    add-int/lit8 v9, v15, 0x1

    move/from16 v6, v17

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_10
    move/from16 v17, v6

    const/4 v0, 0x0

    :goto_9
    iget v3, v4, Lk/v0;->n:I

    if-ge v0, v3, :cond_12

    invoke-virtual {v4, v0}, Lk/v0;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/a0;

    iget-object v5, v3, Lv4/a0;->b:Landroid/view/View;

    invoke-virtual {v1, v5}, Lv4/t;->I(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, v1, Lv4/t;->t:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lv4/t;->u:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_12
    const/4 v0, 0x0

    :goto_a
    iget v3, v7, Lk/v0;->n:I

    if-ge v0, v3, :cond_14

    invoke-virtual {v7, v0}, Lk/v0;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/a0;

    iget-object v4, v3, Lv4/a0;->b:Landroid/view/View;

    invoke-virtual {v1, v4}, Lv4/t;->I(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v1, Lv4/t;->u:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lv4/t;->t:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_13
    const/4 v5, 0x0

    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_14
    invoke-static {}, Lv4/t;->B()Lk/e;

    move-result-object v0

    iget v3, v0, Lk/v0;->n:I

    invoke-virtual {v2}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v3, v3, -0x1

    :goto_c
    if-ltz v3, :cond_1b

    invoke-virtual {v0, v3}, Lk/v0;->f(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator;

    if-eqz v6, :cond_1a

    invoke-virtual {v0, v6}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv4/o;

    if-eqz v7, :cond_1a

    iget-object v8, v7, Lv4/o;->e:Lv4/t;

    iget-object v9, v7, Lv4/o;->a:Landroid/view/View;

    if-eqz v9, :cond_1a

    iget-object v10, v7, Lv4/o;->d:Landroid/view/WindowId;

    invoke-virtual {v4, v10}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    iget-object v7, v7, Lv4/o;->c:Lv4/a0;

    move/from16 v10, v17

    invoke-virtual {v1, v9, v10}, Lv4/t;->E(Landroid/view/View;Z)Lv4/a0;

    move-result-object v11

    invoke-virtual {v1, v9, v10}, Lv4/t;->z(Landroid/view/View;Z)Lv4/a0;

    move-result-object v13

    if-nez v11, :cond_15

    if-nez v13, :cond_15

    iget-object v10, v1, Lv4/t;->q:Lg5/i;

    iget-object v10, v10, Lg5/i;->m:Ljava/lang/Object;

    check-cast v10, Lk/e;

    invoke-virtual {v10, v9}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Lv4/a0;

    :cond_15
    if-nez v11, :cond_16

    if-eqz v13, :cond_1a

    :cond_16
    invoke-virtual {v8, v7, v13}, Lv4/t;->H(Lv4/a0;Lv4/a0;)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {v8}, Lv4/t;->A()Lv4/t;

    move-result-object v7

    iget-object v9, v8, Lv4/t;->w:Ljava/util/ArrayList;

    iget-object v7, v7, Lv4/t;->H:Lv4/q;

    if-eqz v7, :cond_17

    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Lk/v0;->g(I)Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_17
    invoke-virtual {v6}, Landroid/animation/Animator;->isRunning()Z

    move-result v7

    if-nez v7, :cond_19

    invoke-virtual {v6}, Landroid/animation/Animator;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_18

    goto :goto_d

    :cond_18
    invoke-virtual {v0, v3}, Lk/v0;->g(I)Ljava/lang/Object;

    goto :goto_e

    :cond_19
    :goto_d
    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    :cond_1a
    :goto_e
    add-int/lit8 v3, v3, -0x1

    const/16 v17, 0x1

    goto :goto_c

    :cond_1b
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1d

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/t;

    sget-object v4, Lv4/s;->h:Lc2/c0;

    const/4 v6, 0x0

    invoke-virtual {v3, v3, v4, v6}, Lv4/t;->M(Lv4/t;Lv4/s;Z)V

    iget-boolean v4, v3, Lv4/t;->A:Z

    if-nez v4, :cond_1c

    const/4 v10, 0x1

    iput-boolean v10, v3, Lv4/t;->A:Z

    sget-object v4, Lv4/s;->g:Lc2/c0;

    invoke-virtual {v3, v3, v4, v6}, Lv4/t;->M(Lv4/t;Lv4/s;Z)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    iget-object v0, v1, Lv4/t;->p:Lg5/i;

    iget-object v3, v1, Lv4/t;->q:Lg5/i;

    iget-object v4, v1, Lv4/t;->t:Ljava/util/ArrayList;

    iget-object v5, v1, Lv4/t;->u:Ljava/util/ArrayList;

    move-object/from16 v18, v2

    move-object v2, v0

    move-object v0, v1

    move-object/from16 v1, v18

    invoke-virtual/range {v0 .. v5}, Lv4/t;->v(Landroid/view/ViewGroup;Lg5/i;Lg5/i;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, v0, Lv4/t;->H:Lv4/q;

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Lv4/t;->S()V

    const/16 v17, 0x1

    return v17

    :cond_1e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_21

    invoke-virtual {v0}, Lv4/t;->O()V

    iget-object v1, v0, Lv4/t;->H:Lv4/q;

    iget-object v2, v1, Lv4/q;->h:Lv4/z;

    iget-wide v3, v2, Lv4/t;->G:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    const-wide/16 v5, 0x1

    :cond_1f
    iget-wide v3, v1, Lv4/q;->a:J

    invoke-virtual {v2, v5, v6, v3, v4}, Lv4/z;->T(JJ)V

    iput-wide v5, v1, Lv4/q;->a:J

    iget-object v0, v0, Lv4/t;->H:Lv4/q;

    const/4 v10, 0x1

    iput-boolean v10, v0, Lv4/q;->b:Z

    iget v1, v0, Lv4/q;->d:I

    if-ne v1, v10, :cond_20

    const/4 v6, 0x0

    iput v6, v0, Lv4/q;->d:I

    invoke-virtual {v0}, Lv4/q;->g()V

    return v10

    :cond_20
    const/4 v6, 0x0

    if-ne v1, v12, :cond_22

    iput v6, v0, Lv4/q;->d:I

    iget-object v1, v0, Lv4/q;->g:Ljava/lang/Runnable;

    iput-object v1, v0, Lv4/q;->g:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lv4/q;->h()V

    iget-object v0, v0, Lv4/q;->e:Lw3/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lw3/c;->a(F)V

    return v10

    :cond_21
    const/4 v10, 0x1

    :cond_22
    :goto_10
    return v10
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lv4/w;->m:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object v0, Lv4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lv4/x;->a()Lk/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lv4/t;

    invoke-virtual {v3, p1}, Lv4/t;->R(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lv4/w;->l:Lv4/t;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lv4/t;->r(Z)V

    return-void
.end method
