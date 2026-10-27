.class public final Lo0/r4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lf1/r;

.field public final synthetic m:Lm1/h0;

.field public final synthetic n:J

.field public final synthetic o:F

.field public final synthetic p:Lp/x;

.field public final synthetic q:Ls/i;

.field public final synthetic r:Z

.field public final synthetic s:Li9/a;

.field public final synthetic t:F

.field public final synthetic u:Lz0/d;


# direct methods
.method public constructor <init>(Lf1/r;Lm1/h0;JFLp/x;Ls/i;ZLi9/a;FLz0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/r4;->l:Lf1/r;

    iput-object p2, p0, Lo0/r4;->m:Lm1/h0;

    iput-wide p3, p0, Lo0/r4;->n:J

    iput p5, p0, Lo0/r4;->o:F

    iput-object p6, p0, Lo0/r4;->p:Lp/x;

    iput-object p7, p0, Lo0/r4;->q:Ls/i;

    iput-boolean p8, p0, Lo0/r4;->r:Z

    iput-object p9, p0, Lo0/r4;->s:Li9/a;

    iput p10, p0, Lo0/r4;->t:F

    iput-object p11, p0, Lo0/r4;->u:Lz0/d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/2addr p2, v3

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lo0/n1;->a:Lc2/k;

    sget-object p2, Lo0/v1;->a:Lo0/v1;

    iget-object v0, p0, Lo0/r4;->l:Lf1/r;

    invoke-interface {v0, p2}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v4

    iget-wide v0, p0, Lo0/r4;->n:J

    iget p2, p0, Lo0/r4;->o:F

    invoke-static {v0, v1, p2, p1}, Lo0/t4;->e(JFLr0/q;)J

    move-result-wide v6

    sget-object p2, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {p1, p2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p2

    iget v0, p0, Lo0/r4;->t:F

    check-cast p2, Lb3/c;

    invoke-interface {p2, v0}, Lb3/c;->V(F)F

    move-result v9

    iget-object v5, p0, Lo0/r4;->m:Lm1/h0;

    iget-object v8, p0, Lo0/r4;->p:Lp/x;

    invoke-static/range {v4 .. v9}, Lo0/t4;->d(Lf1/r;Lm1/h0;JLp/x;F)Lf1/r;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-static {v1, v0, v2}, Lo0/a3;->a(IFZ)Lo0/b3;

    move-result-object v0

    iget-boolean v1, p0, Lo0/r4;->r:Z

    iget-object v4, p0, Lo0/r4;->s:Li9/a;

    iget-object v5, p0, Lo0/r4;->q:Ls/i;

    invoke-static {p2, v5, v0, v1, v4}, Lp/o;->j(Lf1/r;Ls/i;Lo0/b3;ZLi9/a;)Lf1/r;

    move-result-object p2

    new-instance v0, Ln/p1;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ln/p1;-><init>(I)V

    new-instance v1, Lp0/g;

    invoke-direct {v1, v0}, Lp0/g;-><init>(Ln/p1;)V

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

    if-eqz v6, :cond_1

    invoke-virtual {p1, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_1
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v0, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v4, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->g:Le2/e;

    iget-boolean v4, p1, Lr0/q;->S:Z

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-static {v1, p1, v1, v0}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_3
    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, p2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lo0/r4;->u:Lz0/d;

    invoke-virtual {p0, p1, p2}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
