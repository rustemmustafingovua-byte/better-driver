.class public final synthetic Lo0/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lr0/r2;

.field public final synthetic m:I

.field public final synthetic n:F

.field public final synthetic o:F

.field public final synthetic p:Lr0/r2;

.field public final synthetic q:Lr0/r2;

.field public final synthetic r:J

.field public final synthetic s:Lo1/h;

.field public final synthetic t:J


# direct methods
.method public synthetic constructor <init>(Ln/c0;IFFLn/c0;Ln/c0;JLo1/h;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/n2;->l:Lr0/r2;

    iput p2, p0, Lo0/n2;->m:I

    iput p3, p0, Lo0/n2;->n:F

    iput p4, p0, Lo0/n2;->o:F

    iput-object p5, p0, Lo0/n2;->p:Lr0/r2;

    iput-object p6, p0, Lo0/n2;->q:Lr0/r2;

    iput-wide p7, p0, Lo0/n2;->r:J

    iput-object p9, p0, Lo0/n2;->s:Lo1/h;

    iput-wide p10, p0, Lo0/n2;->t:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-wide v3, p0, Lo0/n2;->r:J

    iget-object v5, p0, Lo0/n2;->s:Lo1/h;

    iget-wide v8, p0, Lo0/n2;->t:J

    move-object v0, p1

    check-cast v0, Lo1/d;

    iget-object p1, p0, Lo0/n2;->l:Lr0/r2;

    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v7, p1, v1

    iget p1, p0, Lo0/n2;->m:I

    iget v2, p0, Lo0/n2;->n:F

    const/16 v6, 0x20

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lo1/d;->d()J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    long-to-int p1, v10

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-interface {v0}, Lo1/d;->d()J

    move-result-wide v10

    shr-long/2addr v10, v6

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    cmpl-float p1, p1, v10

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lo0/n2;->o:F

    add-float/2addr v2, p1

    :goto_0
    invoke-interface {v0}, Lo1/d;->d()J

    move-result-wide v10

    shr-long/2addr v10, v6

    long-to-int p1, v10

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-interface {v0, p1}, Lb3/c;->P(F)F

    move-result p1

    float-to-double v10, p1

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    double-to-float p1, v10

    div-float/2addr v2, p1

    mul-float/2addr v2, v1

    iget-object p1, p0, Lo0/n2;->p:Lr0/r2;

    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object p0, p0, Lo0/n2;->q:Lr0/r2;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    add-float/2addr p0, p1

    invoke-interface {v0}, Lo1/d;->j0()J

    move-result-wide v10

    invoke-interface {v0}, Lo1/d;->Y()Lg5/m;

    move-result-object p1

    invoke-virtual {p1}, Lg5/m;->m()J

    move-result-wide v12

    invoke-virtual {p1}, Lg5/m;->h()Lm1/o;

    move-result-object v6

    invoke-interface {v6}, Lm1/o;->h()V

    :try_start_0
    iget-object v6, p1, Lg5/m;->m:Ljava/lang/Object;

    check-cast v6, Lm2/j;

    invoke-virtual {v6, p0, v10, v11}, Lm2/j;->w(FJ)V

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    add-float/2addr p0, v7

    sub-float/2addr v1, v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v6, 0x2

    int-to-float v6, v6

    mul-float/2addr v2, v6

    sub-float v2, v1, v2

    move v1, p0

    invoke-static/range {v0 .. v5}, Lo0/u2;->d(Lo1/d;FFJLo1/h;)V

    const/4 v6, 0x0

    move-object v10, v5

    move-object v5, v0

    invoke-static/range {v5 .. v10}, Lo0/u2;->d(Lo1/d;FFJLo1/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v12, v13}, Lm/a;->t(Lg5/m;J)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p1, v12, v13}, Lm/a;->t(Lg5/m;J)V

    throw p0
.end method
