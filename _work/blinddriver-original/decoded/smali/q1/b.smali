.class public abstract Lq1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lf6/v;

.field public b:Lm1/j;

.field public c:F

.field public d:Lb3/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lq1/b;->c:F

    sget-object v0, Lb3/m;->l:Lb3/m;

    iput-object v0, p0, Lq1/b;->d:Lb3/m;

    return-void
.end method


# virtual methods
.method public abstract a(F)V
.end method

.method public abstract b(Lm1/j;)V
.end method

.method public final c(Le2/j0;JFLm1/j;)V
    .locals 6

    iget-object v0, p1, Le2/j0;->l:Lo1/b;

    iget v1, p0, Lq1/b;->c:F

    cmpg-float v1, v1, p4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4}, Lq1/b;->a(F)V

    iput p4, p0, Lq1/b;->c:F

    :goto_0
    iget-object v1, p0, Lq1/b;->b:Lm1/j;

    invoke-static {v1, p5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p5}, Lq1/b;->b(Lm1/j;)V

    iput-object p5, p0, Lq1/b;->b:Lm1/j;

    :cond_1
    invoke-virtual {p1}, Le2/j0;->getLayoutDirection()Lb3/m;

    move-result-object p5

    iget-object v1, p0, Lq1/b;->d:Lb3/m;

    if-eq v1, p5, :cond_2

    iput-object p5, p0, Lq1/b;->d:Lb3/m;

    :cond_2
    invoke-interface {v0}, Lo1/d;->d()J

    move-result-wide v1

    const/16 p5, 0x20

    shr-long/2addr v1, p5

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    shr-long v2, p2, p5

    long-to-int p5, v2

    invoke-static {p5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-interface {v0}, Lo1/d;->d()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    and-long/2addr p2, v4

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    sub-float/2addr v2, p3

    iget-object p3, v0, Lo1/b;->m:Lg5/m;

    iget-object p3, p3, Lg5/m;->m:Ljava/lang/Object;

    check-cast p3, Lm2/j;

    const/4 v3, 0x0

    invoke-virtual {p3, v3, v3, v1, v2}, Lm2/j;->k(FFFF)V

    cmpl-float p3, p4, v3

    const/high16 p4, -0x80000000

    if-lez p3, :cond_3

    :try_start_0
    invoke-static {p5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    cmpl-float p3, p3, v3

    if-lez p3, :cond_3

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    cmpl-float p2, p2, v3

    if-lez p2, :cond_3

    invoke-virtual {p0, p1}, Lq1/b;->e(Le2/j0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    iget-object p1, v0, Lo1/b;->m:Lg5/m;

    iget-object p1, p1, Lg5/m;->m:Ljava/lang/Object;

    check-cast p1, Lm2/j;

    neg-float p2, v1

    neg-float p3, v2

    invoke-virtual {p1, p4, p4, p2, p3}, Lm2/j;->k(FFFF)V

    throw p0

    :cond_3
    :goto_1
    iget-object p0, v0, Lo1/b;->m:Lg5/m;

    iget-object p0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast p0, Lm2/j;

    neg-float p1, v1

    neg-float p2, v2

    invoke-virtual {p0, p4, p4, p1, p2}, Lm2/j;->k(FFFF)V

    return-void
.end method

.method public abstract d()J
.end method

.method public abstract e(Le2/j0;)V
.end method
