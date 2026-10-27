.class public final Lk1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/l;


# instance fields
.field public final a:Lf2/y;

.field public final b:Lf2/y;

.field public final c:Lk1/b0;

.field public final d:Lk1/i;

.field public final e:Lk1/m;

.field public f:Lk/c0;

.field public final g:Lk/h0;

.field public h:Lk1/b0;


# direct methods
.method public constructor <init>(Lf2/y;Lf2/y;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/o;->a:Lf2/y;

    iput-object p2, p0, Lk1/o;->b:Lf2/y;

    new-instance p1, Lk1/b0;

    const/4 v0, 0x0

    const/16 v1, 0xe

    const/4 v2, 0x2

    invoke-direct {p1, v2, v1, v0}, Lk1/b0;-><init>(IILi9/e;)V

    iput-object p1, p0, Lk1/o;->c:Lk1/b0;

    new-instance p1, Lk1/i;

    invoke-direct {p1, p0, p2}, Lk1/i;-><init>(Lk1/o;Lf2/y;)V

    iput-object p1, p0, Lk1/o;->d:Lk1/i;

    new-instance p1, Lk1/m;

    invoke-direct {p1, p0}, Lk1/m;-><init>(Lk1/o;)V

    iput-object p1, p0, Lk1/o;->e:Lk1/m;

    new-instance p1, Lk/h0;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lk/h0;-><init>(I)V

    iput-object p1, p0, Lk1/o;->g:Lk/h0;

    return-void
.end method


# virtual methods
.method public final a(Z)Z
    .locals 7

    invoke-virtual {p0}, Lk1/o;->f()Lk1/b0;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Lk1/o;->f()Lk1/b0;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lk1/o;->i(Lk1/b0;)V

    if-eqz p1, :cond_c

    sget-object p0, Lk1/z;->l:Lk1/z;

    sget-object v2, Lk1/z;->n:Lk1/z;

    invoke-virtual {p1, p0, v2}, Lk1/b0;->N0(Lk1/z;Lk1/z;)V

    iget-object p0, p1, Lf1/q;->l:Lf1/q;

    iget-boolean p0, p0, Lf1/q;->y:Z

    if-nez p0, :cond_1

    const-string p0, "visitAncestors called on an unattached node"

    invoke-static {p0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p1, Lf1/q;->l:Lf1/q;

    iget-object p0, p0, Lf1/q;->p:Lf1/q;

    invoke-static {p1}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_c

    iget-object v2, p1, Le2/g0;->R:Le2/c1;

    iget-object v2, v2, Le2/c1;->f:Lf1/q;

    iget v2, v2, Lf1/q;->o:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_a

    :goto_1
    if-eqz p0, :cond_a

    iget v2, p0, Lf1/q;->n:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_9

    move-object v2, p0

    move-object v3, v1

    :goto_2
    if-eqz v2, :cond_9

    instance-of v4, v2, Lk1/b0;

    if-eqz v4, :cond_2

    check-cast v2, Lk1/b0;

    sget-object v4, Lk1/z;->m:Lk1/z;

    sget-object v5, Lk1/z;->n:Lk1/z;

    invoke-virtual {v2, v4, v5}, Lk1/b0;->N0(Lk1/z;Lk1/z;)V

    goto :goto_5

    :cond_2
    iget v4, v2, Lf1/q;->n:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_8

    instance-of v4, v2, Le2/k;

    if-eqz v4, :cond_8

    move-object v4, v2

    check-cast v4, Le2/k;

    iget-object v4, v4, Le2/k;->A:Lf1/q;

    const/4 v5, 0x0

    :goto_3
    if-eqz v4, :cond_7

    iget v6, v4, Lf1/q;->n:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_6

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v0, :cond_3

    move-object v2, v4

    goto :goto_4

    :cond_3
    if-nez v3, :cond_4

    new-instance v3, Lt0/b;

    const/16 v6, 0x10

    new-array v6, v6, [Lf1/q;

    invoke-direct {v3, v6}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v3, v2}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v2, v1

    :cond_5
    invoke-virtual {v3, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_6
    :goto_4
    iget-object v4, v4, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_7
    if-ne v5, v0, :cond_8

    goto :goto_2

    :cond_8
    :goto_5
    invoke-static {v3}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v2

    goto :goto_2

    :cond_9
    iget-object p0, p0, Lf1/q;->p:Lf1/q;

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Le2/g0;->v()Le2/g0;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p0, p1, Le2/g0;->R:Le2/c1;

    if-eqz p0, :cond_b

    iget-object p0, p0, Le2/c1;->e:Le2/b2;

    goto :goto_0

    :cond_b
    move-object p0, v1

    goto :goto_0

    :cond_c
    :goto_6
    return v0
.end method

.method public final b(IZZ)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p2, :cond_3

    iget-object v1, p0, Lk1/o;->c:Lk1/b0;

    invoke-static {v1, p1}, Lk1/d;->t(Lk1/b0;I)Lk1/b;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lk1/o;->a(Z)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lk1/o;->a(Z)Z

    :goto_1
    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lk1/o;->c()V

    :cond_4
    return v0
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lk1/o;->a:Lf2/y;

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocus()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocus()V

    return-void
.end method

.method public final d(Landroid/view/KeyEvent;Li9/a;)Z
    .locals 12

    iget-object v0, p0, Lk1/o;->c:Lk1/b0;

    const-string v1, "FocusOwnerImpl:dispatchKeyEvent"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lk1/o;->d:Lk1/i;

    iget-boolean v1, v1, Lk1/i;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "FocusRelatedWarning: Dispatching key event while focus system is invalidated."

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v2

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lk1/o;->j(Landroid/view/KeyEvent;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v2

    :cond_1
    :try_start_2
    invoke-static {v0}, Lk1/d;->f(Lk1/b0;)Lk1/b0;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "visitAncestors called on an unattached node"

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p0, :cond_7

    :try_start_3
    iget-object v6, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v6, v6, Lf1/q;->y:Z

    if-nez v6, :cond_2

    const-string v6, "visitLocalDescendants called on an unattached node"

    invoke-static {v6}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v6, p0, Lf1/q;->l:Lf1/q;

    iget v7, v6, Lf1/q;->o:I

    and-int/lit16 v7, v7, 0x2400

    if-eqz v7, :cond_5

    iget-object v6, v6, Lf1/q;->q:Lf1/q;

    move-object v7, v4

    :goto_0
    if-eqz v6, :cond_6

    iget v8, v6, Lf1/q;->n:I

    and-int/lit16 v9, v8, 0x2400

    if-eqz v9, :cond_4

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    move-object v7, v6

    :cond_4
    iget-object v6, v6, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_5
    move-object v7, v4

    :cond_6
    :goto_1
    if-nez v7, :cond_22

    :cond_7
    if-eqz p0, :cond_14

    iget-object v6, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v6, v6, Lf1/q;->y:Z

    if-nez v6, :cond_8

    invoke-static {v1}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_8
    iget-object v6, p0, Lf1/q;->l:Lf1/q;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_13

    iget-object v7, p0, Le2/g0;->R:Le2/c1;

    iget-object v7, v7, Le2/c1;->f:Lf1/q;

    iget v7, v7, Lf1/q;->o:I

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_11

    :goto_3
    if-eqz v6, :cond_11

    iget v7, v6, Lf1/q;->n:I

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_10

    move-object v8, v4

    move-object v7, v6

    :goto_4
    if-eqz v7, :cond_10

    instance-of v9, v7, Lw1/e;

    if-eqz v9, :cond_9

    goto :goto_7

    :cond_9
    iget v9, v7, Lf1/q;->n:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_f

    instance-of v9, v7, Le2/k;

    if-eqz v9, :cond_f

    move-object v9, v7

    check-cast v9, Le2/k;

    iget-object v9, v9, Le2/k;->A:Lf1/q;

    move v10, v2

    :goto_5
    if-eqz v9, :cond_e

    iget v11, v9, Lf1/q;->n:I

    and-int/lit16 v11, v11, 0x2000

    if-eqz v11, :cond_d

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v5, :cond_a

    move-object v7, v9

    goto :goto_6

    :cond_a
    if-nez v8, :cond_b

    new-instance v8, Lt0/b;

    new-array v11, v3, [Lf1/q;

    invoke-direct {v8, v11}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v8, v7}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v7, v4

    :cond_c
    invoke-virtual {v8, v9}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_d
    :goto_6
    iget-object v9, v9, Lf1/q;->q:Lf1/q;

    goto :goto_5

    :cond_e
    if-ne v10, v5, :cond_f

    goto :goto_4

    :cond_f
    invoke-static {v8}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v7

    goto :goto_4

    :cond_10
    iget-object v6, v6, Lf1/q;->p:Lf1/q;

    goto :goto_3

    :cond_11
    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_12

    iget-object v6, p0, Le2/g0;->R:Le2/c1;

    if-eqz v6, :cond_12

    iget-object v6, v6, Le2/c1;->e:Le2/b2;

    goto :goto_2

    :cond_12
    move-object v6, v4

    goto :goto_2

    :cond_13
    move-object v7, v4

    :goto_7
    check-cast v7, Lw1/e;

    if-eqz v7, :cond_14

    check-cast v7, Lf1/q;

    iget-object v7, v7, Lf1/q;->l:Lf1/q;

    goto/16 :goto_e

    :cond_14
    iget-object p0, v0, Lf1/q;->l:Lf1/q;

    iget-boolean p0, p0, Lf1/q;->y:Z

    if-nez p0, :cond_15

    invoke-static {v1}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_15
    iget-object p0, v0, Lf1/q;->l:Lf1/q;

    iget-object p0, p0, Lf1/q;->p:Lf1/q;

    invoke-static {v0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_20

    iget-object v6, v0, Le2/g0;->R:Le2/c1;

    iget-object v6, v6, Le2/c1;->f:Lf1/q;

    iget v6, v6, Lf1/q;->o:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_1e

    :goto_9
    if-eqz p0, :cond_1e

    iget v6, p0, Lf1/q;->n:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_1d

    move-object v6, p0

    move-object v7, v4

    :goto_a
    if-eqz v6, :cond_1d

    instance-of v8, v6, Lw1/e;

    if-eqz v8, :cond_16

    goto :goto_d

    :cond_16
    iget v8, v6, Lf1/q;->n:I

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_1c

    instance-of v8, v6, Le2/k;

    if-eqz v8, :cond_1c

    move-object v8, v6

    check-cast v8, Le2/k;

    iget-object v8, v8, Le2/k;->A:Lf1/q;

    move v9, v2

    :goto_b
    if-eqz v8, :cond_1b

    iget v10, v8, Lf1/q;->n:I

    and-int/lit16 v10, v10, 0x2000

    if-eqz v10, :cond_1a

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v5, :cond_17

    move-object v6, v8

    goto :goto_c

    :cond_17
    if-nez v7, :cond_18

    new-instance v7, Lt0/b;

    new-array v10, v3, [Lf1/q;

    invoke-direct {v7, v10}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_18
    if-eqz v6, :cond_19

    invoke-virtual {v7, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v6, v4

    :cond_19
    invoke-virtual {v7, v8}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_1a
    :goto_c
    iget-object v8, v8, Lf1/q;->q:Lf1/q;

    goto :goto_b

    :cond_1b
    if-ne v9, v5, :cond_1c

    goto :goto_a

    :cond_1c
    invoke-static {v7}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v6

    goto :goto_a

    :cond_1d
    iget-object p0, p0, Lf1/q;->p:Lf1/q;

    goto :goto_9

    :cond_1e
    invoke-virtual {v0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object p0, v0, Le2/g0;->R:Le2/c1;

    if-eqz p0, :cond_1f

    iget-object p0, p0, Le2/c1;->e:Le2/b2;

    goto :goto_8

    :cond_1f
    move-object p0, v4

    goto :goto_8

    :cond_20
    move-object v6, v4

    :goto_d
    check-cast v6, Lw1/e;

    if-eqz v6, :cond_21

    check-cast v6, Lf1/q;

    iget-object v7, v6, Lf1/q;->l:Lf1/q;

    goto :goto_e

    :cond_21
    move-object v7, v4

    :cond_22
    :goto_e
    if-eqz v7, :cond_45

    iget-object p0, v7, Lf1/q;->l:Lf1/q;

    iget-boolean p0, p0, Lf1/q;->y:Z

    if-nez p0, :cond_23

    invoke-static {v1}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_23
    iget-object p0, v7, Lf1/q;->l:Lf1/q;

    iget-object p0, p0, Lf1/q;->p:Lf1/q;

    invoke-static {v7}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    move-object v1, v4

    :goto_f
    if-eqz v0, :cond_2f

    iget-object v6, v0, Le2/g0;->R:Le2/c1;

    iget-object v6, v6, Le2/c1;->f:Lf1/q;

    iget v6, v6, Lf1/q;->o:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_2d

    :goto_10
    if-eqz p0, :cond_2d

    iget v6, p0, Lf1/q;->n:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_2c

    move-object v6, p0

    move-object v8, v4

    :goto_11
    if-eqz v6, :cond_2c

    instance-of v9, v6, Lw1/e;

    if-eqz v9, :cond_25

    if-nez v1, :cond_24

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_24
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_25
    iget v9, v6, Lf1/q;->n:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_2b

    instance-of v9, v6, Le2/k;

    if-eqz v9, :cond_2b

    move-object v9, v6

    check-cast v9, Le2/k;

    iget-object v9, v9, Le2/k;->A:Lf1/q;

    move v10, v2

    :goto_12
    if-eqz v9, :cond_2a

    iget v11, v9, Lf1/q;->n:I

    and-int/lit16 v11, v11, 0x2000

    if-eqz v11, :cond_29

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v5, :cond_26

    move-object v6, v9

    goto :goto_13

    :cond_26
    if-nez v8, :cond_27

    new-instance v8, Lt0/b;

    new-array v11, v3, [Lf1/q;

    invoke-direct {v8, v11}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_27
    if-eqz v6, :cond_28

    invoke-virtual {v8, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v6, v4

    :cond_28
    invoke-virtual {v8, v9}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_29
    :goto_13
    iget-object v9, v9, Lf1/q;->q:Lf1/q;

    goto :goto_12

    :cond_2a
    if-ne v10, v5, :cond_2b

    goto :goto_11

    :cond_2b
    :goto_14
    invoke-static {v8}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v6

    goto :goto_11

    :cond_2c
    iget-object p0, p0, Lf1/q;->p:Lf1/q;

    goto :goto_10

    :cond_2d
    invoke-virtual {v0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object p0, v0, Le2/g0;->R:Le2/c1;

    if-eqz p0, :cond_2e

    iget-object p0, p0, Le2/c1;->e:Le2/b2;

    goto :goto_f

    :cond_2e
    move-object p0, v4

    goto :goto_f

    :cond_2f
    if-eqz v1, :cond_32

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_32

    :goto_15
    add-int/lit8 v0, p0, -0x1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw1/e;

    invoke-interface {p0, p1}, Lw1/e;->f(Landroid/view/KeyEvent;)Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_30

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v5

    :cond_30
    if-gez v0, :cond_31

    goto :goto_16

    :cond_31
    move p0, v0

    goto :goto_15

    :cond_32
    :goto_16
    :try_start_4
    iget-object p0, v7, Lf1/q;->l:Lf1/q;

    move-object v0, v4

    :goto_17
    if-eqz p0, :cond_3a

    instance-of v6, p0, Lw1/e;

    if-eqz v6, :cond_33

    check-cast p0, Lw1/e;

    invoke-interface {p0, p1}, Lw1/e;->f(Landroid/view/KeyEvent;)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p0, :cond_39

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v5

    :cond_33
    :try_start_5
    iget v6, p0, Lf1/q;->n:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_39

    instance-of v6, p0, Le2/k;

    if-eqz v6, :cond_39

    move-object v6, p0

    check-cast v6, Le2/k;

    iget-object v6, v6, Le2/k;->A:Lf1/q;

    move v8, v2

    :goto_18
    if-eqz v6, :cond_38

    iget v9, v6, Lf1/q;->n:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_37

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v5, :cond_34

    move-object p0, v6

    goto :goto_19

    :cond_34
    if-nez v0, :cond_35

    new-instance v0, Lt0/b;

    new-array v9, v3, [Lf1/q;

    invoke-direct {v0, v9}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_35
    if-eqz p0, :cond_36

    invoke-virtual {v0, p0}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object p0, v4

    :cond_36
    invoke-virtual {v0, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_37
    :goto_19
    iget-object v6, v6, Lf1/q;->q:Lf1/q;

    goto :goto_18

    :cond_38
    if-ne v8, v5, :cond_39

    goto :goto_17

    :cond_39
    invoke-static {v0}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object p0

    goto :goto_17

    :cond_3a
    invoke-interface {p2}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p0, :cond_3b

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v5

    :cond_3b
    :try_start_6
    iget-object p0, v7, Lf1/q;->l:Lf1/q;

    move-object p2, v4

    :goto_1a
    if-eqz p0, :cond_43

    instance-of v0, p0, Lw1/e;

    if-eqz v0, :cond_3c

    check-cast p0, Lw1/e;

    invoke-interface {p0, p1}, Lw1/e;->A(Landroid/view/KeyEvent;)Z

    move-result p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p0, :cond_42

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v5

    :cond_3c
    :try_start_7
    iget v0, p0, Lf1/q;->n:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_42

    instance-of v0, p0, Le2/k;

    if-eqz v0, :cond_42

    move-object v0, p0

    check-cast v0, Le2/k;

    iget-object v0, v0, Le2/k;->A:Lf1/q;

    move v6, v2

    :goto_1b
    if-eqz v0, :cond_41

    iget v7, v0, Lf1/q;->n:I

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_40

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v5, :cond_3d

    move-object p0, v0

    goto :goto_1c

    :cond_3d
    if-nez p2, :cond_3e

    new-instance p2, Lt0/b;

    new-array v7, v3, [Lf1/q;

    invoke-direct {p2, v7}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_3e
    if-eqz p0, :cond_3f

    invoke-virtual {p2, p0}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object p0, v4

    :cond_3f
    invoke-virtual {p2, v0}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_40
    :goto_1c
    iget-object v0, v0, Lf1/q;->q:Lf1/q;

    goto :goto_1b

    :cond_41
    if-ne v6, v5, :cond_42

    goto :goto_1a

    :cond_42
    invoke-static {p2}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object p0

    goto :goto_1a

    :cond_43
    if-eqz v1, :cond_45

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p0

    move p2, v2

    :goto_1d
    if-ge p2, p0, :cond_45

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/e;

    invoke-interface {v0, p1}, Lw1/e;->A(Landroid/view/KeyEvent;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_44

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v5

    :cond_44
    add-int/lit8 p2, p2, 0x1

    goto :goto_1d

    :cond_45
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v2

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final e(ILl1/c;Li9/c;)Ljava/lang/Boolean;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lk1/o;->c:Lk1/b0;

    invoke-static {v4}, Lk1/d;->f(Lk1/b0;)Lk1/b0;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x2

    iget-object v13, v0, Lk1/o;->b:Lf2/y;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x1

    if-eqz v5, :cond_25

    invoke-virtual {v13}, Lf2/y;->getLayoutDirection()Lb3/m;

    move-result-object v18

    invoke-virtual {v5}, Lk1/b0;->O0()Lk1/s;

    move-result-object v14

    iget-object v6, v14, Lk1/s;->h:Lk1/u;

    iget-object v12, v14, Lk1/s;->i:Lk1/u;

    if-ne v1, v15, :cond_0

    iget-object v6, v14, Lk1/s;->b:Lk1/u;

    goto/16 :goto_4

    :cond_0
    if-ne v1, v11, :cond_1

    iget-object v6, v14, Lk1/s;->c:Lk1/u;

    goto/16 :goto_4

    :cond_1
    if-ne v1, v10, :cond_2

    iget-object v6, v14, Lk1/s;->d:Lk1/u;

    goto/16 :goto_4

    :cond_2
    if-ne v1, v9, :cond_3

    iget-object v6, v14, Lk1/s;->e:Lk1/u;

    goto/16 :goto_4

    :cond_3
    if-ne v1, v8, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eqz v9, :cond_5

    if-ne v9, v15, :cond_4

    move-object v6, v12

    goto :goto_0

    :cond_4
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    :goto_0
    sget-object v9, Lk1/u;->b:Lk1/u;

    if-ne v6, v9, :cond_6

    move-object/from16 v6, v17

    :cond_6
    if-nez v6, :cond_10

    iget-object v6, v14, Lk1/s;->f:Lk1/u;

    goto :goto_4

    :cond_7
    if-ne v1, v7, :cond_b

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eqz v9, :cond_9

    if-ne v9, v15, :cond_8

    goto :goto_1

    :cond_8
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    move-object v6, v12

    :goto_1
    sget-object v9, Lk1/u;->b:Lk1/u;

    if-ne v6, v9, :cond_a

    move-object/from16 v6, v17

    :cond_a
    if-nez v6, :cond_10

    iget-object v6, v14, Lk1/s;->g:Lk1/u;

    goto :goto_4

    :cond_b
    const/4 v6, 0x7

    if-ne v1, v6, :cond_c

    goto :goto_2

    :cond_c
    const/16 v9, 0x8

    if-ne v1, v9, :cond_24

    :goto_2
    new-instance v9, Lk1/a;

    invoke-direct {v9, v1}, Lk1/a;-><init>(I)V

    invoke-static {v5}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v12

    check-cast v12, Lf2/y;

    invoke-virtual {v12}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v12

    check-cast v12, Lk1/o;

    invoke-virtual {v12}, Lk1/o;->f()Lk1/b0;

    move-result-object v10

    if-ne v1, v6, :cond_d

    iget-object v6, v14, Lk1/s;->j:Lj9/o;

    invoke-interface {v6, v9}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    iget-object v6, v14, Lk1/s;->k:Lj9/o;

    invoke-interface {v6, v9}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-boolean v6, v9, Lk1/a;->b:Z

    if-eqz v6, :cond_e

    sget-object v6, Lk1/u;->c:Lk1/u;

    goto :goto_4

    :cond_e
    invoke-virtual {v12}, Lk1/o;->f()Lk1/b0;

    move-result-object v6

    if-eq v10, v6, :cond_f

    sget-object v6, Lk1/u;->d:Lk1/u;

    goto :goto_4

    :cond_f
    sget-object v6, Lk1/u;->b:Lk1/u;

    :cond_10
    :goto_4
    sget-object v9, Lk1/u;->c:Lk1/u;

    invoke-static {v6, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    goto/16 :goto_11

    :cond_11
    sget-object v10, Lk1/u;->d:Lk1/u;

    invoke-static {v6, v10}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-static {v4}, Lk1/d;->f(Lk1/b0;)Lk1/b0;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-interface {v3, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_12
    sget-object v10, Lk1/u;->b:Lk1/u;

    invoke-static {v6, v10}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_26

    const-string v0, "\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n"

    if-eq v6, v10, :cond_23

    if-eq v6, v9, :cond_22

    iget-object v0, v6, Lk1/u;->a:Lt0/b;

    iget v1, v0, Lt0/b;->n:I

    if-nez v1, :cond_13

    const-string v0, "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_13
    iget-object v0, v0, Lt0/b;->l:[Ljava/lang/Object;

    move/from16 v2, v16

    move v4, v2

    :goto_5
    if-ge v2, v1, :cond_21

    aget-object v5, v0, v2

    check-cast v5, Lk1/w;

    check-cast v5, Lf1/q;

    iget-object v6, v5, Lf1/q;->l:Lf1/q;

    iget-boolean v6, v6, Lf1/q;->y:Z

    if-nez v6, :cond_14

    const-string v6, "visitChildren called on an unattached node"

    invoke-static {v6}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_14
    new-instance v6, Lt0/b;

    const/16 v7, 0x10

    new-array v8, v7, [Lf1/q;

    invoke-direct {v6, v8}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iget-object v5, v5, Lf1/q;->l:Lf1/q;

    iget-object v7, v5, Lf1/q;->q:Lf1/q;

    if-nez v7, :cond_15

    invoke-static {v6, v5}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_6

    :cond_15
    invoke-virtual {v6, v7}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_16
    :goto_6
    iget v5, v6, Lt0/b;->n:I

    if-eqz v5, :cond_20

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v6, v5}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf1/q;

    iget v7, v5, Lf1/q;->o:I

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_17

    invoke-static {v6, v5}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_6

    :cond_17
    :goto_7
    if-eqz v5, :cond_16

    iget v7, v5, Lf1/q;->n:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_1f

    move-object/from16 v7, v17

    :goto_8
    if-eqz v5, :cond_16

    instance-of v8, v5, Lk1/b0;

    if-eqz v8, :cond_18

    check-cast v5, Lk1/b0;

    invoke-interface {v3, v5}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1e

    move v4, v15

    goto :goto_b

    :cond_18
    iget v8, v5, Lf1/q;->n:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_1e

    instance-of v8, v5, Le2/k;

    if-eqz v8, :cond_1e

    move-object v8, v5

    check-cast v8, Le2/k;

    iget-object v8, v8, Le2/k;->A:Lf1/q;

    move/from16 v9, v16

    :goto_9
    if-eqz v8, :cond_1d

    iget v10, v8, Lf1/q;->n:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_1c

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v15, :cond_19

    move-object v5, v8

    goto :goto_a

    :cond_19
    if-nez v7, :cond_1a

    new-instance v7, Lt0/b;

    const/16 v10, 0x10

    new-array v11, v10, [Lf1/q;

    invoke-direct {v7, v11}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_1a
    if-eqz v5, :cond_1b

    invoke-virtual {v7, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object/from16 v5, v17

    :cond_1b
    invoke-virtual {v7, v8}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_1c
    :goto_a
    iget-object v8, v8, Lf1/q;->q:Lf1/q;

    goto :goto_9

    :cond_1d
    if-ne v9, v15, :cond_1e

    goto :goto_8

    :cond_1e
    invoke-static {v7}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v5

    goto :goto_8

    :cond_1f
    iget-object v5, v5, Lf1/q;->q:Lf1/q;

    goto :goto_7

    :cond_20
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_21
    move/from16 v16, v4

    :goto_c
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid FocusDirection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    move-object/from16 v5, v17

    :cond_26
    invoke-virtual {v13}, Lf2/y;->getLayoutDirection()Lb3/m;

    move-result-object v6

    new-instance v9, Le2/i0;

    invoke-direct {v9, v5, v0, v3}, Le2/i0;-><init>(Lk1/b0;Lk1/o;Li9/c;)V

    if-ne v1, v15, :cond_27

    goto :goto_d

    :cond_27
    if-ne v1, v11, :cond_2a

    :goto_d
    if-ne v1, v15, :cond_28

    invoke-static {v4, v9}, Lk1/d;->k(Lk1/b0;Le2/i0;)Z

    move-result v0

    goto :goto_e

    :cond_28
    if-ne v1, v11, :cond_29

    invoke-static {v4, v9}, Lk1/d;->a(Lk1/b0;Le2/i0;)Z

    move-result v0

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This function should only be used for 1-D focus search"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    if-ne v1, v8, :cond_2b

    goto :goto_f

    :cond_2b
    if-ne v1, v7, :cond_2c

    goto :goto_f

    :cond_2c
    const/4 v0, 0x5

    if-ne v1, v0, :cond_2d

    goto :goto_f

    :cond_2d
    const/4 v0, 0x6

    if-ne v1, v0, :cond_2e

    :goto_f
    invoke-static {v1, v9, v4, v2}, Lk1/d;->C(ILe2/i0;Lk1/b0;Ll1/c;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2e
    const/4 v0, 0x7

    if-ne v1, v0, :cond_32

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_30

    if-ne v0, v15, :cond_2f

    move v7, v8

    goto :goto_10

    :cond_2f
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_30
    :goto_10
    invoke-static {v4}, Lk1/d;->f(Lk1/b0;)Lk1/b0;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {v7, v9, v0, v2}, Lk1/d;->C(ILe2/i0;Lk1/b0;Ll1/c;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_31
    :goto_11
    return-object v17

    :cond_32
    const/16 v0, 0x8

    if-ne v1, v0, :cond_42

    invoke-static {v4}, Lk1/d;->f(Lk1/b0;)Lk1/b0;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v1, v1, Lf1/q;->y:Z

    if-nez v1, :cond_33

    const-string v1, "visitAncestors called on an unattached node"

    invoke-static {v1}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_33
    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    invoke-static {v0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_3f

    iget-object v2, v0, Le2/g0;->R:Le2/c1;

    iget-object v2, v2, Le2/c1;->f:Lf1/q;

    iget v2, v2, Lf1/q;->o:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_3d

    :goto_13
    if-eqz v1, :cond_3d

    iget v2, v1, Lf1/q;->n:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_3c

    move-object v2, v1

    move-object/from16 v3, v17

    :goto_14
    if-eqz v2, :cond_3c

    instance-of v5, v2, Lk1/b0;

    if-eqz v5, :cond_35

    check-cast v2, Lk1/b0;

    invoke-virtual {v2}, Lk1/b0;->O0()Lk1/s;

    move-result-object v5

    iget-boolean v5, v5, Lk1/s;->a:Z

    if-eqz v5, :cond_34

    move-object v15, v2

    goto/16 :goto_19

    :cond_34
    const/16 v7, 0x10

    goto :goto_18

    :cond_35
    iget v5, v2, Lf1/q;->n:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_34

    instance-of v5, v2, Le2/k;

    if-eqz v5, :cond_34

    move-object v5, v2

    check-cast v5, Le2/k;

    iget-object v5, v5, Le2/k;->A:Lf1/q;

    move/from16 v6, v16

    :goto_15
    if-eqz v5, :cond_3a

    iget v7, v5, Lf1/q;->n:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_36

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v15, :cond_37

    move-object v2, v5

    :cond_36
    const/16 v7, 0x10

    goto :goto_17

    :cond_37
    if-nez v3, :cond_38

    new-instance v3, Lt0/b;

    const/16 v7, 0x10

    new-array v8, v7, [Lf1/q;

    invoke-direct {v3, v8}, Lt0/b;-><init>([Ljava/lang/Object;)V

    goto :goto_16

    :cond_38
    const/16 v7, 0x10

    :goto_16
    if-eqz v2, :cond_39

    invoke-virtual {v3, v2}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object/from16 v2, v17

    :cond_39
    invoke-virtual {v3, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    :goto_17
    iget-object v5, v5, Lf1/q;->q:Lf1/q;

    goto :goto_15

    :cond_3a
    const/16 v7, 0x10

    if-ne v6, v15, :cond_3b

    goto :goto_14

    :cond_3b
    :goto_18
    invoke-static {v3}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v2

    goto :goto_14

    :cond_3c
    const/16 v7, 0x10

    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    goto :goto_13

    :cond_3d
    const/16 v7, 0x10

    invoke-virtual {v0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v1, v0, Le2/g0;->R:Le2/c1;

    if-eqz v1, :cond_3e

    iget-object v1, v1, Le2/c1;->e:Le2/b2;

    goto/16 :goto_12

    :cond_3e
    move-object/from16 v1, v17

    goto/16 :goto_12

    :cond_3f
    move-object/from16 v15, v17

    :goto_19
    if-eqz v15, :cond_41

    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_1a

    :cond_40
    invoke-virtual {v9, v15}, Le2/i0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    :cond_41
    :goto_1a
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Focus search invoked with invalid FocusDirection "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lk1/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Lk1/b0;
    .locals 2

    iget-object p0, p0, Lk1/o;->h:Lk1/b0;

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lf1/q;->y:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final g(IZ)Z
    .locals 5

    invoke-virtual {p0}, Lk1/o;->f()Lk1/b0;

    move-result-object v0

    iget-object v1, p0, Lk1/o;->a:Lf2/y;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lk1/b0;->z:Z

    if-ne v0, v2, :cond_0

    invoke-virtual {v1, p1}, Lf2/y;->w(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Lj9/y;

    invoke-direct {v0}, Lj9/y;-><init>()V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v0, Lj9/y;->m:Ljava/lang/Object;

    invoke-virtual {p0}, Lk1/o;->f()Lk1/b0;

    move-result-object v3

    invoke-virtual {v1}, Lf2/y;->getEmbeddedViewFocusRect()Ll1/c;

    move-result-object v1

    new-instance v4, Lk1/n;

    invoke-direct {v4, v0, p1}, Lk1/n;-><init>(Lj9/y;I)V

    invoke-virtual {p0, p1, v1, v4}, Lk1/o;->e(ILl1/c;Li9/c;)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lk1/o;->f()Lk1/b0;

    move-result-object v4

    if-eq v3, v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    if-eqz v1, :cond_6

    iget-object v4, v0, Lj9/y;->m:Ljava/lang/Object;

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lj9/y;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    :goto_0
    if-eqz p2, :cond_6

    invoke-virtual {p0, p1, v3, v3}, Lk1/o;->b(IZZ)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Lf2/u;

    const/4 v0, 0x3

    invoke-direct {p2, p1, v0}, Lf2/u;-><init>(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lk1/o;->e(ILl1/c;Li9/c;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_5
    move p0, v3

    :goto_1
    if-eqz p0, :cond_6

    :goto_2
    return v2

    :cond_6
    :goto_3
    return v3
.end method

.method public final h(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lk1/o;->b(IZZ)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    new-instance v1, Lf2/u;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lf2/u;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lk1/o;->e(ILl1/c;Li9/c;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lk1/o;->c()V

    :cond_2
    return v0
.end method

.method public final i(Lk1/b0;)V
    .locals 4

    iget-object v0, p0, Lk1/o;->h:Lk1/b0;

    iput-object p1, p0, Lk1/o;->h:Lk1/b0;

    iget-object p0, p0, Lk1/o;->g:Lk/h0;

    iget-object v1, p0, Lk/h0;->a:[Ljava/lang/Object;

    iget p0, p0, Lk/h0;->b:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget-object v3, v1, v2

    check-cast v3, Lk1/j;

    invoke-interface {v3, v0, p1}, Lk1/j;->a(Lk1/b0;Lk1/b0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j(Landroid/view/KeyEvent;)Z
    .locals 40

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lw1/c;->b(Landroid/view/KeyEvent;)J

    move-result-wide v1

    invoke-static/range {p1 .. p1}, Lw1/c;->c(Landroid/view/KeyEvent;)I

    move-result v3

    const/4 v4, 0x2

    const v10, -0x3361d2af    # -8.293031E7f

    const-wide/16 v15, 0x0

    const-wide v17, 0x101010101010101L

    const-wide/16 v19, 0xfe

    const/16 p1, 0x6

    const/16 v5, 0x8

    const/16 v21, 0x0

    const-wide/16 v22, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ne v3, v4, :cond_10

    iget-object v3, v0, Lk1/o;->f:Lk/c0;

    if-nez v3, :cond_0

    new-instance v3, Lk/c0;

    invoke-direct {v3, v6}, Lk/c0;-><init>(I)V

    iput-object v3, v0, Lk1/o;->f:Lk/c0;

    :cond_0
    move-object v4, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/2addr v0, v10

    shl-int/lit8 v3, v0, 0x10

    xor-int/2addr v0, v3

    ushr-int/lit8 v3, v0, 0x7

    and-int/lit8 v0, v0, 0x7f

    move/from16 v24, v6

    iget v6, v4, Lk/c0;->c:I

    and-int v25, v3, v6

    move/from16 v26, v21

    const/16 v27, 0x3f

    :goto_0
    iget-object v8, v4, Lk/c0;->a:[J

    shr-int/lit8 v28, v25, 0x3

    and-int/lit8 v29, v25, 0x7

    const/16 v30, 0x7

    shl-int/lit8 v9, v29, 0x3

    aget-wide v31, v8, v28

    ushr-long v31, v31, v9

    add-int/lit8 v28, v28, 0x1

    aget-wide v28, v8, v28

    rsub-int/lit8 v8, v9, 0x40

    shl-long v28, v28, v8

    int-to-long v8, v9

    neg-long v8, v8

    shr-long v8, v8, v27

    and-long v8, v28, v8

    or-long v8, v31, v8

    move/from16 v28, v10

    const-wide/16 v31, 0xff

    int-to-long v10, v0

    mul-long v33, v10, v17

    const-wide v35, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    xor-long v13, v8, v33

    sub-long v33, v13, v17

    not-long v12, v13

    and-long v12, v33, v12

    and-long v12, v12, v35

    :goto_1
    cmp-long v14, v12, v15

    if-eqz v14, :cond_2

    invoke-static {v12, v13}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v14

    shr-int/lit8 v14, v14, 0x3

    add-int v14, v25, v14

    and-int/2addr v14, v6

    move-wide/from16 v33, v15

    iget-object v15, v4, Lk/c0;->b:[J

    aget-wide v15, v15, v14

    cmp-long v15, v15, v1

    if-nez v15, :cond_1

    move/from16 v37, v7

    goto/16 :goto_b

    :cond_1
    sub-long v14, v12, v22

    and-long/2addr v12, v14

    move-wide/from16 v15, v33

    goto :goto_1

    :cond_2
    move-wide/from16 v33, v15

    not-long v12, v8

    shl-long v12, v12, p1

    and-long/2addr v8, v12

    and-long v8, v8, v35

    cmp-long v8, v8, v33

    if-eqz v8, :cond_f

    invoke-virtual {v4, v3}, Lk/c0;->b(I)I

    move-result v0

    iget v6, v4, Lk/c0;->e:I

    if-nez v6, :cond_3

    iget-object v6, v4, Lk/c0;->a:[J

    shr-int/lit8 v12, v0, 0x3

    aget-wide v12, v6, v12

    and-int/lit8 v6, v0, 0x7

    shl-int/lit8 v6, v6, 0x3

    shr-long/2addr v12, v6

    and-long v12, v12, v31

    cmp-long v6, v12, v19

    if-nez v6, :cond_4

    :cond_3
    move/from16 v37, v7

    const-wide/16 p0, 0x80

    goto/16 :goto_a

    :cond_4
    iget v0, v4, Lk/c0;->c:I

    if-le v0, v5, :cond_b

    iget v6, v4, Lk/c0;->d:I

    int-to-long v12, v6

    const-wide/16 v14, 0x20

    mul-long/2addr v12, v14

    int-to-long v14, v0

    const-wide/16 v16, 0x19

    mul-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gtz v0, :cond_b

    iget-object v0, v4, Lk/c0;->a:[J

    iget v6, v4, Lk/c0;->c:I

    iget-object v12, v4, Lk/c0;->b:[J

    add-int/lit8 v13, v6, 0x7

    shr-int/lit8 v13, v13, 0x3

    move/from16 v14, v21

    :goto_2
    if-ge v14, v13, :cond_5

    aget-wide v15, v0, v14

    const-wide/16 p0, 0x80

    and-long v8, v15, v35

    move v15, v5

    move/from16 v16, v6

    not-long v5, v8

    ushr-long v8, v8, v30

    add-long/2addr v5, v8

    const-wide v8, -0x101010101010102L

    and-long/2addr v5, v8

    aput-wide v5, v0, v14

    add-int/lit8 v14, v14, 0x1

    move v5, v15

    move/from16 v6, v16

    goto :goto_2

    :cond_5
    move v15, v5

    move/from16 v16, v6

    const-wide/16 p0, 0x80

    invoke-static {v0}, Lu8/l;->v0([J)I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    aget-wide v8, v0, v6

    const-wide v13, 0xffffffffffffffL

    and-long/2addr v8, v13

    const-wide/high16 v17, -0x100000000000000L

    or-long v8, v8, v17

    aput-wide v8, v0, v6

    aget-wide v8, v0, v21

    aput-wide v8, v0, v5

    move/from16 v5, v16

    move/from16 v6, v21

    :goto_3
    if-eq v6, v5, :cond_a

    shr-int/lit8 v8, v6, 0x3

    aget-wide v16, v0, v8

    and-int/lit8 v9, v6, 0x7

    shl-int/lit8 v9, v9, 0x3

    shr-long v16, v16, v9

    and-long v16, v16, v31

    cmp-long v18, v16, p0

    if-nez v18, :cond_6

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    cmp-long v16, v16, v19

    if-eqz v16, :cond_7

    goto :goto_4

    :cond_7
    aget-wide v16, v12, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->hashCode(J)I

    move-result v16

    mul-int v16, v16, v28

    shl-int/lit8 v17, v16, 0x10

    xor-int v16, v16, v17

    move-wide/from16 v17, v13

    ushr-int/lit8 v13, v16, 0x7

    invoke-virtual {v4, v13}, Lk/c0;->b(I)I

    move-result v14

    and-int/2addr v13, v5

    sub-int v22, v14, v13

    and-int v22, v22, v5

    move/from16 v29, v15

    div-int/lit8 v15, v22, 0x8

    sub-int v13, v6, v13

    and-int/2addr v13, v5

    div-int/lit8 v13, v13, 0x8

    const-wide/high16 v22, -0x8000000000000000L

    if-ne v15, v13, :cond_8

    and-int/lit8 v13, v16, 0x7f

    int-to-long v13, v13

    aget-wide v15, v0, v8

    move/from16 v37, v7

    move/from16 v25, v8

    shl-long v7, v31, v9

    not-long v7, v7

    and-long/2addr v7, v15

    shl-long/2addr v13, v9

    or-long/2addr v7, v13

    aput-wide v7, v0, v25

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-wide v8, v0, v21

    and-long v8, v8, v17

    or-long v8, v8, v22

    aput-wide v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    :goto_5
    move-wide/from16 v13, v17

    move/from16 v15, v29

    move/from16 v7, v37

    goto :goto_3

    :cond_8
    move/from16 v37, v7

    move/from16 v25, v8

    shr-int/lit8 v7, v14, 0x3

    aget-wide v26, v0, v7

    and-int/lit8 v8, v14, 0x7

    shl-int/lit8 v8, v8, 0x3

    shr-long v35, v26, v8

    and-long v35, v35, v31

    cmp-long v13, v35, p0

    if-nez v13, :cond_9

    and-int/lit8 v13, v16, 0x7f

    move v15, v5

    move/from16 v35, v6

    int-to-long v5, v13

    move-wide/from16 v38, v5

    shl-long v5, v31, v8

    not-long v5, v5

    and-long v5, v26, v5

    shl-long v26, v38, v8

    or-long v5, v5, v26

    aput-wide v5, v0, v7

    aget-wide v5, v0, v25

    shl-long v7, v31, v9

    not-long v7, v7

    and-long/2addr v5, v7

    shl-long v7, p0, v9

    or-long/2addr v5, v7

    aput-wide v5, v0, v25

    aget-wide v5, v12, v35

    aput-wide v5, v12, v14

    aput-wide v33, v12, v35

    move/from16 v6, v35

    goto :goto_6

    :cond_9
    move v15, v5

    move/from16 v35, v6

    and-int/lit8 v5, v16, 0x7f

    int-to-long v5, v5

    move-wide/from16 v38, v5

    shl-long v5, v31, v8

    not-long v5, v5

    and-long v5, v26, v5

    shl-long v8, v38, v8

    or-long/2addr v5, v8

    aput-wide v5, v0, v7

    aget-wide v5, v12, v14

    aget-wide v7, v12, v35

    aput-wide v7, v12, v14

    aput-wide v5, v12, v35

    add-int/lit8 v6, v35, -0x1

    :goto_6
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-wide v7, v0, v21

    and-long v7, v7, v17

    or-long v7, v7, v22

    aput-wide v7, v0, v5

    add-int/lit8 v6, v6, 0x1

    move v5, v15

    goto :goto_5

    :cond_a
    move/from16 v37, v7

    iget v0, v4, Lk/c0;->c:I

    invoke-static {v0}, Lk/t0;->a(I)I

    move-result v0

    iget v5, v4, Lk/c0;->d:I

    sub-int/2addr v0, v5

    iput v0, v4, Lk/c0;->e:I

    goto/16 :goto_9

    :cond_b
    move/from16 v37, v7

    const-wide/16 p0, 0x80

    iget v0, v4, Lk/c0;->c:I

    invoke-static {v0}, Lk/t0;->b(I)I

    move-result v0

    iget-object v5, v4, Lk/c0;->a:[J

    iget-object v6, v4, Lk/c0;->b:[J

    iget v7, v4, Lk/c0;->c:I

    invoke-virtual {v4, v0}, Lk/c0;->c(I)V

    iget-object v0, v4, Lk/c0;->a:[J

    iget-object v8, v4, Lk/c0;->b:[J

    iget v9, v4, Lk/c0;->c:I

    move/from16 v12, v21

    :goto_7
    if-ge v12, v7, :cond_d

    shr-int/lit8 v13, v12, 0x3

    aget-wide v13, v5, v13

    and-int/lit8 v15, v12, 0x7

    shl-int/lit8 v15, v15, 0x3

    shr-long/2addr v13, v15

    and-long v13, v13, v31

    cmp-long v13, v13, p0

    if-gez v13, :cond_c

    aget-wide v13, v6, v12

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v15

    mul-int v15, v15, v28

    shl-int/lit8 v16, v15, 0x10

    xor-int v15, v15, v16

    move-object/from16 v16, v0

    ushr-int/lit8 v0, v15, 0x7

    invoke-virtual {v4, v0}, Lk/c0;->b(I)I

    move-result v0

    and-int/lit8 v15, v15, 0x7f

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    int-to-long v5, v15

    shr-int/lit8 v15, v0, 0x3

    and-int/lit8 v19, v0, 0x7

    shl-int/lit8 v19, v19, 0x3

    aget-wide v22, v16, v15

    move-wide/from16 v25, v5

    shl-long v5, v31, v19

    not-long v5, v5

    and-long v5, v22, v5

    shl-long v19, v25, v19

    or-long v5, v5, v19

    aput-wide v5, v16, v15

    add-int/lit8 v15, v0, -0x7

    and-int/2addr v15, v9

    and-int/lit8 v19, v9, 0x7

    add-int v15, v15, v19

    shr-int/lit8 v15, v15, 0x3

    aput-wide v5, v16, v15

    aput-wide v13, v8, v0

    goto :goto_8

    :cond_c
    move-object/from16 v16, v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    :goto_8
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    goto :goto_7

    :cond_d
    :goto_9
    invoke-virtual {v4, v3}, Lk/c0;->b(I)I

    move-result v0

    :goto_a
    move v14, v0

    iget v0, v4, Lk/c0;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lk/c0;->d:I

    iget v0, v4, Lk/c0;->e:I

    iget-object v3, v4, Lk/c0;->a:[J

    shr-int/lit8 v5, v14, 0x3

    aget-wide v6, v3, v5

    and-int/lit8 v8, v14, 0x7

    shl-int/lit8 v8, v8, 0x3

    shr-long v12, v6, v8

    and-long v12, v12, v31

    cmp-long v9, v12, p0

    if-nez v9, :cond_e

    move/from16 v21, v37

    :cond_e
    sub-int v0, v0, v21

    iput v0, v4, Lk/c0;->e:I

    iget v0, v4, Lk/c0;->c:I

    shl-long v12, v31, v8

    not-long v12, v12

    and-long/2addr v6, v12

    shl-long v8, v10, v8

    or-long/2addr v6, v8

    aput-wide v6, v3, v5

    add-int/lit8 v5, v14, -0x7

    and-int/2addr v5, v0

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v5, v0

    shr-int/lit8 v0, v5, 0x3

    aput-wide v6, v3, v0

    :goto_b
    iget-object v0, v4, Lk/c0;->b:[J

    aput-wide v1, v0, v14

    return v37

    :cond_f
    move/from16 v29, v5

    move/from16 v37, v7

    add-int/lit8 v26, v26, 0x8

    add-int v25, v25, v26

    and-int v25, v25, v6

    move/from16 v10, v28

    move-wide/from16 v15, v33

    goto/16 :goto_0

    :cond_10
    move/from16 v29, v5

    move/from16 v24, v6

    move v8, v7

    move/from16 v28, v10

    move-wide/from16 v33, v15

    const/16 v27, 0x3f

    const/16 v30, 0x7

    const-wide/16 v31, 0xff

    const-wide v35, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-ne v3, v8, :cond_16

    iget-object v3, v0, Lk1/o;->f:Lk/c0;

    if-eqz v3, :cond_15

    invoke-virtual {v3, v1, v2}, Lk/c0;->a(J)Z

    move-result v3

    if-ne v3, v8, :cond_15

    iget-object v0, v0, Lk1/o;->f:Lk/c0;

    if-eqz v0, :cond_13

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    mul-int v3, v3, v28

    shl-int/lit8 v4, v3, 0x10

    xor-int/2addr v3, v4

    and-int/lit8 v4, v3, 0x7f

    iget v5, v0, Lk/c0;->c:I

    ushr-int/lit8 v3, v3, 0x7

    :goto_c
    and-int/2addr v3, v5

    iget-object v6, v0, Lk/c0;->a:[J

    shr-int/lit8 v7, v3, 0x3

    and-int/lit8 v8, v3, 0x7

    shl-int/lit8 v8, v8, 0x3

    aget-wide v9, v6, v7

    ushr-long/2addr v9, v8

    const/16 v37, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-wide v6, v6, v7

    rsub-int/lit8 v11, v8, 0x40

    shl-long/2addr v6, v11

    int-to-long v11, v8

    neg-long v11, v11

    shr-long v11, v11, v27

    and-long/2addr v6, v11

    or-long/2addr v6, v9

    int-to-long v8, v4

    mul-long v8, v8, v17

    xor-long/2addr v8, v6

    sub-long v10, v8, v17

    not-long v8, v8

    and-long/2addr v8, v10

    and-long v8, v8, v35

    :goto_d
    cmp-long v10, v8, v33

    if-eqz v10, :cond_12

    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    shr-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v3

    and-int/2addr v10, v5

    iget-object v11, v0, Lk/c0;->b:[J

    aget-wide v11, v11, v10

    cmp-long v11, v11, v1

    if-nez v11, :cond_11

    goto :goto_e

    :cond_11
    sub-long v10, v8, v22

    and-long/2addr v8, v10

    goto :goto_d

    :cond_12
    not-long v8, v6

    shl-long v8, v8, p1

    and-long/2addr v6, v8

    and-long v6, v6, v35

    cmp-long v6, v6, v33

    if-eqz v6, :cond_14

    const/4 v10, -0x1

    :goto_e
    if-ltz v10, :cond_13

    iget v1, v0, Lk/c0;->d:I

    const/16 v37, 0x1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk/c0;->d:I

    iget-object v1, v0, Lk/c0;->a:[J

    iget v0, v0, Lk/c0;->c:I

    shr-int/lit8 v2, v10, 0x3

    and-int/lit8 v3, v10, 0x7

    shl-int/lit8 v3, v3, 0x3

    aget-wide v4, v1, v2

    shl-long v6, v31, v3

    not-long v6, v6

    and-long/2addr v4, v6

    shl-long v6, v19, v3

    or-long v3, v4, v6

    aput-wide v3, v1, v2

    add-int/lit8 v10, v10, -0x7

    and-int v2, v10, v0

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v2, v0

    shr-int/lit8 v0, v2, 0x3

    aput-wide v3, v1, v0

    const/16 v37, 0x1

    return v37

    :cond_13
    const/16 v37, 0x1

    goto :goto_f

    :cond_14
    const/16 v37, 0x1

    add-int/lit8 v21, v21, 0x8

    add-int v3, v3, v21

    goto/16 :goto_c

    :cond_15
    return v21

    :cond_16
    move/from16 v37, v8

    :goto_f
    return v37
.end method
