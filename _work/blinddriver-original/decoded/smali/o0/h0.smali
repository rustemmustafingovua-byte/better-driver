.class public final synthetic Lo0/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lr0/r2;

.field public final synthetic m:Lr0/r2;

.field public final synthetic n:Lo1/h;

.field public final synthetic o:Lr0/r2;

.field public final synthetic p:Lr0/r2;

.field public final synthetic q:Lr0/r2;

.field public final synthetic r:Lo1/h;

.field public final synthetic s:Lo0/e0;


# direct methods
.method public synthetic constructor <init>(Lr0/r2;Lr0/r2;Lo1/h;Lr0/r2;Ln/d1;Ln/d1;Lo1/h;Lo0/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/h0;->l:Lr0/r2;

    iput-object p2, p0, Lo0/h0;->m:Lr0/r2;

    iput-object p3, p0, Lo0/h0;->n:Lo1/h;

    iput-object p4, p0, Lo0/h0;->o:Lr0/r2;

    iput-object p5, p0, Lo0/h0;->p:Lr0/r2;

    iput-object p6, p0, Lo0/h0;->q:Lr0/r2;

    iput-object p7, p0, Lo0/h0;->r:Lo1/h;

    iput-object p8, p0, Lo0/h0;->s:Lo0/e0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lo1/d;

    iget-object v2, v0, Lo0/h0;->l:Lr0/r2;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm1/p;

    iget-wide v2, v2, Lm1/p;->a:J

    iget-object v4, v0, Lo0/h0;->m:Lr0/r2;

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm1/p;

    iget-wide v12, v4, Lm1/p;->a:J

    sget v4, Lo0/l0;->c:F

    invoke-interface {v1, v4}, Lb3/c;->V(F)F

    move-result v14

    iget-object v15, v0, Lo0/h0;->n:Lo1/h;

    iget v4, v15, Lo1/h;->a:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v16, v4, v5

    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v5

    const/16 v17, 0x20

    shr-long v5, v5, v17

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v18

    invoke-static {v2, v3, v12, v13}, Lm1/p;->c(JJ)Z

    move-result v5

    const/4 v6, 0x0

    sget-object v10, Lo1/g;->a:Lo1/g;

    const-wide v19, 0xffffffffL

    if-eqz v5, :cond_0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v7, v7

    shl-long v4, v4, v17

    and-long v7, v7, v19

    or-long/2addr v4, v7

    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v11, v9

    shl-long v7, v7, v17

    and-long v11, v11, v19

    or-long v8, v7, v11

    const/16 v11, 0xe2

    move v12, v6

    move-wide v6, v4

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v11}, Lo1/d;->g0(Lo1/d;JJJJLo1/e;I)V

    move v13, v12

    goto/16 :goto_0

    :cond_0
    move v5, v6

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    shl-long v6, v6, v17

    and-long v8, v8, v19

    or-long/2addr v6, v8

    const/4 v8, 0x2

    int-to-float v8, v8

    mul-float/2addr v8, v4

    sub-float v8, v18, v8

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    move-wide/from16 v21, v6

    int-to-long v5, v9

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v7, v7

    shl-long v5, v5, v17

    and-long v7, v7, v19

    or-long v6, v5, v7

    sub-float v5, v14, v4

    const/4 v11, 0x0

    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move-wide/from16 v23, v12

    int-to-long v11, v5

    shl-long v8, v8, v17

    and-long v11, v11, v19

    or-long/2addr v8, v11

    const/16 v11, 0xe0

    move v12, v4

    move-wide/from16 v4, v21

    const/4 v13, 0x0

    invoke-static/range {v1 .. v11}, Lo1/d;->g0(Lo1/d;JJJJLo1/e;I)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    shl-long v2, v2, v17

    and-long v4, v4, v19

    or-long/2addr v4, v2

    sub-float v18, v18, v12

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    shl-long v2, v2, v17

    and-long v6, v6, v19

    or-long/2addr v6, v2

    sub-float v14, v14, v16

    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    shl-long v2, v2, v17

    and-long v8, v8, v19

    or-long/2addr v8, v2

    move-object v10, v15

    move-wide/from16 v2, v23

    invoke-static/range {v1 .. v11}, Lo1/d;->g0(Lo1/d;JJJJLo1/e;I)V

    :goto_0
    iget-object v2, v0, Lo0/h0;->o:Lr0/r2;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm1/p;

    iget-wide v2, v2, Lm1/p;->a:J

    iget-object v4, v0, Lo0/h0;->p:Lr0/r2;

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iget-object v5, v0, Lo0/h0;->q:Lr0/r2;

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v6

    shr-long v6, v6, v17

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    const v7, 0x3ecccccd    # 0.4f

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-static {v7, v8, v5}, Lg5/f;->C(FFF)F

    move-result v7

    const v9, 0x3f333333    # 0.7f

    invoke-static {v9, v8, v5}, Lg5/f;->C(FFF)F

    move-result v9

    invoke-static {v8, v8, v5}, Lg5/f;->C(FFF)F

    move-result v10

    const v11, 0x3e99999a    # 0.3f

    invoke-static {v11, v8, v5}, Lg5/f;->C(FFF)F

    move-result v5

    iget-object v8, v0, Lo0/h0;->s:Lo0/e0;

    iget-object v11, v8, Lo0/e0;->a:Lm1/g;

    invoke-virtual {v11}, Lm1/g;->h()V

    iget-object v11, v8, Lo0/e0;->a:Lm1/g;

    const v12, 0x3e4ccccd    # 0.2f

    mul-float/2addr v12, v6

    mul-float/2addr v10, v6

    invoke-virtual {v11, v12, v10}, Lm1/g;->e(FF)V

    mul-float/2addr v7, v6

    mul-float/2addr v9, v6

    invoke-virtual {v11, v7, v9}, Lm1/g;->d(FF)V

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v6

    mul-float/2addr v6, v5

    invoke-virtual {v11, v7, v6}, Lm1/g;->d(FF)V

    iget-object v5, v8, Lo0/e0;->b:Lm1/h;

    iget-object v6, v5, Lm1/h;->a:Landroid/graphics/PathMeasure;

    if-eqz v11, :cond_1

    iget-object v7, v11, Lm1/g;->a:Landroid/graphics/Path;

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v6, v8, Lo0/e0;->c:Lm1/g;

    invoke-virtual {v6}, Lm1/g;->h()V

    iget-object v7, v5, Lm1/h;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    mul-float/2addr v7, v4

    invoke-virtual {v5, v13, v7, v6}, Lm1/h;->a(FFLm1/g;)Z

    iget-object v4, v8, Lo0/e0;->c:Lm1/g;

    const/16 v5, 0x34

    iget-object v0, v0, Lo0/h0;->r:Lo1/h;

    move-object/from16 v25, v4

    move-object v4, v0

    move-object v0, v1

    move-object/from16 v1, v25

    invoke-static/range {v0 .. v5}, Lo1/d;->q(Lo1/d;Lm1/g;JLo1/e;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
