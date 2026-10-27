.class public final Lp0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:Lr0/r2;

.field public final synthetic m:J

.field public final synthetic n:Lp2/m0;

.field public final synthetic o:Li9/e;


# direct methods
.method public constructor <init>(Ln/d1;JLp2/m0;Li9/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/t;->l:Lr0/r2;

    iput-wide p2, p0, Lp0/t;->m:J

    iput-object p4, p0, Lp0/t;->n:Lp2/m0;

    iput-object p5, p0, Lp0/t;->o:Li9/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lf1/r;

    move-object v4, p2

    check-cast v4, Lr0/q;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_1

    invoke-virtual {v4, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    or-int/2addr p2, p3

    :cond_1
    and-int/lit8 p3, p2, 0x13

    const/16 v0, 0x12

    const/4 v1, 0x0

    const/4 v6, 0x1

    if-eq p3, v0, :cond_2

    move p3, v6

    goto :goto_1

    :cond_2
    move p3, v1

    :goto_1
    and-int/2addr p2, v6

    invoke-virtual {v4, p2, p3}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lp0/t;->l:Lr0/r2;

    invoke-virtual {v4, p2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez p3, :cond_3

    sget-object p3, Lr0/m;->a:Lr0/e;

    if-ne v0, p3, :cond_4

    :cond_3
    new-instance v0, Lb0/a;

    const/16 p3, 0x18

    invoke-direct {v0, p3, p2}, Lb0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v0, Li9/c;

    invoke-static {p1, v0}, Lm1/v;->o(Lf1/r;Li9/c;)Lf1/r;

    move-result-object p1

    sget-object p2, Lf1/c;->l:Lf1/j;

    invoke-static {p2, v1}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object p2

    iget-wide v0, v4, Lr0/q;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p3

    invoke-virtual {v4}, Lr0/q;->m()Lr0/j1;

    move-result-object v0

    invoke-static {p1, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object p1

    sget-object v1, Le2/h;->b:Le2/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Le2/g;->b:Le2/f;

    invoke-virtual {v4}, Lr0/q;->e0()V

    iget-boolean v2, v4, Lr0/q;->S:Z

    if-eqz v2, :cond_5

    invoke-virtual {v4, v1}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_2
    sget-object v1, Le2/g;->f:Le2/e;

    invoke-static {v1, p2, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object p2, Le2/g;->e:Le2/e;

    invoke-static {p2, v0, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object p2, Le2/g;->g:Le2/e;

    iget-boolean v0, v4, Lr0/q;->S:Z

    if-nez v0, :cond_6

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-static {p3, v4, p3, p2}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_7
    sget-object p2, Le2/g;->d:Le2/e;

    invoke-static {p2, p1, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 v5, 0x0

    iget-wide v0, p0, Lp0/t;->m:J

    iget-object v2, p0, Lp0/t;->n:Lp2/m0;

    iget-object v3, p0, Lp0/t;->o:Li9/e;

    invoke-static/range {v0 .. v5}, Lp0/y;->b(JLp2/m0;Li9/e;Lr0/q;I)V

    invoke-virtual {v4, v6}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Lr0/q;->W()V

    :goto_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
