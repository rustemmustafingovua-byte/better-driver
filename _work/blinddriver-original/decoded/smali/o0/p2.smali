.class public final synthetic Lo0/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:J

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lo0/p2;->l:J

    iput p1, p0, Lo0/p2;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v0, p1

    check-cast v0, Lo1/d;

    sget p1, Lo0/m2;->d:F

    invoke-interface {v0, p1}, Lb3/c;->V(F)F

    move-result p1

    invoke-interface {v0}, Lo1/d;->d()J

    move-result-wide v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sget v1, Lo0/u2;->c:F

    invoke-interface {v0, v1}, Lb3/c;->V(F)F

    move-result v1

    invoke-interface {v0}, Lo1/d;->d()J

    move-result-wide v5

    and-long v2, v5, v3

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sub-float/2addr v2, p1

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    invoke-interface {v0}, Lo1/d;->getLayoutDirection()Lb3/m;

    move-result-object v1

    sget-object v2, Lb3/m;->m:Lb3/m;

    move-object v4, v2

    iget-wide v2, p0, Lo0/p2;->l:J

    iget p0, p0, Lo0/p2;->m:I

    if-ne v1, v4, :cond_1

    invoke-interface {v0}, Lo1/d;->j0()J

    move-result-wide v6

    invoke-interface {v0}, Lo1/d;->Y()Lg5/m;

    move-result-object v8

    invoke-virtual {v8}, Lg5/m;->m()J

    move-result-wide v9

    invoke-virtual {v8}, Lg5/m;->h()Lm1/o;

    move-result-object v1

    invoke-interface {v1}, Lm1/o;->h()V

    :try_start_0
    iget-object v1, v8, Lg5/m;->m:Ljava/lang/Object;

    check-cast v1, Lm2/j;

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v11, v6, v7}, Lm2/j;->A(FFJ)V

    move v1, p0

    move v4, p1

    invoke-static/range {v0 .. v5}, Lo0/m2;->a(Lo1/d;IJFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9, v10}, Lm/a;->t(Lg5/m;J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v8, v9, v10}, Lm/a;->t(Lg5/m;J)V

    throw p0

    :cond_1
    move v1, p0

    move v4, p1

    invoke-static/range {v0 .. v5}, Lo0/m2;->a(Lo1/d;IJFF)V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
