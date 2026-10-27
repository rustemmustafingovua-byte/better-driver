.class public final Lo0/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic A:Li9/e;

.field public final synthetic B:Li9/e;

.field public final synthetic C:Li9/e;

.field public final synthetic D:Lm1/h0;

.field public final synthetic l:Lf1/r;

.field public final synthetic m:Li9/e;

.field public final synthetic n:Z

.field public final synthetic o:Lo0/x4;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Li9/c;

.field public final synthetic r:Z

.field public final synthetic s:Lp2/m0;

.field public final synthetic t:Lb0/q1;

.field public final synthetic u:Lb0/p1;

.field public final synthetic v:Z

.field public final synthetic w:I

.field public final synthetic x:I

.field public final synthetic y:Lu2/d0;

.field public final synthetic z:Ls/i;


# direct methods
.method public constructor <init>(Lf1/r;Li9/e;ZLo0/x4;Ljava/lang/String;Li9/c;ZLp2/m0;Lb0/q1;Lb0/p1;ZIILu2/d0;Ls/i;Li9/e;Li9/e;Li9/e;Lm1/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/i2;->l:Lf1/r;

    iput-object p2, p0, Lo0/i2;->m:Li9/e;

    iput-boolean p3, p0, Lo0/i2;->n:Z

    iput-object p4, p0, Lo0/i2;->o:Lo0/x4;

    iput-object p5, p0, Lo0/i2;->p:Ljava/lang/String;

    iput-object p6, p0, Lo0/i2;->q:Li9/c;

    iput-boolean p7, p0, Lo0/i2;->r:Z

    iput-object p8, p0, Lo0/i2;->s:Lp2/m0;

    iput-object p9, p0, Lo0/i2;->t:Lb0/q1;

    iput-object p10, p0, Lo0/i2;->u:Lb0/p1;

    iput-boolean p11, p0, Lo0/i2;->v:Z

    iput p12, p0, Lo0/i2;->w:I

    iput p13, p0, Lo0/i2;->x:I

    iput-object p14, p0, Lo0/i2;->y:Lu2/d0;

    iput-object p15, p0, Lo0/i2;->z:Ls/i;

    move-object/from16 p1, p16

    iput-object p1, p0, Lo0/i2;->A:Li9/e;

    move-object/from16 p1, p17

    iput-object p1, p0, Lo0/i2;->B:Li9/e;

    move-object/from16 p1, p18

    iput-object p1, p0, Lo0/i2;->C:Li9/e;

    move-object/from16 p1, p19

    iput-object p1, p0, Lo0/i2;->D:Lm1/h0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/2addr v1, v3

    invoke-virtual {v15, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lo0/i2;->m:Li9/e;

    sget-object v2, Lf1/o;->a:Lf1/o;

    if-eqz v1, :cond_2

    const v1, -0x35da2c2d

    invoke-virtual {v15, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v6, Lr0/m;->a:Lr0/e;

    if-ne v1, v6, :cond_1

    new-instance v1, Ln/p1;

    const/16 v6, 0x9

    invoke-direct {v1, v6}, Ln/p1;-><init>(I)V

    invoke-virtual {v15, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Li9/c;

    invoke-static {v2, v3, v1}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v6

    invoke-static {v15}, Lp0/y;->e(Lr0/q;)F

    move-result v8

    const/4 v10, 0x0

    const/16 v11, 0xd

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v2

    invoke-virtual {v15, v4}, Lr0/q;->q(Z)V

    goto :goto_1

    :cond_2
    const v1, -0x35d45166    # -2812838.5f

    invoke-virtual {v15, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v15, v4}, Lr0/q;->q(Z)V

    :goto_1
    iget-object v1, v0, Lo0/i2;->l:Lf1/r;

    invoke-interface {v1, v2}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v1

    sget-object v2, Lf2/o0;->a:Lr0/a0;

    invoke-virtual {v15, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    sget-object v2, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {v15, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lp0/y;->a:F

    iget-boolean v3, v0, Lo0/i2;->n:Z

    if-eqz v3, :cond_3

    new-instance v3, Lo0/a1;

    invoke-direct {v3, v2, v5}, Lo0/a1;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v4, v3}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v1

    :cond_3
    sget v2, Lo0/d2;->c:F

    sget v3, Lo0/d2;->b:F

    invoke-static {v1, v2, v3}, Lu/b1;->a(Lf1/r;FF)Lf1/r;

    move-result-object v2

    new-instance v13, Lm1/j0;

    iget-object v1, v0, Lo0/i2;->o:Lo0/x4;

    iget-boolean v3, v0, Lo0/i2;->n:Z

    if-eqz v3, :cond_4

    iget-wide v4, v1, Lo0/x4;->j:J

    goto :goto_2

    :cond_4
    iget-wide v4, v1, Lo0/x4;->i:J

    :goto_2
    invoke-direct {v13, v4, v5}, Lm1/j0;-><init>(J)V

    new-instance v16, Lo0/h2;

    iget-object v4, v0, Lo0/i2;->C:Li9/e;

    iget-object v5, v0, Lo0/i2;->D:Lm1/h0;

    iget-object v6, v0, Lo0/i2;->p:Ljava/lang/String;

    iget-boolean v7, v0, Lo0/i2;->r:Z

    iget-boolean v8, v0, Lo0/i2;->v:Z

    iget-object v10, v0, Lo0/i2;->y:Lu2/d0;

    iget-object v12, v0, Lo0/i2;->z:Ls/i;

    iget-object v9, v0, Lo0/i2;->m:Li9/e;

    iget-object v11, v0, Lo0/i2;->A:Li9/e;

    iget-object v14, v0, Lo0/i2;->B:Li9/e;

    move-object/from16 v27, v1

    move/from16 v22, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v23, v9

    move-object/from16 v20, v10

    move-object/from16 v24, v11

    move-object/from16 v21, v12

    move-object/from16 v25, v14

    invoke-direct/range {v16 .. v28}, Lo0/h2;-><init>(Ljava/lang/String;ZZLu2/d0;Ls/i;ZLi9/e;Li9/e;Li9/e;Li9/e;Lo0/x4;Lm1/h0;)V

    move-object/from16 v1, v16

    const v3, -0x46e2e35b

    invoke-static {v3, v1, v15}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v14

    const/16 v16, 0x0

    iget-object v1, v0, Lo0/i2;->q:Li9/c;

    iget-object v4, v0, Lo0/i2;->s:Lp2/m0;

    iget-object v5, v0, Lo0/i2;->t:Lb0/q1;

    iget-object v6, v0, Lo0/i2;->u:Lb0/p1;

    iget v8, v0, Lo0/i2;->w:I

    iget v9, v0, Lo0/i2;->x:I

    const/4 v11, 0x0

    move-object/from16 v0, v17

    move/from16 v3, v18

    move/from16 v7, v19

    invoke-static/range {v0 .. v16}, Lb0/q;->a(Ljava/lang/String;Li9/c;Lf1/r;ZLp2/m0;Lb0/q1;Lb0/p1;ZIILu2/d0;Li9/c;Ls/i;Lm1/j0;Lz0/d;Lr0/q;I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v15}, Lr0/q;->W()V

    :goto_3
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
