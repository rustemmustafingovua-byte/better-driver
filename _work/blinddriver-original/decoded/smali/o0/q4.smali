.class public final Lo0/q4;
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

.field public final synthetic q:F

.field public final synthetic r:Lz0/d;


# direct methods
.method public constructor <init>(Lf1/r;Lm1/h0;JFLp/x;FLz0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/q4;->l:Lf1/r;

    iput-object p2, p0, Lo0/q4;->m:Lm1/h0;

    iput-wide p3, p0, Lo0/q4;->n:J

    iput p5, p0, Lo0/q4;->o:F

    iput-object p6, p0, Lo0/q4;->p:Lp/x;

    iput p7, p0, Lo0/q4;->q:F

    iput-object p8, p0, Lo0/q4;->r:Lz0/d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

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

    sget-object v0, Lt8/z;->a:Lt8/z;

    if-eqz p2, :cond_6

    iget-wide v4, p0, Lo0/q4;->n:J

    iget p2, p0, Lo0/q4;->o:F

    invoke-static {v4, v5, p2, p1}, Lo0/t4;->e(JFLr0/q;)J

    move-result-wide v8

    sget-object p2, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {p1, p2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p2

    iget v1, p0, Lo0/q4;->q:F

    check-cast p2, Lb3/c;

    invoke-interface {p2, v1}, Lb3/c;->V(F)F

    move-result v11

    iget-object v6, p0, Lo0/q4;->l:Lf1/r;

    iget-object v7, p0, Lo0/q4;->m:Lm1/h0;

    iget-object v10, p0, Lo0/q4;->p:Lp/x;

    invoke-static/range {v6 .. v11}, Lo0/t4;->d(Lf1/r;Lm1/h0;JLp/x;F)Lf1/r;

    move-result-object p2

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lr0/m;->a:Lr0/e;

    if-ne v1, v4, :cond_1

    new-instance v1, Ln/p1;

    const/16 v5, 0xc

    invoke-direct {v1, v5}, Ln/p1;-><init>(I)V

    invoke-virtual {p1, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Li9/c;

    invoke-static {p2, v3, v1}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object p2

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_2

    sget-object v1, Lo0/p4;->a:Lo0/p4;

    invoke-virtual {p1, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {p2, v0, v1}, Ly1/g0;->a(Lf1/r;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lf1/r;

    move-result-object p2

    sget-object v1, Lf1/c;->l:Lf1/j;

    invoke-static {v1, v2}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v1

    iget-wide v4, p1, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {p1}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {p2, p1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object p2

    sget-object v6, Le2/h;->b:Le2/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le2/g;->b:Le2/f;

    invoke-virtual {p1}, Lr0/q;->e0()V

    iget-boolean v7, p1, Lr0/q;->S:Z

    if-eqz v7, :cond_3

    invoke-virtual {p1, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_1
    sget-object v6, Le2/g;->f:Le2/e;

    invoke-static {v6, v1, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v5, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->g:Le2/e;

    iget-boolean v5, p1, Lr0/q;->S:Z

    if-nez v5, :cond_4

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    invoke-static {v4, p1, v4, v1}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_5
    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, p2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lo0/q4;->r:Lz0/d;

    invoke-virtual {p0, p1, p2}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lr0/q;->q(Z)V

    return-object v0

    :cond_6
    invoke-virtual {p1}, Lr0/q;->W()V

    return-object v0
.end method
