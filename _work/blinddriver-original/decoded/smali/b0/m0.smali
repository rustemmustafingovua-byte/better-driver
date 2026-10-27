.class public final synthetic Lb0/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p9, p0, Lb0/m0;->l:I

    iput-object p1, p0, Lb0/m0;->o:Ljava/lang/Object;

    iput-object p2, p0, Lb0/m0;->p:Ljava/lang/Object;

    iput-boolean p3, p0, Lb0/m0;->m:Z

    iput-object p4, p0, Lb0/m0;->q:Ljava/lang/Object;

    iput-object p5, p0, Lb0/m0;->r:Ljava/lang/Object;

    iput-object p6, p0, Lb0/m0;->s:Ljava/lang/Object;

    iput-object p7, p0, Lb0/m0;->t:Ljava/lang/Object;

    iput p8, p0, Lb0/m0;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo2/a;Li9/a;Lo1/h;Lo1/h;Lf1/r;ZLo0/f0;I)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lb0/m0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/m0;->o:Ljava/lang/Object;

    iput-object p2, p0, Lb0/m0;->p:Ljava/lang/Object;

    iput-object p3, p0, Lb0/m0;->q:Ljava/lang/Object;

    iput-object p4, p0, Lb0/m0;->r:Ljava/lang/Object;

    iput-object p5, p0, Lb0/m0;->s:Ljava/lang/Object;

    iput-boolean p6, p0, Lb0/m0;->m:Z

    iput-object p7, p0, Lb0/m0;->t:Ljava/lang/Object;

    iput p8, p0, Lb0/m0;->n:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lb0/m0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb0/m0;->o:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lo0/o4;

    iget-object v0, p0, Lb0/m0;->p:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lf1/r;

    iget-object v0, p0, Lb0/m0;->q:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lo0/t3;

    iget-object v0, p0, Lb0/m0;->r:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ls/i;

    iget-object v0, p0, Lb0/m0;->s:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lz0/d;

    iget-object v0, p0, Lb0/m0;->t:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lz0/d;

    move-object v8, p1

    check-cast v8, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lb0/m0;->n:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v9

    iget-boolean v3, p0, Lb0/m0;->m:Z

    invoke-static/range {v1 .. v9}, Lo0/m4;->c(Lo0/o4;Lf1/r;ZLo0/t3;Ls/i;Lz0/d;Lz0/d;Lr0/q;I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lb0/m0;->o:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lo2/a;

    iget-object v0, p0, Lb0/m0;->p:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Li9/a;

    iget-object v0, p0, Lb0/m0;->q:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lo1/h;

    iget-object v0, p0, Lb0/m0;->r:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lo1/h;

    iget-object v0, p0, Lb0/m0;->s:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lf1/r;

    iget-object v0, p0, Lb0/m0;->t:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lo0/f0;

    move-object v8, p1

    check-cast v8, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lb0/m0;->n:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v9

    iget-boolean v6, p0, Lb0/m0;->m:Z

    invoke-static/range {v1 .. v9}, Lo0/l0;->c(Lo2/a;Li9/a;Lo1/h;Lo1/h;Lf1/r;ZLo0/f0;Lr0/q;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lb0/m0;->o:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Li9/a;

    iget-object v0, p0, Lb0/m0;->p:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lf1/r;

    iget-object v0, p0, Lb0/m0;->q:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lm1/h0;

    iget-object v0, p0, Lb0/m0;->r:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lo0/a0;

    iget-object v0, p0, Lb0/m0;->s:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lo0/b0;

    iget-object v0, p0, Lb0/m0;->t:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lz0/d;

    move-object v8, p1

    check-cast v8, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lb0/m0;->n:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v9

    iget-boolean v3, p0, Lb0/m0;->m:Z

    invoke-static/range {v1 .. v9}, Lo0/z2;->d(Li9/a;Lf1/r;ZLm1/h0;Lo0/a0;Lo0/b0;Lz0/d;Lr0/q;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lb0/m0;->o:Ljava/lang/Object;

    check-cast v0, Lm0/v1;

    iget-object v1, p0, Lb0/m0;->p:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lb0/r1;

    iget-object v1, p0, Lb0/m0;->q:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Li9/c;

    iget-object v1, p0, Lb0/m0;->r:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lu2/x;

    iget-object v1, p0, Lb0/m0;->s:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lu2/q;

    iget-object v1, p0, Lb0/m0;->t:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lb3/c;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/lit8 v1, p2, 0x3

    const/4 v2, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v1, v2, :cond_0

    move v1, v9

    goto :goto_1

    :cond_0
    move v1, v10

    :goto_1
    and-int/2addr p2, v9

    invoke-virtual {p1, p2, v1}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance v2, Lb0/t0;

    iget v8, p0, Lb0/m0;->n:I

    invoke-direct/range {v2 .. v8}, Lb0/t0;-><init>(Lb0/r1;Li9/c;Lu2/x;Lu2/q;Lb3/c;I)V

    iget-wide v4, p1, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result p2

    invoke-virtual {p1}, Lr0/q;->m()Lr0/j1;

    move-result-object v1

    sget-object v4, Lf1/o;->a:Lf1/o;

    invoke-static {v4, p1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    sget-object v5, Le2/h;->b:Le2/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le2/g;->b:Le2/f;

    invoke-virtual {p1}, Lr0/q;->e0()V

    iget-boolean v6, p1, Lr0/q;->S:Z

    if-eqz v6, :cond_1

    invoke-virtual {p1, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_2
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v1, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v1, Le2/g;->g:Le2/e;

    invoke-static {p1, p2, v1}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object p2, Le2/g;->h:Le2/d;

    invoke-static {p1, p2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object p2, Le2/g;->d:Le2/e;

    invoke-static {p2, v4, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {p1, v9}, Lr0/q;->q(Z)V

    invoke-virtual {v3}, Lb0/r1;->a()Lb0/e1;

    move-result-object p2

    sget-object v1, Lb0/e1;->l:Lb0/e1;

    iget-boolean p0, p0, Lb0/m0;->m:Z

    if-eq p2, v1, :cond_2

    invoke-virtual {v3}, Lb0/r1;->c()Lc2/u;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {v3}, Lb0/r1;->c()Lc2/u;

    move-result-object p2

    invoke-static {p2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {p2}, Lc2/u;->j()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    move v9, v10

    :goto_3
    invoke-static {v0, v9, p1, v10}, Lb0/n1;->j(Lm0/v1;ZLr0/q;I)V

    invoke-virtual {v3}, Lb0/r1;->a()Lb0/e1;

    move-result-object p2

    sget-object v1, Lb0/e1;->n:Lb0/e1;

    if-ne p2, v1, :cond_3

    if-eqz p0, :cond_3

    const p0, -0x2a98f0d6

    invoke-virtual {p1, p0}, Lr0/q;->b0(I)V

    invoke-static {v0, p1, v10}, Lb0/n1;->k(Lm0/v1;Lr0/q;I)V

    :goto_4
    invoke-virtual {p1, v10}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_3
    const p0, -0x2c8c14e6

    invoke-virtual {p1, p0}, Lr0/q;->b0(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_5
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
