.class public final Lp/p;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/n;
.implements Le2/l1;
.implements Le2/z1;


# instance fields
.field public A:Lm1/h0;

.field public B:J

.field public C:Lb3/m;

.field public D:Lm1/v;

.field public E:Lm1/h0;

.field public F:Lm1/v;

.field public z:J


# virtual methods
.method public final C(Lm2/x;)V
    .locals 0

    iget-object p0, p0, Lp/p;->A:Lm1/h0;

    invoke-static {p1, p0}, Lm2/v;->d(Lm2/x;Lm1/h0;)V

    return-void
.end method

.method public final d0()V
    .locals 2

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v0, p0, Lp/p;->B:J

    const/4 v0, 0x0

    iput-object v0, p0, Lp/p;->C:Lb3/m;

    iput-object v0, p0, Lp/p;->D:Lm1/v;

    iput-object v0, p0, Lp/p;->E:Lm1/h0;

    invoke-static {p0}, Le2/l;->k(Le2/n;)V

    return-void
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final z(Le2/j0;)V
    .locals 9

    iget-object v0, p1, Le2/j0;->l:Lo1/b;

    iget-object v1, p0, Lp/p;->A:Lm1/h0;

    sget-object v2, Lm1/v;->b:Lm1/e0;

    if-ne v1, v2, :cond_1

    iget-wide v0, p0, Lp/p;->z:J

    sget-wide v2, Lm1/p;->g:J

    invoke-static {v0, v1, v2, v3}, Lm1/p;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v2, p0, Lp/p;->z:J

    const-wide/16 v6, 0x0

    const/16 v8, 0x7e

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lo1/d;->h(Lo1/d;JJJI)V

    goto :goto_1

    :cond_0
    move-object v1, p1

    goto :goto_1

    :cond_1
    move-object v1, p1

    invoke-interface {v0}, Lo1/d;->d()J

    move-result-wide v2

    iget-wide v4, p0, Lp/p;->B:J

    invoke-static {v2, v3, v4, v5}, Ll1/e;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Le2/j0;->getLayoutDirection()Lb3/m;

    move-result-object p1

    iget-object v2, p0, Lp/p;->C:Lb3/m;

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lp/p;->E:Lm1/h0;

    iget-object v2, p0, Lp/p;->A:Lm1/h0;

    invoke-static {p1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lp/p;->D:Lm1/v;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lb0/n;

    const/16 v2, 0x1b

    invoke-direct {p1, v2, p0, v1}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Le2/l;->r(Lf1/q;Li9/a;)V

    iget-object p1, p0, Lp/p;->F:Lm1/v;

    const/4 v2, 0x0

    iput-object v2, p0, Lp/p;->F:Lm1/v;

    :goto_0
    iput-object p1, p0, Lp/p;->D:Lm1/v;

    invoke-interface {v0}, Lo1/d;->d()J

    move-result-wide v2

    iput-wide v2, p0, Lp/p;->B:J

    invoke-virtual {v1}, Le2/j0;->getLayoutDirection()Lb3/m;

    move-result-object v0

    iput-object v0, p0, Lp/p;->C:Lb3/m;

    iget-object v0, p0, Lp/p;->A:Lm1/h0;

    iput-object v0, p0, Lp/p;->E:Lm1/h0;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v2, p0, Lp/p;->z:J

    sget-wide v4, Lm1/p;->g:J

    invoke-static {v2, v3, v4, v5}, Lm1/p;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    iget-wide v2, p0, Lp/p;->z:J

    invoke-static {v1, p1, v2, v3}, Lm1/v;->l(Lo1/d;Lm1/v;J)V

    :cond_3
    :goto_1
    invoke-virtual {v1}, Le2/j0;->b()V

    return-void
.end method
