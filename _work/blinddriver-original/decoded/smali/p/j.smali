.class public final Lp/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb3/c;

.field public b:J

.field public final c:Lp/l0;

.field public final d:Lr0/e1;

.field public final e:Z

.field public f:Z

.field public g:J

.field public h:J

.field public final i:Le2/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb3/c;JLu/s0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lp/j;->a:Lb3/c;

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v0, p0, Lp/j;->b:J

    new-instance p2, Lp/l0;

    invoke-static {p3, p4}, Lm1/v;->y(J)I

    move-result p3

    invoke-direct {p2, p1, p3}, Lp/l0;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lp/j;->c:Lp/l0;

    sget-object p1, Lr0/e;->o:Lr0/e;

    new-instance p3, Lr0/e1;

    sget-object p4, Lt8/z;->a:Lt8/z;

    invoke-direct {p3, p4, p1}, Lr0/e1;-><init>(Ljava/lang/Object;Lr0/m2;)V

    iput-object p3, p0, Lp/j;->d:Lr0/e1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lp/j;->e:Z

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lp/j;->g:J

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Lp/j;->h:J

    new-instance p1, Lb0/w0;

    const/4 p3, 0x6

    invoke-direct {p1, p3, p0}, Lb0/w0;-><init>(ILjava/lang/Object;)V

    sget-object p3, Ly1/g0;->a:Ly1/l;

    new-instance p3, Ly1/k0;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1}, Ly1/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1f

    if-lt p1, p4, :cond_0

    new-instance p1, Lp/s0;

    invoke-direct {p1, p3, p0, p2}, Lp/s0;-><init>(Ly1/k0;Lp/j;Lp/l0;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lp/s0;

    invoke-direct {p1, p3, p0, p2, p5}, Lp/s0;-><init>(Ly1/k0;Lp/j;Lp/l0;Lu/s0;)V

    :goto_0
    iput-object p1, p0, Lp/j;->i:Le2/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lp/j;->c:Lp/l0;

    iget-object v1, v0, Lp/l0;->d:Landroid/widget/EdgeEffect;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, v0, Lp/l0;->e:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :cond_3
    :goto_2
    iget-object v4, v0, Lp/l0;->f:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v1, v2

    :cond_6
    :goto_4
    iget-object v0, v0, Lp/l0;->g:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move v2, v3

    :cond_8
    :goto_5
    move v1, v2

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lp/j;->d()V

    :cond_a
    return-void
.end method

.method public final b(JLr/m2;La9/c;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    instance-of v5, v4, Lp/h;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lp/h;

    iget v6, v5, Lp/h;->o:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Lp/h;->o:I

    goto :goto_0

    :cond_0
    new-instance v5, Lp/h;

    invoke-direct {v5, v0, v4}, Lp/h;-><init>(Lp/j;La9/c;)V

    :goto_0
    iget-object v4, v5, Lp/h;->m:Ljava/lang/Object;

    sget-object v6, Lz8/a;->l:Lz8/a;

    iget v7, v5, Lp/h;->o:I

    sget-object v8, Lt8/z;->a:Lt8/z;

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v12, v0, Lp/j;->c:Lp/l0;

    if-eqz v7, :cond_3

    if-eq v7, v10, :cond_2

    if-ne v7, v9, :cond_1

    iget-wide v1, v5, Lp/h;->l:J

    invoke-static {v4}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v4}, La/a;->E(Ljava/lang/Object;)V

    return-object v8

    :cond_3
    invoke-static {v4}, La/a;->E(Ljava/lang/Object;)V

    iget-wide v13, v0, Lp/j;->g:J

    invoke-static {v13, v14}, Ll1/e;->c(J)Z

    move-result v4

    if-eqz v4, :cond_5

    iput v10, v5, Lp/h;->o:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lr/m2;

    iget-object v3, v3, Lr/m2;->o:Lr/n2;

    invoke-direct {v0, v3, v5}, Lr/m2;-><init>(Lr/n2;Ly8/c;)V

    iput-wide v1, v0, Lr/m2;->n:J

    invoke-virtual {v0, v8}, Lr/m2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_4

    goto/16 :goto_4

    :cond_4
    return-object v8

    :cond_5
    iget-object v4, v12, Lp/l0;->f:Landroid/widget/EdgeEffect;

    invoke-static {v4}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v4

    const/16 v7, 0x20

    iget-object v10, v0, Lp/j;->a:Lb3/c;

    if-eqz v4, :cond_6

    invoke-static {v1, v2}, Lb3/q;->b(J)F

    move-result v4

    cmpg-float v4, v4, v11

    if-gez v4, :cond_6

    invoke-virtual {v12}, Lp/l0;->c()Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-static {v1, v2}, Lb3/q;->b(J)F

    move-result v13

    iget-wide v14, v0, Lp/j;->g:J

    shr-long/2addr v14, v7

    long-to-int v7, v14

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-static {v4, v13, v7, v10}, Lp/o;->d(Landroid/widget/EdgeEffect;FFLb3/c;)F

    move-result v4

    goto :goto_1

    :cond_6
    iget-object v4, v12, Lp/l0;->g:Landroid/widget/EdgeEffect;

    invoke-static {v4}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v2}, Lb3/q;->b(J)F

    move-result v4

    cmpl-float v4, v4, v11

    if-lez v4, :cond_7

    invoke-virtual {v12}, Lp/l0;->d()Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-static {v1, v2}, Lb3/q;->b(J)F

    move-result v13

    neg-float v13, v13

    iget-wide v14, v0, Lp/j;->g:J

    shr-long/2addr v14, v7

    long-to-int v7, v14

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-static {v4, v13, v7, v10}, Lp/o;->d(Landroid/widget/EdgeEffect;FFLb3/c;)F

    move-result v4

    neg-float v4, v4

    goto :goto_1

    :cond_7
    move v4, v11

    :goto_1
    iget-object v7, v12, Lp/l0;->d:Landroid/widget/EdgeEffect;

    invoke-static {v7}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v1, v2}, Lb3/q;->c(J)F

    move-result v7

    cmpg-float v7, v7, v11

    if-gez v7, :cond_8

    invoke-virtual {v12}, Lp/l0;->e()Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-static {v1, v2}, Lb3/q;->c(J)F

    move-result v15

    const-wide v16, 0xffffffffL

    iget-wide v13, v0, Lp/j;->g:J

    and-long v13, v13, v16

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    invoke-static {v7, v15, v13, v10}, Lp/o;->d(Landroid/widget/EdgeEffect;FFLb3/c;)F

    move-result v7

    goto :goto_2

    :cond_8
    const-wide v16, 0xffffffffL

    iget-object v7, v12, Lp/l0;->e:Landroid/widget/EdgeEffect;

    invoke-static {v7}, Lp/l0;->g(Landroid/widget/EdgeEffect;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v1, v2}, Lb3/q;->c(J)F

    move-result v7

    cmpl-float v7, v7, v11

    if-lez v7, :cond_9

    invoke-virtual {v12}, Lp/l0;->b()Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-static {v1, v2}, Lb3/q;->c(J)F

    move-result v13

    neg-float v13, v13

    iget-wide v14, v0, Lp/j;->g:J

    and-long v14, v14, v16

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    invoke-static {v7, v13, v14, v10}, Lp/o;->d(Landroid/widget/EdgeEffect;FFLb3/c;)F

    move-result v7

    neg-float v7, v7

    goto :goto_2

    :cond_9
    move v7, v11

    :goto_2
    invoke-static {v4, v7}, Lb6/g;->e(FF)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v4, v13, v15

    if-nez v4, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Lp/j;->d()V

    :goto_3
    invoke-static {v1, v2, v13, v14}, Lb3/q;->d(JJ)J

    move-result-wide v1

    iput-wide v1, v5, Lp/h;->l:J

    iput v9, v5, Lp/h;->o:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lr/m2;

    iget-object v3, v3, Lr/m2;->o:Lr/n2;

    invoke-direct {v4, v3, v5}, Lr/m2;-><init>(Lr/n2;Ly8/c;)V

    iput-wide v1, v4, Lr/m2;->n:J

    invoke-virtual {v4, v8}, Lr/m2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_b

    :goto_4
    return-object v6

    :cond_b
    :goto_5
    check-cast v4, Lb3/q;

    iget-wide v3, v4, Lb3/q;->a:J

    invoke-static {v1, v2, v3, v4}, Lb3/q;->d(JJ)J

    move-result-wide v1

    const/4 v3, 0x0

    iput-boolean v3, v0, Lp/j;->f:Z

    invoke-static {v1, v2}, Lb3/q;->b(J)F

    move-result v3

    cmpl-float v3, v3, v11

    const/16 v4, 0x1f

    if-lez v3, :cond_d

    invoke-virtual {v12}, Lp/l0;->c()Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-static {v1, v2}, Lb3/q;->b(J)F

    move-result v5

    invoke-static {v5}, Ll9/a;->z(F)I

    move-result v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_c

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_6

    :cond_c
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_6

    :cond_d
    invoke-static {v1, v2}, Lb3/q;->b(J)F

    move-result v3

    cmpg-float v3, v3, v11

    if-gez v3, :cond_f

    invoke-virtual {v12}, Lp/l0;->d()Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-static {v1, v2}, Lb3/q;->b(J)F

    move-result v5

    invoke-static {v5}, Ll9/a;->z(F)I

    move-result v5

    neg-int v5, v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_e

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_6

    :cond_e
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_f
    :goto_6
    invoke-static {v1, v2}, Lb3/q;->c(J)F

    move-result v3

    cmpl-float v3, v3, v11

    if-lez v3, :cond_11

    invoke-virtual {v12}, Lp/l0;->e()Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-static {v1, v2}, Lb3/q;->c(J)F

    move-result v1

    invoke-static {v1}, Ll9/a;->z(F)I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_10

    invoke-virtual {v3, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_7

    :cond_10
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v3, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_7

    :cond_11
    invoke-static {v1, v2}, Lb3/q;->c(J)F

    move-result v3

    cmpg-float v3, v3, v11

    if-gez v3, :cond_13

    invoke-virtual {v12}, Lp/l0;->b()Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-static {v1, v2}, Lb3/q;->c(J)F

    move-result v1

    invoke-static {v1}, Ll9/a;->z(F)I

    move-result v1

    neg-int v1, v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_12

    invoke-virtual {v3, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_7

    :cond_12
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v3, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_13
    :goto_7
    invoke-virtual {v0}, Lp/j;->a()V

    return-object v8
.end method

.method public final c()J
    .locals 8

    iget-wide v0, p0, Lp/j;->b:J

    const-wide v2, 0x7fffffff7fffffffL

    and-long/2addr v2, v0

    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lp/j;->g:J

    invoke-static {v0, v1}, Lwa/h;->o(J)J

    move-result-wide v0

    :goto_0
    const/16 v2, 0x20

    shr-long v3, v0, v2

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    iget-wide v4, p0, Lp/j;->g:J

    shr-long/2addr v4, v2

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    div-float/2addr v3, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-wide v6, p0, Lp/j;->g:J

    and-long/2addr v6, v4

    long-to-int p0, v6

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    div-float/2addr v0, p0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v6, p0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    shl-long v2, v6, v2

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()V
    .locals 1

    iget-boolean v0, p0, Lp/j;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lp/j;->d:Lr0/e1;

    sget-object v0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final e(J)F
    .locals 8

    invoke-virtual {p0}, Lp/j;->c()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    iget-wide v3, p0, Lp/j;->g:J

    and-long/2addr v3, v1

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    div-float/2addr p2, v3

    iget-object v3, p0, Lp/j;->c:Lp/l0;

    invoke-virtual {v3}, Lp/l0;->b()Landroid/widget/EdgeEffect;

    move-result-object v3

    neg-float p2, p2

    const/4 v4, 0x1

    int-to-float v4, v4

    sub-float/2addr v4, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v0, v5, :cond_0

    invoke-static {v3, p2, v4}, Lp/m;->c(Landroid/widget/EdgeEffect;FF)F

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {v3, p2, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :goto_0
    neg-float p2, p2

    iget-wide v6, p0, Lp/j;->g:J

    and-long/2addr v1, v6

    long-to-int p0, v1

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    mul-float/2addr p0, p2

    const/4 p2, 0x0

    if-lt v0, v5, :cond_1

    invoke-static {v3}, Lp/m;->b(Landroid/widget/EdgeEffect;)F

    move-result v0

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    cmpg-float p2, v0, p2

    if-nez p2, :cond_2

    return p0

    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final f(J)F
    .locals 7

    invoke-virtual {p0}, Lp/j;->c()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const/16 v1, 0x20

    shr-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    iget-wide v2, p0, Lp/j;->g:J

    shr-long/2addr v2, v1

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    div-float/2addr p2, v2

    iget-object v2, p0, Lp/j;->c:Lp/l0;

    invoke-virtual {v2}, Lp/l0;->c()Landroid/widget/EdgeEffect;

    move-result-object v2

    const/4 v3, 0x1

    int-to-float v3, v3

    sub-float/2addr v3, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v0, v4, :cond_0

    invoke-static {v2, p2, v3}, Lp/m;->c(Landroid/widget/EdgeEffect;FF)F

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :goto_0
    iget-wide v5, p0, Lp/j;->g:J

    shr-long/2addr v5, v1

    long-to-int p0, v5

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    mul-float/2addr p0, p2

    const/4 p2, 0x0

    if-lt v0, v4, :cond_1

    invoke-static {v2}, Lp/m;->b(Landroid/widget/EdgeEffect;)F

    move-result v0

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    cmpg-float p2, v0, p2

    if-nez p2, :cond_2

    return p0

    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final g(J)F
    .locals 7

    invoke-virtual {p0}, Lp/j;->c()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const/16 v1, 0x20

    shr-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    iget-wide v2, p0, Lp/j;->g:J

    shr-long/2addr v2, v1

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    div-float/2addr p2, v2

    iget-object v2, p0, Lp/j;->c:Lp/l0;

    invoke-virtual {v2}, Lp/l0;->d()Landroid/widget/EdgeEffect;

    move-result-object v2

    neg-float p2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_0

    invoke-static {v2, p2, v0}, Lp/m;->c(Landroid/widget/EdgeEffect;FF)F

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p2, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :goto_0
    neg-float p2, p2

    iget-wide v5, p0, Lp/j;->g:J

    shr-long v0, v5, v1

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    mul-float/2addr p0, p2

    const/4 p2, 0x0

    if-lt v3, v4, :cond_1

    invoke-static {v2}, Lp/m;->b(Landroid/widget/EdgeEffect;)F

    move-result v0

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    cmpg-float p2, v0, p2

    if-nez p2, :cond_2

    return p0

    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final h(J)F
    .locals 8

    invoke-virtual {p0}, Lp/j;->c()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    iget-wide v3, p0, Lp/j;->g:J

    and-long/2addr v3, v1

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    div-float/2addr p2, v3

    iget-object v3, p0, Lp/j;->c:Lp/l0;

    invoke-virtual {v3}, Lp/l0;->e()Landroid/widget/EdgeEffect;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_0

    invoke-static {v3, p2, v0}, Lp/m;->c(Landroid/widget/EdgeEffect;FF)F

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {v3, p2, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :goto_0
    iget-wide v6, p0, Lp/j;->g:J

    and-long v0, v6, v1

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    mul-float/2addr p0, p2

    const/4 p2, 0x0

    if-lt v4, v5, :cond_1

    invoke-static {v3}, Lp/m;->b(Landroid/widget/EdgeEffect;)F

    move-result v0

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    cmpg-float p2, v0, p2

    if-nez p2, :cond_2

    return p0

    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final i(J)V
    .locals 10

    iget-wide v0, p0, Lp/j;->g:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ll1/e;->a(JJ)Z

    move-result v0

    iget-wide v1, p0, Lp/j;->g:J

    invoke-static {p1, p2, v1, v2}, Ll1/e;->a(JJ)Z

    move-result v1

    iput-wide p1, p0, Lp/j;->g:J

    if-nez v1, :cond_7

    const/16 v2, 0x20

    shr-long v3, p1, v2

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ll9/a;->z(F)I

    move-result v3

    const-wide v4, 0xffffffffL

    and-long/2addr p1, v4

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p1}, Ll9/a;->z(F)I

    move-result p1

    int-to-long v6, v3

    shl-long/2addr v6, v2

    int-to-long p1, p1

    and-long/2addr p1, v4

    or-long/2addr p1, v6

    iget-object v3, p0, Lp/j;->c:Lp/l0;

    iput-wide p1, v3, Lp/l0;->c:J

    iget-object v6, v3, Lp/l0;->d:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_0

    shr-long v7, p1, v2

    long-to-int v7, v7

    and-long v8, p1, v4

    long-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_0
    iget-object v6, v3, Lp/l0;->e:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_1

    shr-long v7, p1, v2

    long-to-int v7, v7

    and-long v8, p1, v4

    long-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_1
    iget-object v6, v3, Lp/l0;->f:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_2

    and-long v7, p1, v4

    long-to-int v7, v7

    shr-long v8, p1, v2

    long-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    iget-object v6, v3, Lp/l0;->g:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_3

    and-long v7, p1, v4

    long-to-int v7, v7

    shr-long v8, p1, v2

    long-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_3
    iget-object v6, v3, Lp/l0;->h:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_4

    shr-long v7, p1, v2

    long-to-int v7, v7

    and-long v8, p1, v4

    long-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_4
    iget-object v6, v3, Lp/l0;->i:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_5

    shr-long v7, p1, v2

    long-to-int v7, v7

    and-long v8, p1, v4

    long-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_5
    iget-object v6, v3, Lp/l0;->j:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_6

    and-long v7, p1, v4

    long-to-int v7, v7

    shr-long v8, p1, v2

    long-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_6
    iget-object v3, v3, Lp/l0;->k:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_7

    and-long/2addr v4, p1

    long-to-int v4, v4

    shr-long/2addr p1, v2

    long-to-int p1, p1

    invoke-virtual {v3, v4, p1}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_7
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lp/j;->a()V

    :cond_8
    return-void
.end method
