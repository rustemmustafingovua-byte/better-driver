.class public final Lo0/s4;
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

.field public final synthetic q:Z

.field public final synthetic r:Ls/i;

.field public final synthetic s:Z

.field public final synthetic t:Li9/a;

.field public final synthetic u:F

.field public final synthetic v:Lz0/d;


# direct methods
.method public constructor <init>(Lf1/r;Lm1/h0;JFLp/x;ZLs/i;ZLi9/a;FLz0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/s4;->l:Lf1/r;

    iput-object p2, p0, Lo0/s4;->m:Lm1/h0;

    iput-wide p3, p0, Lo0/s4;->n:J

    iput p5, p0, Lo0/s4;->o:F

    iput-object p6, p0, Lo0/s4;->p:Lp/x;

    iput-boolean p7, p0, Lo0/s4;->q:Z

    iput-object p8, p0, Lo0/s4;->r:Ls/i;

    iput-boolean p9, p0, Lo0/s4;->s:Z

    iput-object p10, p0, Lo0/s4;->t:Li9/a;

    iput p11, p0, Lo0/s4;->u:F

    iput-object p12, p0, Lo0/s4;->v:Lz0/d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    and-int/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lo0/n1;->a:Lc2/k;

    sget-object v2, Lo0/v1;->a:Lo0/v1;

    iget-object v3, v0, Lo0/s4;->l:Lf1/r;

    invoke-interface {v3, v2}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v7

    iget-wide v2, v0, Lo0/s4;->n:J

    iget v4, v0, Lo0/s4;->o:F

    invoke-static {v2, v3, v4, v1}, Lo0/t4;->e(JFLr0/q;)J

    move-result-wide v9

    sget-object v2, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {v1, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    iget v3, v0, Lo0/s4;->u:F

    check-cast v2, Lb3/c;

    invoke-interface {v2, v3}, Lb3/c;->V(F)F

    move-result v12

    iget-object v8, v0, Lo0/s4;->m:Lm1/h0;

    iget-object v11, v0, Lo0/s4;->p:Lp/x;

    invoke-static/range {v7 .. v12}, Lo0/t4;->d(Lf1/r;Lm1/h0;JLp/x;F)Lf1/r;

    move-result-object v13

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v3, v2, v5}, Lo0/a3;->a(IFZ)Lo0/b3;

    move-result-object v16

    iget-boolean v2, v0, Lo0/s4;->s:Z

    iget-object v3, v0, Lo0/s4;->t:Li9/a;

    iget-boolean v14, v0, Lo0/s4;->q:Z

    iget-object v15, v0, Lo0/s4;->r:Ls/i;

    const/16 v18, 0x0

    move/from16 v17, v2

    move-object/from16 v19, v3

    invoke-static/range {v13 .. v19}, Lz/c;->a(Lf1/r;ZLs/i;Lo0/b3;ZLm2/h;Li9/a;)Lf1/r;

    move-result-object v2

    new-instance v3, Ln/p1;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Ln/p1;-><init>(I)V

    new-instance v4, Lp0/g;

    invoke-direct {v4, v3}, Lp0/g;-><init>(Ln/p1;)V

    invoke-interface {v2, v4}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v2

    sget-object v3, Lf1/c;->l:Lf1/j;

    invoke-static {v3, v6}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v3

    iget-wide v7, v1, Lr0/q;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v2, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v8, Le2/h;->b:Le2/g;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Le2/g;->b:Le2/f;

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v9, v1, Lr0/q;->S:Z

    if-eqz v9, :cond_1

    invoke-virtual {v1, v8}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_1
    sget-object v8, Le2/g;->f:Le2/e;

    invoke-static {v8, v3, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v7, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->g:Le2/e;

    iget-boolean v7, v1, Lr0/q;->S:Z

    if-nez v7, :cond_2

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    invoke-static {v4, v1, v4, v3}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_3
    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v2, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Lo0/s4;->v:Lz0/d;

    invoke-virtual {v0, v1, v2}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
