.class public final Lo0/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lz0/d;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf1/r;Lp/a2;Lz0/d;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo0/s1;->l:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/s1;->n:Ljava/lang/Object;

    iput-object p2, p0, Lo0/s1;->o:Ljava/lang/Object;

    iput-object p3, p0, Lo0/s1;->m:Lz0/d;

    return-void
.end method

.method public synthetic constructor <init>(Li9/e;Lz0/d;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lo0/s1;->l:I

    iput-object p1, p0, Lo0/s1;->n:Ljava/lang/Object;

    iput-object p2, p0, Lo0/s1;->m:Lz0/d;

    iput-object p3, p0, Lo0/s1;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lo0/s1;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-object v2, p0, Lo0/s1;->m:Lz0/d;

    iget-object v3, p0, Lo0/s1;->n:Ljava/lang/Object;

    iget-object p0, p0, Lo0/s1;->o:Ljava/lang/Object;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    and-int/2addr p2, v5

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lr0/m;->a:Lr0/e;

    if-ne p2, v0, :cond_1

    invoke-static {p1}, Lr0/r;->p(Lr0/q;)Lu9/t;

    move-result-object p2

    invoke-virtual {p1, p2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast p2, Lu9/t;

    check-cast p0, Ln/r0;

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_2

    new-instance v7, Lo0/f3;

    invoke-direct {v7, p2, p0}, Lo0/f3;-><init>(Lu9/t;Ln/r0;)V

    invoke-virtual {p1, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v7, Lo0/f3;

    sget-object p0, Lu/f0;->l:Lu/f0;

    invoke-static {}, Lu/b;->j()Lf1/r;

    move-result-object p0

    check-cast v3, Li9/e;

    new-array p2, v4, [Li9/e;

    aput-object v3, p2, v6

    aput-object v2, p2, v5

    invoke-static {p2}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v2, Lc2/z;

    invoke-direct {v2, v6, p2}, Lc2/z;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lz0/d;

    const v3, 0x4bcece3c    # 2.7106424E7f

    invoke-direct {p2, v3, v5, v2}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3

    new-instance v2, Lc2/w0;

    invoke-direct {v2, v7}, Lc2/w0;-><init>(Lo0/f3;)V

    invoke-virtual {p1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v2, Lc2/r0;

    iget-wide v3, p1, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {p1}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    invoke-static {p0, p1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object p0

    sget-object v4, Le2/h;->b:Le2/g;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Le2/g;->b:Le2/f;

    invoke-virtual {p1}, Lr0/q;->e0()V

    iget-boolean v7, p1, Lr0/q;->S:Z

    if-eqz v7, :cond_4

    invoke-virtual {p1, v4}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_1
    sget-object v4, Le2/g;->f:Le2/e;

    invoke-static {v4, v2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v3, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->g:Le2/e;

    iget-boolean v3, p1, Lr0/q;->S:Z

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    invoke-static {v0, p1, v0, v2}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_6
    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, p0, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v5}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_2
    return-object v1

    :pswitch_0
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v4, :cond_8

    move v0, v5

    goto :goto_3

    :cond_8
    move v0, v6

    :goto_3
    and-int/2addr p2, v5

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_9

    check-cast v3, Li9/e;

    check-cast p0, Lu/s0;

    invoke-static {v3, v2, p0, p1, v6}, Lo0/m3;->b(Li9/e;Lz0/d;Lu/s0;Lr0/q;I)V

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_4
    return-object v1

    :pswitch_1
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v4, :cond_a

    move v0, v5

    goto :goto_5

    :cond_a
    move v0, v6

    :goto_5
    and-int/2addr p2, v5

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_e

    check-cast v3, Lf1/r;

    const/4 p2, 0x0

    sget v0, Lo0/u1;->d:F

    invoke-static {v3, p2, v0, v5}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object p2

    sget-object v0, Lu/f0;->m:Lu/f0;

    invoke-static {p2, v0}, Lu/b;->w(Lf1/r;Lu/f0;)Lf1/r;

    move-result-object p2

    check-cast p0, Lp/a2;

    invoke-static {p2, p0}, Lp/o;->t(Lf1/r;Lp/a2;)Lf1/r;

    move-result-object p0

    sget-object p2, Lu/h;->c:Lu/c;

    sget-object v0, Lf1/c;->x:Lf1/h;

    invoke-static {p2, v0, p1, v6}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object p2

    iget-wide v3, p1, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {p1}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    invoke-static {p0, p1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object p0

    sget-object v4, Le2/h;->b:Le2/g;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Le2/g;->b:Le2/f;

    invoke-virtual {p1}, Lr0/q;->e0()V

    iget-boolean v6, p1, Lr0/q;->S:Z

    if-eqz v6, :cond_b

    invoke-virtual {p1, v4}, Lr0/q;->l(Li9/a;)V

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_6
    sget-object v4, Le2/g;->f:Le2/e;

    invoke-static {v4, p2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object p2, Le2/g;->e:Le2/e;

    invoke-static {p2, v3, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object p2, Le2/g;->g:Le2/e;

    iget-boolean v3, p1, Lr0/q;->S:Z

    if-nez v3, :cond_c

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    invoke-static {v0, p1, v0, p2}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_d
    sget-object p2, Le2/g;->d:Le2/e;

    invoke-static {p2, p0, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 p0, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object p2, Lu/s;->a:Lu/s;

    invoke-virtual {v2, p2, p1, p0}, Lz0/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v5}, Lr0/q;->q(Z)V

    goto :goto_7

    :cond_e
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_7
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
