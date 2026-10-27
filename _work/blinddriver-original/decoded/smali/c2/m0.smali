.class public final Lc2/m0;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lc2/m0;->l:I

    iput-object p2, p0, Lc2/m0;->m:Ljava/lang/Object;

    iput-object p3, p0, Lc2/m0;->n:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lf2/y;Li9/e;I)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, Lc2/m0;->l:I

    .line 2
    iput-object p1, p0, Lc2/m0;->m:Ljava/lang/Object;

    iput-object p2, p0, Lc2/m0;->n:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lc2/m0;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lc2/m0;->m:Ljava/lang/Object;

    iget-object p0, p0, Lc2/m0;->n:Ljava/lang/Object;

    sget-object v4, Lt8/z;->a:Lt8/z;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lm2/p;

    check-cast p0, Lh1/d;

    check-cast v3, Lf2/j2;

    iget-object v0, v3, Lf2/j2;->b:Lk/y;

    iget v1, p2, Lm2/p;->g:I

    invoke-virtual {v0, v1}, Lk/y;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lh1/d;->l(ILm2/p;)V

    iget-object p0, p0, Lh1/d;->s:Lw9/e;

    invoke-interface {p0, v4}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v4

    :pswitch_0
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    check-cast v3, Lf2/y;

    check-cast p0, Li9/e;

    invoke-static {v2}, Lr0/r;->H(I)I

    move-result p2

    invoke-static {v3, p0, p1, p2}, Lf2/o0;->a(Lf2/y;Li9/e;Lr0/q;I)V

    return-object v4

    :pswitch_1
    check-cast p1, Lm1/o;

    check-cast p2, Lp1/b;

    check-cast v3, Le2/h1;

    iget-object v0, v3, Le2/h1;->z:Le2/g0;

    invoke-virtual {v0}, Le2/g0;->I()Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object p1, v3, Le2/h1;->S:Lm1/o;

    iput-object p2, v3, Le2/h1;->R:Lp1/b;

    invoke-static {v0}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object p1

    check-cast p1, Lf2/y;

    invoke-virtual {p1}, Lf2/y;->getSnapshotObserver()Le2/s1;

    move-result-object p1

    sget-object p2, Le2/h1;->X:Lm1/f0;

    sget-object p2, Le2/d;->o:Le2/d;

    check-cast p0, Le2/e1;

    iget-object p1, p1, Le2/s1;->a:Ld1/b0;

    invoke-virtual {p1, v3, p2, p0}, Ld1/b0;->c(Ljava/lang/Object;Li9/c;Li9/a;)V

    iput-boolean v1, v3, Le2/h1;->V:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, v3, Le2/h1;->V:Z

    :goto_0
    return-object v4

    :pswitch_2
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    and-int/2addr p2, v2

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_8

    check-cast v3, Lc2/e0;

    iget-object p2, v3, Lc2/e0;->g:Lr0/e1;

    invoke-virtual {p2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    check-cast p0, Li9/e;

    invoke-virtual {p1, p2}, Lr0/q;->d0(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lr0/q;->h(Z)Z

    move-result p2

    if-eqz v0, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    iget p0, p1, Lr0/q;->l:I

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const-string p0, "No nodes can be emitted before calling deactivateToEndGroup"

    invoke-static {p0}, Lr0/s;->a(Ljava/lang/String;)V

    :goto_2
    iget-boolean p0, p1, Lr0/q;->S:Z

    if-nez p0, :cond_6

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lr0/q;->V()V

    goto :goto_3

    :cond_5
    iget-object p0, p1, Lr0/q;->G:Lr0/d2;

    iget p2, p0, Lr0/d2;->g:I

    iget p0, p0, Lr0/d2;->h:I

    iget-object v0, p1, Lr0/q;->M:Ls0/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ls0/b;->d(Z)V

    iget-object v0, v0, Ls0/b;->b:Ls0/a;

    iget-object v0, v0, Ls0/a;->c:Ls0/m0;

    sget-object v2, Ls0/i;->c:Ls0/i;

    invoke-virtual {v0, v2}, Ls0/m0;->G(Ls0/j0;)V

    iget-object v0, p1, Lr0/q;->s:Ljava/util/ArrayList;

    invoke-static {v0, p2, p0}, Lr0/r;->k(Ljava/util/List;II)V

    iget-object p0, p1, Lr0/q;->G:Lr0/d2;

    invoke-virtual {p0}, Lr0/d2;->t()V

    :cond_6
    :goto_3
    iget-boolean p0, p1, Lr0/q;->y:Z

    if-eqz p0, :cond_7

    iget-object p0, p1, Lr0/q;->G:Lr0/d2;

    iget p0, p0, Lr0/d2;->i:I

    iget p2, p1, Lr0/q;->z:I

    if-ne p0, p2, :cond_7

    const/4 p0, -0x1

    iput p0, p1, Lr0/q;->z:I

    iput-boolean v1, p1, Lr0/q;->y:Z

    :cond_7
    invoke-virtual {p1, v1}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_4
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
