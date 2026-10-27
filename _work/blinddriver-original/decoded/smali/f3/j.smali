.class public final Lf3/j;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lf3/x;

.field public final synthetic n:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lf3/x;Lr0/u0;I)V
    .locals 0

    iput p3, p0, Lf3/j;->l:I

    iput-object p1, p0, Lf3/j;->m:Lf3/x;

    iput-object p2, p0, Lf3/j;->n:Lr0/u0;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lf3/j;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-object v2, p0, Lf3/j;->n:Lr0/u0;

    iget-object p0, p0, Lf3/j;->m:Lf3/x;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    and-int/2addr p2, v5

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lf3/k;->b:Lr0/a0;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object p2

    new-instance v0, Lf3/j;

    invoke-direct {v0, p0, v2, v4}, Lf3/j;-><init>(Lf3/x;Lr0/u0;I)V

    const p0, 0x3ceea85c

    invoke-static {p0, v0, p1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object p0

    const/16 v0, 0x38

    invoke-static {p2, p0, p1, v0}, Lr0/r;->a(Lj6/g0;Li9/e;Lr0/q;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_1
    return-object v1

    :pswitch_0
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    and-int/2addr p2, v5

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lr0/m;->a:Lr0/e;

    if-ne p2, v0, :cond_3

    sget-object p2, Lf3/b;->p:Lf3/b;

    invoke-virtual {p1, p2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast p2, Li9/c;

    sget-object v3, Lf1/o;->a:Lf1/o;

    invoke-static {v3, v4, p2}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object p2

    invoke-virtual {p1, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_4

    if-ne v6, v0, :cond_5

    :cond_4
    new-instance v6, Lf3/h;

    invoke-direct {v6, p0, v5}, Lf3/h;-><init>(Lf3/x;I)V

    invoke-virtual {p1, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast v6, Li9/c;

    invoke-static {p2, v6}, Lc2/x;->n(Lf1/r;Li9/c;)Lf1/r;

    move-result-object p2

    invoke-virtual {p0}, Lf3/x;->getCanCalculatePosition()Z

    move-result p0

    if-eqz p0, :cond_6

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    const/4 p0, 0x0

    :goto_3
    invoke-static {p2, p0}, Lj1/g;->a(Lf1/r;F)Lf1/r;

    move-result-object p0

    sget-object p2, Lf3/k;->a:Lr0/a0;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li9/e;

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_7

    sget-object v2, Lf3/d;->c:Lf3/d;

    invoke-virtual {p1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v2, Lc2/r0;

    iget-wide v6, p1, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {p1}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    invoke-static {p0, p1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object p0

    sget-object v6, Le2/h;->b:Le2/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le2/g;->b:Le2/f;

    invoke-virtual {p1}, Lr0/q;->e0()V

    iget-boolean v7, p1, Lr0/q;->S:Z

    if-eqz v7, :cond_8

    invoke-virtual {p1, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_4
    sget-object v6, Le2/g;->f:Le2/e;

    invoke-static {v6, v2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v3, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Le2/g;->g:Le2/e;

    invoke-static {p1, v0, v2}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v0, Le2/g;->h:Le2/d;

    invoke-static {p1, v0}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, p0, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v5}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_5
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
