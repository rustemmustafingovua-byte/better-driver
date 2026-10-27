.class public final synthetic Lb0/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic A:Lu2/q;

.field public final synthetic B:Lb3/c;

.field public final synthetic l:Lb0/r1;

.field public final synthetic m:Lp2/m0;

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:Lb0/v2;

.field public final synthetic q:Lu2/x;

.field public final synthetic r:Lu2/d0;

.field public final synthetic s:Lf1/r;

.field public final synthetic t:Lf1/r;

.field public final synthetic u:Lf1/r;

.field public final synthetic v:Lf1/r;

.field public final synthetic w:Ly/c;

.field public final synthetic x:Lm0/v1;

.field public final synthetic y:Z

.field public final synthetic z:Li9/c;


# direct methods
.method public synthetic constructor <init>(Lb0/r1;Lp2/m0;IILb0/v2;Lu2/x;Lu2/d0;Lf1/r;Lf1/r;Lf1/r;Lf1/r;Ly/c;Lm0/v1;ZLi9/c;Lu2/q;Lb3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/l0;->l:Lb0/r1;

    iput-object p2, p0, Lb0/l0;->m:Lp2/m0;

    iput p3, p0, Lb0/l0;->n:I

    iput p4, p0, Lb0/l0;->o:I

    iput-object p5, p0, Lb0/l0;->p:Lb0/v2;

    iput-object p6, p0, Lb0/l0;->q:Lu2/x;

    iput-object p7, p0, Lb0/l0;->r:Lu2/d0;

    iput-object p8, p0, Lb0/l0;->s:Lf1/r;

    iput-object p9, p0, Lb0/l0;->t:Lf1/r;

    iput-object p10, p0, Lb0/l0;->u:Lf1/r;

    iput-object p11, p0, Lb0/l0;->v:Lf1/r;

    iput-object p12, p0, Lb0/l0;->w:Ly/c;

    iput-object p13, p0, Lb0/l0;->x:Lm0/v1;

    iput-boolean p14, p0, Lb0/l0;->y:Z

    iput-object p15, p0, Lb0/l0;->z:Li9/c;

    move-object/from16 p1, p16

    iput-object p1, p0, Lb0/l0;->A:Lu2/q;

    move-object/from16 p1, p17

    iput-object p1, p0, Lb0/l0;->B:Lb3/c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget-object v5, v0, Lb0/l0;->q:Lu2/x;

    iget-wide v1, v5, Lu2/x;->b:J

    move-object/from16 v10, p1

    check-cast v10, Lr0/q;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v4, v8, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    and-int/2addr v3, v7

    invoke-virtual {v10, v3, v4}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lb0/l0;->l:Lb0/r1;

    iget-object v4, v3, Lb0/r1;->g:Lr0/e1;

    invoke-virtual {v4}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb3/f;

    iget v4, v4, Lb3/f;->l:F

    const/4 v9, 0x0

    sget-object v11, Lf1/o;->a:Lf1/o;

    invoke-static {v11, v4, v9, v8}, Lu/b1;->h(Lf1/r;FFI)Lf1/r;

    move-result-object v4

    new-instance v8, Lb0/f1;

    iget v9, v0, Lb0/l0;->n:I

    iget v11, v0, Lb0/l0;->o:I

    iget-object v12, v0, Lb0/l0;->m:Lp2/m0;

    invoke-direct {v8, v9, v11, v12}, Lb0/f1;-><init>(IILp2/m0;)V

    new-instance v9, Lf1/m;

    invoke-direct {v9, v8}, Lf1/m;-><init>(Li9/f;)V

    invoke-interface {v4, v9}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v4

    invoke-virtual {v10, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_1

    sget-object v8, Lr0/m;->a:Lr0/e;

    if-ne v9, v8, :cond_2

    :cond_1
    new-instance v9, Lad/t;

    const/4 v8, 0x5

    invoke-direct {v9, v8, v3}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v9, Li9/a;

    iget-object v8, v0, Lb0/l0;->p:Lb0/v2;

    iget-object v13, v8, Lb0/v2;->f:Lr0/e1;

    invoke-virtual {v13}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lr/m1;

    sget v14, Lp2/l0;->c:I

    const/16 p1, 0x20

    shr-long v14, v1, p1

    long-to-int v14, v14

    iget-wide v6, v8, Lb0/v2;->e:J

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    shr-long v3, v6, p1

    long-to-int v3, v3

    if-eq v14, v3, :cond_3

    goto :goto_1

    :cond_3
    const-wide v18, 0xffffffffL

    and-long v3, v1, v18

    long-to-int v14, v3

    and-long v3, v6, v18

    long-to-int v3, v3

    if-eq v14, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v1, v2}, Lp2/l0;->f(J)I

    move-result v14

    :goto_1
    iput-wide v1, v8, Lb0/v2;->e:J

    iget-object v1, v5, Lu2/x;->a:Lp2/g;

    iget-object v2, v0, Lb0/l0;->r:Lu2/d0;

    invoke-static {v2, v1}, Lb0/i3;->a(Lu2/d0;Lp2/g;)Lu2/b0;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v15, 0x1

    if-ne v2, v15, :cond_5

    new-instance v2, Lb0/h1;

    invoke-direct {v2, v8, v14, v1, v9}, Lb0/h1;-><init>(Lb0/v2;ILu2/b0;Li9/a;)V

    goto :goto_2

    :cond_5
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    new-instance v2, Lb0/k3;

    invoke-direct {v2, v8, v14, v1, v9}, Lb0/k3;-><init>(Lb0/v2;ILu2/b0;Li9/a;)V

    :goto_2
    invoke-static/range {v17 .. v17}, Lj1/g;->c(Lf1/r;)Lf1/r;

    move-result-object v1

    invoke-interface {v1, v2}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v1

    iget-object v2, v0, Lb0/l0;->s:Lf1/r;

    invoke-interface {v1, v2}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v1

    iget-object v2, v0, Lb0/l0;->t:Lf1/r;

    invoke-interface {v1, v2}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v1

    new-instance v2, Lb0/x2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v12}, Lb0/x2;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v2}, Lf1/a;->a(Lf1/r;Li9/f;)Lf1/r;

    move-result-object v1

    iget-object v2, v0, Lb0/l0;->u:Lf1/r;

    invoke-interface {v1, v2}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v1

    iget-object v2, v0, Lb0/l0;->v:Lf1/r;

    invoke-interface {v1, v2}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v1

    iget-object v2, v0, Lb0/l0;->w:Ly/c;

    invoke-static {v1, v2}, Ly/d;->a(Lf1/r;Ly/c;)Lf1/r;

    move-result-object v12

    new-instance v1, Lb0/m0;

    const/4 v9, 0x0

    move-object v2, v1

    iget-object v1, v0, Lb0/l0;->x:Lm0/v1;

    iget-boolean v3, v0, Lb0/l0;->y:Z

    iget-object v4, v0, Lb0/l0;->z:Li9/c;

    iget-object v6, v0, Lb0/l0;->A:Lu2/q;

    iget-object v7, v0, Lb0/l0;->B:Lb3/c;

    move-object v0, v2

    move v8, v11

    move-object/from16 v2, v16

    invoke-direct/range {v0 .. v9}, Lb0/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    const v1, 0x54340ce8

    invoke-static {v1, v0, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v12, v0, v10, v1}, Lm0/d1;->f(Lf1/r;Lz0/d;Lr0/q;I)V

    goto :goto_3

    :cond_7
    invoke-virtual {v10}, Lr0/q;->W()V

    :goto_3
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
