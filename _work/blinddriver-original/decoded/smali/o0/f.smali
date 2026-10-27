.class public final Lo0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Li9/e;

.field public final synthetic m:Li9/e;

.field public final synthetic n:J

.field public final synthetic o:J

.field public final synthetic p:J

.field public final synthetic q:Lz0/d;


# direct methods
.method public constructor <init>(Li9/e;Li9/e;JJJJLz0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/f;->l:Li9/e;

    iput-object p2, p0, Lo0/f;->m:Li9/e;

    iput-wide p5, p0, Lo0/f;->n:J

    iput-wide p7, p0, Lo0/f;->o:J

    iput-wide p9, p0, Lo0/f;->p:J

    iput-object p11, p0, Lo0/f;->q:Lz0/d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v4, p1

    check-cast v4, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq p2, v0, :cond_0

    move p2, v6

    goto :goto_0

    :cond_0
    move p2, v7

    :goto_0
    and-int/2addr p1, v6

    invoke-virtual {v4, p1, p2}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lf1/o;->a:Lf1/o;

    sget-object p2, Lo0/j;->e:Lu/s0;

    invoke-static {p1, p2}, Lu/b;->o(Lf1/r;Lu/s0;)Lf1/r;

    move-result-object p1

    sget-object p2, Lu/h;->c:Lu/c;

    sget-object v0, Lf1/c;->x:Lf1/h;

    invoke-static {p2, v0, v4, v7}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object p2

    iget-wide v0, v4, Lr0/q;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {v4}, Lr0/q;->m()Lr0/j1;

    move-result-object v1

    invoke-static {p1, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object p1

    sget-object v2, Le2/h;->b:Le2/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Le2/g;->b:Le2/f;

    invoke-virtual {v4}, Lr0/q;->e0()V

    iget-boolean v2, v4, Lr0/q;->S:Z

    if-eqz v2, :cond_1

    invoke-virtual {v4, v8}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_1
    sget-object v9, Le2/g;->f:Le2/e;

    invoke-static {v9, p2, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object p2, Le2/g;->e:Le2/e;

    invoke-static {p2, v1, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v10, Le2/g;->g:Le2/e;

    iget-boolean v1, v4, Lr0/q;->S:Z

    if-nez v1, :cond_2

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-static {v0, v4, v0, v10}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_3
    sget-object v11, Le2/g;->d:Le2/e;

    invoke-static {v11, p1, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const p1, 0x14a0f326

    invoke-virtual {v4, p1}, Lr0/q;->b0(I)V

    invoke-virtual {v4, v7}, Lr0/q;->q(Z)V

    iget-object p1, p0, Lo0/f;->l:Li9/e;

    if-nez p1, :cond_4

    const p1, 0x14a59771

    invoke-virtual {v4, p1}, Lr0/q;->b0(I)V

    :goto_2
    invoke-virtual {v4, v7}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_4
    const v0, 0x14a59772

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lq0/h;->f:Lq0/g0;

    invoke-static {v0, v4}, Lo0/i5;->a(Lq0/g0;Lr0/q;)Lp2/m0;

    move-result-object v2

    new-instance v0, Lo0/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lo0/e;-><init>(ILi9/e;)V

    const p1, 0x43fb671

    invoke-static {p1, v0, v4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v3

    const/16 v5, 0x180

    iget-wide v0, p0, Lo0/f;->n:J

    invoke-static/range {v0 .. v5}, Lp0/h;->a(JLp2/m0;Li9/e;Lr0/q;I)V

    goto :goto_2

    :goto_3
    iget-object p1, p0, Lo0/f;->m:Li9/e;

    if-nez p1, :cond_5

    const p1, 0x14b17479

    invoke-virtual {v4, p1}, Lr0/q;->b0(I)V

    :goto_4
    invoke-virtual {v4, v7}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_5
    const v0, 0x14b1747a

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lq0/h;->h:Lq0/g0;

    invoke-static {v0, v4}, Lo0/i5;->a(Lq0/g0;Lr0/q;)Lp2/m0;

    move-result-object v2

    new-instance v0, Lo0/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lo0/e;-><init>(ILi9/e;)V

    const p1, 0x2a0e58f2

    invoke-static {p1, v0, v4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v3

    const/16 v5, 0x180

    iget-wide v0, p0, Lo0/f;->o:J

    invoke-static/range {v0 .. v5}, Lp0/h;->a(JLp2/m0;Li9/e;Lr0/q;I)V

    goto :goto_4

    :goto_5
    sget-object p1, Lf1/c;->z:Lf1/h;

    new-instance v0, Lu/y;

    invoke-direct {v0, p1}, Lu/y;-><init>(Lf1/h;)V

    sget-object p1, Lf1/c;->l:Lf1/j;

    invoke-static {p1, v7}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object p1

    iget-wide v1, v4, Lr0/q;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v4}, Lr0/q;->m()Lr0/j1;

    move-result-object v2

    invoke-static {v0, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    invoke-virtual {v4}, Lr0/q;->e0()V

    iget-boolean v3, v4, Lr0/q;->S:Z

    if-eqz v3, :cond_6

    invoke-virtual {v4, v8}, Lr0/q;->l(Li9/a;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_6
    invoke-static {v9, p1, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {p2, v2, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-boolean p1, v4, Lr0/q;->S:Z

    if-nez p1, :cond_7

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    invoke-static {v1, v4, v1, v10}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_8
    invoke-static {v11, v0, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object p1, Lq0/h;->b:Lq0/g0;

    invoke-static {p1, v4}, Lo0/i5;->a(Lq0/g0;Lr0/q;)Lp2/m0;

    move-result-object v2

    const/4 v5, 0x0

    iget-wide v0, p0, Lo0/f;->p:J

    iget-object v3, p0, Lo0/f;->q:Lz0/d;

    invoke-static/range {v0 .. v5}, Lp0/h;->a(JLp2/m0;Li9/e;Lr0/q;I)V

    invoke-virtual {v4, v6}, Lr0/q;->q(Z)V

    invoke-virtual {v4, v6}, Lr0/q;->q(Z)V

    goto :goto_7

    :cond_9
    invoke-virtual {v4}, Lr0/q;->W()V

    :goto_7
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
