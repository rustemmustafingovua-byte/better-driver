.class public final Landroidx/fragment/app/r;
.super Landroidx/fragment/app/r1;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/ArrayList;

.field public final d:Landroidx/fragment/app/s1;

.field public final e:Landroidx/fragment/app/s1;

.field public final f:Landroidx/fragment/app/n1;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public final j:Lk/e;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;

.field public final m:Lk/e;

.field public final n:Lk/e;

.field public final o:Z

.field public final p:Lf8/i3;

.field public q:Ljava/lang/Object;

.field public r:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroidx/fragment/app/s1;Landroidx/fragment/app/s1;Landroidx/fragment/app/n1;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;Lk/e;Ljava/util/ArrayList;Ljava/util/ArrayList;Lk/e;Lk/e;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/r;->c:Ljava/util/ArrayList;

    iput-object p2, p0, Landroidx/fragment/app/r;->d:Landroidx/fragment/app/s1;

    iput-object p3, p0, Landroidx/fragment/app/r;->e:Landroidx/fragment/app/s1;

    iput-object p4, p0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/n1;

    iput-object p5, p0, Landroidx/fragment/app/r;->g:Ljava/lang/Object;

    iput-object p6, p0, Landroidx/fragment/app/r;->h:Ljava/util/ArrayList;

    iput-object p7, p0, Landroidx/fragment/app/r;->i:Ljava/util/ArrayList;

    iput-object p8, p0, Landroidx/fragment/app/r;->j:Lk/e;

    iput-object p9, p0, Landroidx/fragment/app/r;->k:Ljava/util/ArrayList;

    iput-object p10, p0, Landroidx/fragment/app/r;->l:Ljava/util/ArrayList;

    iput-object p11, p0, Landroidx/fragment/app/r;->m:Lk/e;

    iput-object p12, p0, Landroidx/fragment/app/r;->n:Lk/e;

    iput-boolean p13, p0, Landroidx/fragment/app/r;->o:Z

    new-instance p1, Lf8/i3;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/r;->p:Lf8/i3;

    return-void
.end method

.method public static f(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lq3/r;->a:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2, p1}, Landroidx/fragment/app/r;->f(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    iget-object v0, p0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/n1;

    invoke-virtual {v0}, Landroidx/fragment/app/n1;->l()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/fragment/app/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroidx/fragment/app/s;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x22

    if-lt v6, v7, :cond_3

    iget-object v5, v5, Landroidx/fragment/app/s;->b:Ljava/lang/Object;

    if-eqz v5, :cond_3

    invoke-virtual {v0, v5}, Landroidx/fragment/app/n1;->m(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Landroidx/fragment/app/r;->g:Ljava/lang/Object;

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Landroidx/fragment/app/n1;->m(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v2
.end method

.method public final b(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/r;->p:Lf8/i3;

    invoke-virtual {p0}, Lf8/i3;->a()V

    return-void
.end method

.method public final c(Landroid/view/ViewGroup;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "container"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    const/4 v3, 0x0

    iget-object v4, v0, Landroidx/fragment/app/r;->c:Ljava/util/ArrayList;

    const/4 v5, 0x2

    const-string v6, "FragmentManager"

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroidx/fragment/app/r;->r:Z

    if-eqz v2, :cond_1

    :cond_0
    move/from16 v16, v5

    goto/16 :goto_2

    :cond_1
    iget-object v2, v0, Landroidx/fragment/app/r;->q:Ljava/lang/Object;

    const-string v7, " to "

    iget-object v8, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/n1;

    iget-object v9, v0, Landroidx/fragment/app/r;->e:Landroidx/fragment/app/s1;

    iget-object v10, v0, Landroidx/fragment/app/r;->d:Landroidx/fragment/app/s1;

    if-eqz v2, :cond_2

    invoke-virtual {v8, v2}, Landroidx/fragment/app/n1;->c(Ljava/lang/Object;)V

    invoke-static {v5}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending execution of operations from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v0, v1, v9, v10}, Landroidx/fragment/app/r;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/s1;Landroidx/fragment/app/s1;)Lt8/j;

    move-result-object v2

    iget-object v11, v2, Lt8/j;->l:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    iget-object v2, v2, Lt8/j;->m:Ljava/lang/Object;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v4, v13}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v3

    :goto_0
    if-ge v14, v13, :cond_3

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Landroidx/fragment/app/s;

    iget-object v15, v15, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_4

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v3, v3, 0x1

    check-cast v13, Landroidx/fragment/app/s1;

    iget-object v14, v13, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    new-instance v15, Landroidx/fragment/app/n;

    move/from16 v16, v5

    const/4 v5, 0x1

    invoke-direct {v15, v13, v0, v5}, Landroidx/fragment/app/n;-><init>(Landroidx/fragment/app/s1;Landroidx/fragment/app/r;I)V

    iget-object v5, v0, Landroidx/fragment/app/r;->p:Lf8/i3;

    invoke-virtual {v8, v14, v2, v5, v15}, Landroidx/fragment/app/n1;->u(Landroidx/fragment/app/l0;Ljava/lang/Object;Lf8/i3;Ljava/lang/Runnable;)V

    move/from16 v5, v16

    goto :goto_1

    :cond_4
    move/from16 v16, v5

    new-instance v3, Landroidx/fragment/app/p;

    invoke-direct {v3, v0, v1, v2}, Landroidx/fragment/app/p;-><init>(Landroidx/fragment/app/r;Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual {v0, v11, v1, v3}, Landroidx/fragment/app/r;->i(Ljava/util/ArrayList;Landroid/view/ViewGroup;Li9/a;)V

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Completed executing operations from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v3

    :goto_3
    if-ge v5, v2, :cond_8

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Landroidx/fragment/app/s;

    iget-object v8, v7, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Landroidx/fragment/app/r;->r:Z

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SpecialEffectsController: TransitionSeekController was not created. Completing operation "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SpecialEffectsController: Container "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " has not been laid out. Completing operation "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    iget-object v7, v7, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    invoke-virtual {v7, v0}, Landroidx/fragment/app/s1;->c(Landroidx/fragment/app/r1;)V

    goto :goto_3

    :cond_8
    iput-boolean v3, v0, Landroidx/fragment/app/r;->r:Z

    return-void
.end method

.method public final d(Lb/a;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/r;->q:Ljava/lang/Object;

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/n1;

    iget p1, p1, Lb/a;->c:F

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/n1;->r(Ljava/lang/Object;F)V

    :cond_0
    return-void
.end method

.method public final e(Landroid/view/ViewGroup;)V
    .locals 12

    const-string v0, "container"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FragmentManager"

    iget-object v3, p0, Landroidx/fragment/app/r;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    :cond_0
    :goto_0
    if-ge v1, p0, :cond_5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    check-cast v0, Landroidx/fragment/app/s;

    iget-object v0, v0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    const/4 v4, 0x2

    invoke-static {v4}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SpecialEffectsController: Container "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has not been laid out. Skipping onStart for operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/r;->h()Z

    move-result v0

    iget-object v4, p0, Landroidx/fragment/app/r;->e:Landroidx/fragment/app/s1;

    iget-object v5, p0, Landroidx/fragment/app/r;->d:Landroidx/fragment/app/s1;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/r;->g:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/r;->a()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring shared elements transition "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " between "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " as neither fragment has set a Transition. In order to run a SharedElementTransition, you must also set either an enter or exit transition on a fragment involved in the transaction. The sharedElementTransition will run after the back gesture has been committed."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/r;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/r;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v10, Lj9/y;

    invoke-direct {v10}, Lj9/y;-><init>()V

    invoke-virtual {p0, p1, v4, v5}, Landroidx/fragment/app/r;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/s1;Landroidx/fragment/app/s1;)Lt8/j;

    move-result-object v0

    iget-object v2, v0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v9, v0, Lt8/j;->m:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroidx/fragment/app/s;

    iget-object v6, v6, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Landroidx/fragment/app/s1;

    new-instance v5, Landroidx/fragment/app/b0;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v10}, Landroidx/fragment/app/b0;-><init>(ILjava/lang/Object;)V

    iget-object v6, v4, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    new-instance v6, Landroidx/fragment/app/n;

    const/4 v7, 0x0

    invoke-direct {v6, v4, p0, v7}, Landroidx/fragment/app/n;-><init>(Landroidx/fragment/app/s1;Landroidx/fragment/app/r;I)V

    iget-object v4, p0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/n1;

    iget-object v7, p0, Landroidx/fragment/app/r;->p:Lf8/i3;

    invoke-virtual {v4, v9, v7, v5, v6}, Landroidx/fragment/app/n1;->v(Ljava/lang/Object;Lf8/i3;Landroidx/fragment/app/b0;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    new-instance v6, Landroidx/fragment/app/q;

    const/4 v11, 0x0

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v6 .. v11}, Landroidx/fragment/app/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;I)V

    invoke-virtual {v7, v2, v8, v6}, Landroidx/fragment/app/r;->i(Ljava/util/ArrayList;Landroid/view/ViewGroup;Li9/a;)V

    :cond_5
    return-void
.end method

.method public final g(Landroid/view/ViewGroup;Landroidx/fragment/app/s1;Landroidx/fragment/app/s1;)Lt8/j;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, v0, Landroidx/fragment/app/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    iget-object v13, v0, Landroidx/fragment/app/r;->i:Ljava/util/ArrayList;

    iget-object v14, v0, Landroidx/fragment/app/r;->h:Ljava/util/ArrayList;

    iget-object v15, v0, Landroidx/fragment/app/r;->g:Ljava/lang/Object;

    iget-object v8, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/n1;

    if-ge v12, v7, :cond_4

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, v16

    check-cast v9, Landroidx/fragment/app/s;

    iget-object v9, v9, Landroidx/fragment/app/s;->d:Ljava/lang/Object;

    if-eqz v9, :cond_3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v9, v0, Landroidx/fragment/app/r;->j:Lk/e;

    invoke-virtual {v9}, Lk/v0;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v15, :cond_3

    iget-object v9, v2, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    move/from16 v20, v7

    iget-object v7, v3, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    sget-object v16, Landroidx/fragment/app/g1;->a:Landroidx/fragment/app/l1;

    move/from16 v22, v11

    const-string v11, "inFragment"

    invoke-static {v9, v11}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "outFragment"

    invoke-static {v7, v11}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v11, v0, Landroidx/fragment/app/r;->o:Z

    if-eqz v11, :cond_0

    invoke-virtual {v7}, Landroidx/fragment/app/l0;->getEnterTransitionCallback()Li3/h;

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Landroidx/fragment/app/l0;->getEnterTransitionCallback()Li3/h;

    :goto_1
    new-instance v7, Landroidx/fragment/app/e;

    const/4 v9, 0x1

    invoke-direct {v7, v2, v3, v0, v9}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, v7}, Lq3/g;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    iget-object v7, v0, Landroidx/fragment/app/r;->m:Lk/e;

    invoke-virtual {v7}, Lk/e;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v11, v0, Landroidx/fragment/app/r;->l:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_1

    const/4 v9, 0x0

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    const-string v9, "exitingNames[0]"

    invoke-static {v10, v9}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v8, v15, v7}, Landroidx/fragment/app/n1;->t(Ljava/lang/Object;Landroid/view/View;)V

    move-object v10, v7

    :cond_1
    iget-object v7, v0, Landroidx/fragment/app/r;->n:Lk/e;

    invoke-virtual {v7}, Lk/e;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v9, v0, Landroidx/fragment/app/r;->k:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    const-string v11, "enteringNames[0]"

    invoke-static {v9, v11}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    if-eqz v7, :cond_2

    new-instance v9, Landroidx/fragment/app/o;

    invoke-direct {v9, v8, v7, v5}, Landroidx/fragment/app/o;-><init>(Landroidx/fragment/app/n1;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v1, v9}, Lq3/g;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    move/from16 v11, v22

    :goto_2
    invoke-virtual {v8, v15, v4, v14}, Landroidx/fragment/app/n1;->w(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v14, v0, Landroidx/fragment/app/r;->g:Ljava/lang/Object;

    move-object/from16 v17, v14

    move-object/from16 v18, v13

    move-object v13, v8

    invoke-virtual/range {v13 .. v18}, Landroidx/fragment/app/n1;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move/from16 v7, v20

    goto/16 :goto_0

    :cond_3
    move/from16 v20, v7

    move/from16 v22, v11

    move/from16 v7, v20

    move/from16 v11, v22

    goto/16 :goto_0

    :cond_4
    move/from16 v22, v11

    move-object v7, v13

    move-object v13, v8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-object/from16 v23, v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    const-string v7, "FragmentManager"

    if-ge v12, v8, :cond_f

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v24, v6

    move-object/from16 v6, v16

    check-cast v6, Landroidx/fragment/app/s;

    move/from16 v25, v8

    iget-object v8, v6, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    move/from16 v26, v12

    iget-object v12, v6, Landroidx/fragment/app/s;->b:Ljava/lang/Object;

    invoke-virtual {v13, v12}, Landroidx/fragment/app/n1;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_e

    move-object/from16 v27, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v28, v15

    iget-object v15, v8, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    move-object/from16 v29, v11

    iget-object v11, v15, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    move-object/from16 v30, v9

    const-string v9, "operation.fragment.mView"

    invoke-static {v11, v9}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v14}, Landroidx/fragment/app/r;->f(Landroid/view/View;Ljava/util/ArrayList;)V

    if-eqz v28, :cond_7

    if-eq v8, v3, :cond_5

    if-ne v8, v2, :cond_7

    :cond_5
    if-ne v8, v3, :cond_6

    invoke-static/range {v27 .. v27}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_6
    invoke-static/range {v23 .. v23}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_7
    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v13, v12, v4}, Landroidx/fragment/app/n1;->a(Ljava/lang/Object;Landroid/view/View;)V

    move-object v9, v12

    move-object v11, v14

    :cond_8
    const/4 v14, 0x2

    goto :goto_5

    :cond_9
    invoke-virtual {v13, v12, v14}, Landroidx/fragment/app/n1;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v12

    move-object/from16 v17, v12

    move-object/from16 v16, v13

    move-object/from16 v19, v14

    invoke-virtual/range {v16 .. v21}, Landroidx/fragment/app/n1;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v9, v17

    move-object/from16 v11, v19

    iget v12, v8, Landroidx/fragment/app/s1;->a:I

    const/4 v14, 0x3

    if-ne v12, v14, :cond_8

    const/4 v12, 0x0

    iput-boolean v12, v8, Landroidx/fragment/app/s1;->i:Z

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v12, v15, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v12, v15, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {v13, v9, v12, v14}, Landroidx/fragment/app/n1;->p(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    new-instance v12, Landroidx/fragment/app/b0;

    const/4 v14, 0x2

    invoke-direct {v12, v14, v11}, Landroidx/fragment/app/b0;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v12}, Lq3/g;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_5
    iget v8, v8, Landroidx/fragment/app/s1;->a:I

    const-string v12, "View: "

    const-string v15, "transitioningViews"

    if-ne v8, v14, :cond_b

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v22, :cond_a

    invoke-virtual {v13, v9, v5}, Landroidx/fragment/app/n1;->s(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_a
    invoke-static {v14}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v8

    if-eqz v8, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v14, "Entering Transition: "

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ">>>>> EnteringViews <<<<<"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v8, :cond_c

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v14, v14, 0x1

    invoke-static {v2, v15}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_6

    :cond_b
    invoke-virtual {v13, v9, v10}, Landroidx/fragment/app/n1;->t(Ljava/lang/Object;Landroid/view/View;)V

    const/4 v14, 0x2

    invoke-static {v14}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exiting Transition: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ">>>>> ExitingViews <<<<<"

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_c

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    invoke-static {v8, v15}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/View;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_c
    iget-boolean v2, v6, Landroidx/fragment/app/s;->c:Z

    if-eqz v2, :cond_d

    move-object/from16 v2, v30

    invoke-virtual {v13, v2, v9}, Landroidx/fragment/app/n1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, v24

    move/from16 v8, v25

    move/from16 v12, v26

    move-object/from16 v14, v27

    move-object/from16 v15, v28

    move-object/from16 v11, v29

    goto/16 :goto_3

    :cond_d
    move-object/from16 v3, v29

    move-object/from16 v2, v30

    invoke-virtual {v13, v3, v9}, Landroidx/fragment/app/n1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v3, p3

    move-object v9, v2

    move-object/from16 v6, v24

    move/from16 v8, v25

    move/from16 v12, v26

    move-object/from16 v14, v27

    move-object/from16 v15, v28

    move-object/from16 v2, p2

    goto/16 :goto_3

    :cond_e
    move-object v2, v9

    move-object v3, v11

    move-object/from16 v6, v24

    move/from16 v8, v25

    move/from16 v12, v26

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto/16 :goto_3

    :cond_f
    move-object v2, v9

    move-object v3, v11

    move-object v6, v15

    invoke-virtual {v13, v2, v3, v6}, Landroidx/fragment/app/n1;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v14, 0x2

    invoke-static {v14}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Final merged transition: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    new-instance v1, Lt8/j;

    invoke-direct {v1, v0, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final h()Z
    .locals 4

    iget-object p0, p0, Landroidx/fragment/app/r;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroidx/fragment/app/s;

    iget-object v3, v3, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    iget-object v3, v3, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    iget-boolean v3, v3, Landroidx/fragment/app/l0;->mTransitioning:Z

    if-nez v3, :cond_1

    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final i(Ljava/util/ArrayList;Landroid/view/ViewGroup;Li9/a;)V
    .locals 14

    const/4 v1, 0x4

    invoke-static {v1, p1}, Landroidx/fragment/app/g1;->a(ILjava/util/ArrayList;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Landroidx/fragment/app/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v8, 0x0

    move v2, v8

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    sget-object v7, Lq3/q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v1

    iget-object v6, p0, Landroidx/fragment/app/r;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    const-string v1, ">>>>> Beginning transition <<<<<"

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ">>>>> SharedElementFirstOutViews <<<<<"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v7, v8

    :goto_1
    const-string v9, " Name: "

    const-string v10, "View: "

    if-ge v7, v1, :cond_1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    const-string v12, "sharedElementFirstOutViews"

    invoke-static {v11, v12}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroid/view/View;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lq3/q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v11}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v1, ">>>>> SharedElementLastInViews <<<<<"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v7, v8

    :goto_2
    if-ge v7, v1, :cond_2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    const-string v12, "sharedElementLastInViews"

    invoke-static {v11, v12}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroid/view/View;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lq3/q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v11}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-interface/range {p3 .. p3}, Li9/a;->invoke()Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, v8

    :goto_3
    if-ge v2, v1, :cond_6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    sget-object v10, Lq3/q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v10, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {v9, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    iget-object v9, p0, Landroidx/fragment/app/r;->j:Lk/e;

    invoke-virtual {v9, v10}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move v11, v8

    :goto_4
    if-ge v11, v1, :cond_5

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    new-instance v2, Landroidx/fragment/app/m1;

    move v3, v1

    invoke-direct/range {v2 .. v7}, Landroidx/fragment/app/m1;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v1, p2

    invoke-static {v1, v2}, Lq3/g;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-static {v8, p1}, Landroidx/fragment/app/g1;->a(ILjava/util/ArrayList;)V

    iget-object v0, p0, Landroidx/fragment/app/r;->g:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/n1;

    invoke-virtual {p0, v0, v6, v4}, Landroidx/fragment/app/n1;->x(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
