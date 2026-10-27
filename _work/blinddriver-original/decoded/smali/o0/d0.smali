.class public final Lo0/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lz0/d;


# direct methods
.method public synthetic constructor <init>(Lz0/d;I)V
    .locals 0

    iput p2, p0, Lo0/d0;->l:I

    iput-object p1, p0, Lo0/d0;->m:Lz0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lo0/d0;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    and-int/2addr p2, v2

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_6

    const/high16 p2, 0x3f800000    # 1.0f

    float-to-double v0, p2

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "invalid weight; must be greater than zero"

    invoke-static {v0}, Lv/a;->a(Ljava/lang/String;)V

    :goto_1
    new-instance v4, Lu/j0;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, p2, v0

    if-lez v1, :cond_2

    move p2, v0

    :cond_2
    invoke-direct {v4, p2, v2}, Lu/j0;-><init>(FZ)V

    int-to-float v5, v3

    int-to-float v7, v3

    const/4 v8, 0x0

    const/16 v9, 0xa

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object p2

    sget-object v0, Lf1/c;->l:Lf1/j;

    invoke-static {v0, v3}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v0

    iget-wide v4, p1, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {p1}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {p2, p1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object p2

    sget-object v5, Le2/h;->b:Le2/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le2/g;->b:Le2/f;

    invoke-virtual {p1}, Lr0/q;->e0()V

    iget-boolean v6, p1, Lr0/q;->S:Z

    if-eqz v6, :cond_3

    invoke-virtual {p1, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_2
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v0, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v4, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->g:Le2/e;

    iget-boolean v4, p1, Lr0/q;->S:Z

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    invoke-static {v1, p1, v1, v0}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_5
    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, p2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lo0/d0;->m:Lz0/d;

    invoke-virtual {p0, p1, p2}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_7

    move v0, v3

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    and-int/2addr p2, v3

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p2, Lu/h;->c:Lu/c;

    sget-object v0, Lf1/c;->x:Lf1/h;

    invoke-static {p2, v0, p1, v2}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object p2

    iget-wide v0, p1, Lr0/q;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {p1}, Lr0/q;->m()Lr0/j1;

    move-result-object v1

    sget-object v2, Lf1/o;->a:Lf1/o;

    invoke-static {v2, p1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v4, Le2/h;->b:Le2/g;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Le2/g;->b:Le2/f;

    invoke-virtual {p1}, Lr0/q;->e0()V

    iget-boolean v5, p1, Lr0/q;->S:Z

    if-eqz v5, :cond_8

    invoke-virtual {p1, v4}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_5
    sget-object v4, Le2/g;->f:Le2/e;

    invoke-static {v4, p2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object p2, Le2/g;->e:Le2/e;

    invoke-static {p2, v1, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object p2, Le2/g;->g:Le2/e;

    iget-boolean v1, p1, Lr0/q;->S:Z

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    invoke-static {v0, p1, v0, p2}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_a
    sget-object p2, Le2/g;->d:Le2/e;

    invoke-static {p2, v2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 p2, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lo0/d0;->m:Lz0/d;

    sget-object v0, Lu/s;->a:Lu/s;

    invoke-virtual {p0, v0, p1, p2}, Lz0/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lr0/q;->q(Z)V

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_6
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_c

    move v0, v3

    goto :goto_7

    :cond_c
    move v0, v2

    :goto_7
    and-int/2addr p2, v3

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_10

    sget-object p2, Lu/h;->c:Lu/c;

    sget-object v0, Lf1/c;->x:Lf1/h;

    invoke-static {p2, v0, p1, v2}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object p2

    iget-wide v0, p1, Lr0/q;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {p1}, Lr0/q;->m()Lr0/j1;

    move-result-object v1

    sget-object v2, Lf1/o;->a:Lf1/o;

    invoke-static {v2, p1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v4, Le2/h;->b:Le2/g;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Le2/g;->b:Le2/f;

    invoke-virtual {p1}, Lr0/q;->e0()V

    iget-boolean v5, p1, Lr0/q;->S:Z

    if-eqz v5, :cond_d

    invoke-virtual {p1, v4}, Lr0/q;->l(Li9/a;)V

    goto :goto_8

    :cond_d
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_8
    sget-object v4, Le2/g;->f:Le2/e;

    invoke-static {v4, p2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object p2, Le2/g;->e:Le2/e;

    invoke-static {p2, v1, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object p2, Le2/g;->g:Le2/e;

    iget-boolean v1, p1, Lr0/q;->S:Z

    if-nez v1, :cond_e

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    invoke-static {v0, p1, v0, p2}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_f
    sget-object p2, Le2/g;->d:Le2/e;

    invoke-static {p2, v2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 p2, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lo0/d0;->m:Lz0/d;

    sget-object v0, Lu/s;->a:Lu/s;

    invoke-virtual {p0, v0, p1, p2}, Lz0/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_10
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_9
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
