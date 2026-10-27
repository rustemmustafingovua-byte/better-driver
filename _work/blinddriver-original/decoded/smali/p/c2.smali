.class public final Lp/c2;
.super Le2/k;
.source "SourceFile"

# interfaces
.implements Le2/i;
.implements Le2/l1;


# instance fields
.field public B:Lr/h2;

.field public C:Lr/m1;

.field public D:Z

.field public E:Lr/k;

.field public F:Ls/i;

.field public G:Z

.field public H:Lp/j;

.field public I:Lr/g2;

.field public J:Le2/j;

.field public K:Lp/k;

.field public L:Lp/j;

.field public M:Z


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final E0()V
    .locals 9

    invoke-virtual {p0}, Lp/c2;->Q0()Z

    move-result v0

    iput-boolean v0, p0, Lp/c2;->M:Z

    invoke-virtual {p0}, Lp/c2;->P0()V

    iget-object v0, p0, Lp/c2;->I:Lr/g2;

    if-nez v0, :cond_1

    new-instance v1, Lr/g2;

    iget-object v5, p0, Lp/c2;->B:Lr/h2;

    iget-boolean v0, p0, Lp/c2;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp/c2;->L:Lp/j;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lp/c2;->H:Lp/j;

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lp/c2;->E:Lr/k;

    iget-object v4, p0, Lp/c2;->C:Lr/m1;

    iget-boolean v7, p0, Lp/c2;->D:Z

    iget-boolean v8, p0, Lp/c2;->M:Z

    iget-object v6, p0, Lp/c2;->F:Ls/i;

    invoke-direct/range {v1 .. v8}, Lr/g2;-><init>(Lp/j;Lr/k;Lr/m1;Lr/h2;Ls/i;ZZ)V

    invoke-virtual {p0, v1}, Le2/k;->M0(Le2/j;)Le2/j;

    iput-object v1, p0, Lp/c2;->I:Lr/g2;

    :cond_1
    return-void
.end method

.method public final F0()V
    .locals 1

    iget-object v0, p0, Lp/c2;->J:Le2/j;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Le2/k;->N0(Le2/j;)V

    :cond_0
    return-void
.end method

.method public final O()V
    .locals 10

    invoke-virtual {p0}, Lp/c2;->Q0()Z

    move-result v0

    iget-boolean v1, p0, Lp/c2;->M:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lp/c2;->M:Z

    iget-object v6, p0, Lp/c2;->B:Lr/h2;

    iget-object v5, p0, Lp/c2;->C:Lr/m1;

    iget-boolean v8, p0, Lp/c2;->G:Z

    if-eqz v8, :cond_0

    iget-object v0, p0, Lp/c2;->L:Lp/j;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lp/c2;->H:Lp/j;

    goto :goto_0

    :goto_1
    iget-boolean v9, p0, Lp/c2;->D:Z

    iget-object v4, p0, Lp/c2;->E:Lr/k;

    iget-object v7, p0, Lp/c2;->F:Ls/i;

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lp/c2;->R0(Lp/j;Lr/k;Lr/m1;Lr/h2;Ls/i;ZZ)V

    :cond_1
    return-void
.end method

.method public final P0()V
    .locals 2

    iget-object v0, p0, Lp/c2;->J:Le2/j;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lp/c2;->G:Z

    if-eqz v0, :cond_0

    new-instance v0, Lod/x4;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lod/x4;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v0}, Le2/l;->r(Lf1/q;Li9/a;)V

    :cond_0
    iget-boolean v0, p0, Lp/c2;->G:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp/c2;->L:Lp/j;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lp/c2;->H:Lp/j;

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, v0, Lp/j;->i:Le2/k;

    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v1, v1, Lf1/q;->y:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Le2/k;->M0(Le2/j;)Le2/j;

    iput-object v0, p0, Lp/c2;->J:Le2/j;

    return-void

    :cond_2
    move-object v1, v0

    check-cast v1, Lf1/q;

    iget-object v1, v1, Lf1/q;->l:Lf1/q;

    iget-boolean v1, v1, Lf1/q;->y:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Le2/k;->M0(Le2/j;)Le2/j;

    :cond_3
    return-void
.end method

.method public final Q0()Z
    .locals 2

    sget-object v0, Lb3/m;->l:Lb3/m;

    iget-boolean v1, p0, Lf1/q;->y:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    iget-object v0, v0, Le2/g0;->L:Lb3/m;

    :cond_0
    iget-object p0, p0, Lp/c2;->C:Lr/m1;

    sget-object v1, Lb3/m;->m:Lb3/m;

    if-ne v0, v1, :cond_1

    sget-object v0, Lr/m1;->l:Lr/m1;

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final R0(Lp/j;Lr/k;Lr/m1;Lr/h2;Ls/i;ZZ)V
    .locals 8

    iput-object p4, p0, Lp/c2;->B:Lr/h2;

    iput-object p3, p0, Lp/c2;->C:Lr/m1;

    iget-boolean v0, p0, Lp/c2;->G:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p6, :cond_0

    iput-boolean p6, p0, Lp/c2;->G:Z

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lp/c2;->H:Lp/j;

    invoke-static {v3, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iput-object p1, p0, Lp/c2;->H:Lp/j;

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_4

    if-nez p6, :cond_4

    :cond_2
    iget-object p1, p0, Lp/c2;->J:Le2/j;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Le2/k;->N0(Le2/j;)V

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lp/c2;->J:Le2/j;

    invoke-virtual {p0}, Lp/c2;->P0()V

    :cond_4
    iput-boolean p7, p0, Lp/c2;->D:Z

    iput-object p2, p0, Lp/c2;->E:Lr/k;

    iput-object p5, p0, Lp/c2;->F:Ls/i;

    invoke-virtual {p0}, Lp/c2;->Q0()Z

    move-result v7

    iput-boolean v7, p0, Lp/c2;->M:Z

    iget-object v0, p0, Lp/c2;->I:Lr/g2;

    if-eqz v0, :cond_6

    iget-boolean p1, p0, Lp/c2;->G:Z

    if-eqz p1, :cond_5

    iget-object p0, p0, Lp/c2;->L:Lp/j;

    :goto_2
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lp/c2;->H:Lp/j;

    goto :goto_2

    :goto_3
    invoke-virtual/range {v0 .. v7}, Lr/g2;->h1(Lp/j;Lr/k;Lr/m1;Lr/h2;Ls/i;ZZ)V

    :cond_6
    return-void
.end method

.method public final d0()V
    .locals 10

    sget-object v0, Lp/u1;->a:Lr0/a0;

    invoke-static {p0, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/k;

    iget-object v1, p0, Lp/c2;->K:Lp/k;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Lp/c2;->K:Lp/k;

    const/4 v0, 0x0

    iput-object v0, p0, Lp/c2;->L:Lp/j;

    iget-object v1, p0, Lp/c2;->J:Le2/j;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Le2/k;->N0(Le2/j;)V

    :cond_0
    iput-object v0, p0, Lp/c2;->J:Le2/j;

    invoke-virtual {p0}, Lp/c2;->P0()V

    iget-object v2, p0, Lp/c2;->I:Lr/g2;

    if-eqz v2, :cond_2

    iget-object v6, p0, Lp/c2;->B:Lr/h2;

    iget-object v5, p0, Lp/c2;->C:Lr/m1;

    iget-boolean v0, p0, Lp/c2;->G:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp/c2;->L:Lp/j;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lp/c2;->H:Lp/j;

    goto :goto_0

    :goto_1
    iget-boolean v8, p0, Lp/c2;->D:Z

    iget-boolean v9, p0, Lp/c2;->M:Z

    iget-object v4, p0, Lp/c2;->E:Lr/k;

    iget-object v7, p0, Lp/c2;->F:Ls/i;

    invoke-virtual/range {v2 .. v9}, Lr/g2;->h1(Lp/j;Lr/k;Lr/m1;Lr/h2;Ls/i;ZZ)V

    :cond_2
    return-void
.end method
