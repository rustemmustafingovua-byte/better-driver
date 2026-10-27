.class public final Lr/s0;
.super Lr/o0;
.source "SourceFile"


# instance fields
.field public T:Lo0/o4;

.field public U:Lr/m1;

.field public V:Z

.field public W:Li9/f;

.field public X:Li9/f;

.field public Y:Z


# virtual methods
.method public final T0(Lr/n0;Lr/n0;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr/s0;->T:Lo0/o4;

    sget-object v1, Lp/n1;->l:Lp/n1;

    new-instance v1, Landroidx/lifecycle/m0;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, p1, p0, v3, v2}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/lifecycle/i0;

    invoke-direct {p0, v0, v1, v3}, Landroidx/lifecycle/i0;-><init>(Lo0/o4;Landroidx/lifecycle/m0;Ly8/c;)V

    invoke-static {p0, p2}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    sget-object p2, Lt8/z;->a:Lt8/z;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    return-object p2
.end method

.method public final Y0(J)V
    .locals 4

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr/s0;->W:Li9/f;

    sget-object v1, Lr/r0;->a:Lr/q0;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v0

    sget-object v1, Lu9/u;->o:Lu9/u;

    new-instance v2, Lod/b5;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lod/b5;-><init>(Lr/s0;JLy8/c;)V

    const/4 p0, 0x1

    invoke-static {v0, v3, v1, v2, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_1
    :goto_0
    return-void
.end method

.method public final Z0(Lr/v;)V
    .locals 5

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr/s0;->X:Li9/f;

    sget-object v1, Lr/r0;->b:Lr/q0;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v0

    sget-object v1, Lu9/u;->o:Lu9/u;

    new-instance v2, Landroidx/lifecycle/m0;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4, v3}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 p0, 0x1

    invoke-static {v0, v4, v1, v2, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_1
    :goto_0
    return-void
.end method

.method public final e1()Z
    .locals 0

    iget-boolean p0, p0, Lr/s0;->V:Z

    return p0
.end method
