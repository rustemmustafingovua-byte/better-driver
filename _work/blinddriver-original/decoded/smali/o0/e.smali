.class public final Lo0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/e;


# direct methods
.method public synthetic constructor <init>(ILi9/e;)V
    .locals 0

    iput p1, p0, Lo0/e;->l:I

    iput-object p2, p0, Lo0/e;->m:Li9/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lo0/e;->l:I

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

    if-eqz p2, :cond_5

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
    new-instance v0, Lu/j0;

    invoke-direct {v0, p2, v3}, Lu/j0;-><init>(FZ)V

    sget-object p2, Lo0/j;->g:Lu/s0;

    invoke-static {v0, p2}, Lu/b;->o(Lf1/r;Lu/s0;)Lf1/r;

    move-result-object p2

    sget-object v0, Lf1/c;->x:Lf1/h;

    new-instance v1, Lu/y;

    invoke-direct {v1, v0}, Lu/y;-><init>(Lf1/h;)V

    invoke-interface {p2, v1}, Lf1/r;->d(Lf1/r;)Lf1/r;

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

    if-eqz v6, :cond_2

    invoke-virtual {p1, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_2
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v0, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v4, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->g:Le2/e;

    iget-boolean v4, p1, Lr0/q;->S:Z

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    invoke-static {v1, p1, v1, v0}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_4
    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, p2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lo0/e;->m:Li9/e;

    invoke-interface {p0, p1, p2}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_5
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

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v3

    :goto_4
    and-int/2addr p2, v2

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_a

    sget-object p2, Lf1/o;->a:Lf1/o;

    sget-object v0, Lo0/j;->f:Lu/s0;

    invoke-static {p2, v0}, Lu/b;->o(Lf1/r;Lu/s0;)Lf1/r;

    move-result-object p2

    sget-object v0, Lf1/c;->x:Lf1/h;

    new-instance v1, Lu/y;

    invoke-direct {v1, v0}, Lu/y;-><init>(Lf1/h;)V

    invoke-interface {p2, v1}, Lf1/r;->d(Lf1/r;)Lf1/r;

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

    if-eqz v6, :cond_7

    invoke-virtual {p1, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_5
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v0, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v4, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->g:Le2/e;

    iget-boolean v4, p1, Lr0/q;->S:Z

    if-nez v4, :cond_8

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    invoke-static {v1, p1, v1, v0}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_9
    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, p2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lo0/e;->m:Li9/e;

    invoke-interface {p0, p1, p2}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lr0/q;->q(Z)V

    goto :goto_6

    :cond_a
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_6
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
