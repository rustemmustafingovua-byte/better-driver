.class public final Lo0/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:F

.field public final synthetic m:Lu/s0;

.field public final synthetic n:J

.field public final synthetic o:Lz0/d;

.field public final synthetic p:J


# direct methods
.method public constructor <init>(FLu/s0;JLz0/d;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo0/p0;->l:F

    iput-object p2, p0, Lo0/p0;->m:Lu/s0;

    iput-wide p3, p0, Lo0/p0;->n:J

    iput-object p5, p0, Lo0/p0;->o:Lz0/d;

    iput-wide p6, p0, Lo0/p0;->p:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    check-cast v6, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    move v3, v1

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eq v2, v11, :cond_0

    move v2, v10

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v3, v10

    invoke-virtual {v6, v3, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lq0/q;->p:Lq0/q;

    invoke-static {v2, v6}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v12

    sget-object v2, Lq0/q;->o:Lq0/q;

    invoke-static {v2, v6}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v13

    sget-object v2, Lq0/q;->m:Lq0/q;

    invoke-static {v2, v6}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v14

    sget-object v2, Lq0/q;->n:Lq0/q;

    invoke-static {v2, v6}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v15

    iget v2, v0, Lo0/p0;->l:F

    sget-object v3, Lf1/o;->a:Lf1/o;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v10}, Lu/b1;->b(Lf1/r;FFI)Lf1/r;

    move-result-object v2

    iget-object v5, v0, Lo0/p0;->m:Lu/s0;

    invoke-static {v2, v5}, Lu/b;->o(Lf1/r;Lu/s0;)Lf1/r;

    move-result-object v2

    invoke-virtual {v6}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Lr0/m;->a:Lr0/e;

    if-ne v5, v7, :cond_1

    new-instance v5, Lo0/t0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v5, Lo0/t0;

    iget-wide v7, v6, Lr0/q;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v6}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v2, v6}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v6}, Lr0/q;->e0()V

    iget-boolean v1, v6, Lr0/q;->S:Z

    if-eqz v1, :cond_2

    invoke-virtual {v6, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lr0/q;->o0()V

    :goto_1
    sget-object v1, Le2/g;->f:Le2/e;

    invoke-static {v1, v5, v6}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v5, Le2/g;->e:Le2/e;

    invoke-static {v5, v8, v6}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v8, Le2/g;->g:Le2/e;

    iget-boolean v4, v6, Lr0/q;->S:Z

    if-nez v4, :cond_3

    invoke-virtual {v6}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4, v10}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    invoke-static {v7, v6, v7, v8}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_4
    sget-object v10, Le2/g;->d:Le2/e;

    invoke-static {v10, v2, v6}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-string v2, "leadingIcon"

    invoke-static {v3, v2}, Lc2/x;->l(Lf1/r;Ljava/lang/Object;)Lf1/r;

    move-result-object v2

    sget-object v4, Lf1/c;->x:Lf1/h;

    invoke-static {v14, v4}, Lm/v;->a(Ln/r0;Lf1/h;)Lm/a0;

    move-result-object v7

    move-object/from16 v16, v1

    invoke-static {v12, v11}, Lm/v;->d(Ln/x;I)Lm/a0;

    move-result-object v1

    invoke-virtual {v7, v1}, Lm/a0;->a(Lm/a0;)Lm/a0;

    move-result-object v1

    invoke-static {v15, v4}, Lm/v;->f(Ln/r0;Lf1/h;)Lm/b0;

    move-result-object v4

    invoke-static {v13, v11}, Lm/v;->e(Ln/x;I)Lm/b0;

    move-result-object v7

    invoke-virtual {v4, v7}, Lm/b0;->a(Lm/b0;)Lm/b0;

    move-result-object v4

    new-instance v7, Lo0/z3;

    const/4 v11, 0x1

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Lo0/p0;->n:J

    invoke-direct {v7, v11, v1, v2}, Lo0/z3;-><init>(IJ)V

    const v1, 0x28fd8f67

    invoke-static {v1, v7, v6}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v1

    move-object v2, v8

    const v8, 0x30030

    move-object v7, v9

    const/16 v9, 0x10

    move-object v11, v5

    const/4 v5, 0x0

    move-object/from16 p1, v13

    move-object/from16 p2, v15

    move-object/from16 v13, v16

    move-object v15, v11

    move-object/from16 v16, v12

    move-object v12, v2

    move-object v11, v7

    move-object/from16 v2, v17

    move-object v7, v6

    move-object/from16 v17, v14

    move-object v6, v1

    move-object v14, v3

    move-object/from16 v3, v18

    const/4 v1, 0x0

    invoke-static/range {v1 .. v9}, Lm/l;->b(ZLf1/r;Lm/a0;Lm/b0;Ljava/lang/String;Lz0/d;Lr0/q;II)V

    move-object v6, v7

    const-string v2, "label"

    invoke-static {v14, v2}, Lc2/x;->l(Lf1/r;Ljava/lang/Object;)Lf1/r;

    move-result-object v2

    sget v3, Lo0/r0;->a:F

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v2

    sget-object v3, Lu/h;->a:Lu/n;

    sget-object v4, Lf1/c;->v:Lf1/i;

    const/16 v5, 0x36

    invoke-static {v3, v4, v6, v5}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v3

    iget-wide v4, v6, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v6}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v2, v6}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    invoke-virtual {v6}, Lr0/q;->e0()V

    iget-boolean v7, v6, Lr0/q;->S:Z

    if-eqz v7, :cond_5

    invoke-virtual {v6, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Lr0/q;->o0()V

    :goto_2
    invoke-static {v13, v3, v6}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v15, v5, v6}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-boolean v3, v6, Lr0/q;->S:Z

    if-nez v3, :cond_6

    invoke-virtual {v6}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    invoke-static {v4, v6, v4, v12}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_7
    invoke-static {v10, v2, v6}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lo0/p0;->o:Lz0/d;

    invoke-virtual {v3, v6, v2}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lr0/q;->q(Z)V

    const-string v2, "trailingIcon"

    invoke-static {v14, v2}, Lc2/x;->l(Lf1/r;Ljava/lang/Object;)Lf1/r;

    move-result-object v2

    sget-object v3, Lf1/c;->z:Lf1/h;

    move-object/from16 v4, v17

    invoke-static {v4, v3}, Lm/v;->a(Ln/r0;Lf1/h;)Lm/a0;

    move-result-object v4

    move-object/from16 v5, v16

    const/4 v7, 0x2

    invoke-static {v5, v7}, Lm/v;->d(Ln/x;I)Lm/a0;

    move-result-object v5

    invoke-virtual {v4, v5}, Lm/a0;->a(Lm/a0;)Lm/a0;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-static {v5, v3}, Lm/v;->f(Ln/r0;Lf1/h;)Lm/b0;

    move-result-object v3

    move-object/from16 v5, p1

    invoke-static {v5, v7}, Lm/v;->e(Ln/x;I)Lm/b0;

    move-result-object v5

    invoke-virtual {v3, v5}, Lm/b0;->a(Lm/b0;)Lm/b0;

    move-result-object v3

    new-instance v5, Lo0/z3;

    const/4 v7, 0x2

    iget-wide v8, v0, Lo0/p0;->p:J

    invoke-direct {v5, v7, v8, v9}, Lo0/z3;-><init>(IJ)V

    const v0, 0x718fd7d0

    invoke-static {v0, v5, v6}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v5

    const v7, 0x30030

    const/16 v8, 0x10

    move v0, v1

    move-object v1, v2

    move-object v2, v4

    const/4 v4, 0x0

    invoke-static/range {v0 .. v8}, Lm/l;->b(ZLf1/r;Lm/a0;Lm/b0;Ljava/lang/String;Lz0/d;Lr0/q;II)V

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_8
    invoke-virtual {v6}, Lr0/q;->W()V

    :goto_3
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
