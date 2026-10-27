.class public final Lq3/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic l:Lq3/e0;

.field public final synthetic m:Lq3/x0;

.field public final synthetic n:Lq3/x0;

.field public final synthetic o:I

.field public final synthetic p:Landroid/view/View;


# direct methods
.method public constructor <init>(Lq3/e0;Lq3/x0;Lq3/x0;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/w;->l:Lq3/e0;

    iput-object p2, p0, Lq3/w;->m:Lq3/x0;

    iput-object p3, p0, Lq3/w;->n:Lq3/x0;

    iput p4, p0, Lq3/w;->o:I

    iput-object p5, p0, Lq3/w;->p:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 14

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lq3/w;->l:Lq3/e0;

    iget-object v1, v0, Lq3/e0;->a:Lq3/d0;

    invoke-virtual {v1, p1}, Lq3/d0;->e(F)V

    iget-object p1, p0, Lq3/w;->m:Lq3/x0;

    iget-object v2, p1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v1}, Lq3/d0;->c()F

    move-result v1

    sget-object v3, Lq3/z;->e:Landroid/view/animation/PathInterpolator;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x24

    if-lt v3, v4, :cond_0

    new-instance v3, Lq3/k0;

    invoke-direct {v3, p1}, Lq3/k0;-><init>(Lq3/x0;)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x23

    if-lt v3, v4, :cond_1

    new-instance v3, Lq3/j0;

    invoke-direct {v3, p1}, Lq3/j0;-><init>(Lq3/x0;)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x22

    if-lt v3, v4, :cond_2

    new-instance v3, Lq3/i0;

    invoke-direct {v3, p1}, Lq3/i0;-><init>(Lq3/x0;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x1f

    if-lt v3, v4, :cond_3

    new-instance v3, Lq3/h0;

    invoke-direct {v3, p1}, Lq3/h0;-><init>(Lq3/x0;)V

    goto :goto_0

    :cond_3
    const/16 v4, 0x1e

    if-lt v3, v4, :cond_4

    new-instance v3, Lq3/g0;

    invoke-direct {v3, p1}, Lq3/g0;-><init>(Lq3/x0;)V

    goto :goto_0

    :cond_4
    new-instance v3, Lq3/f0;

    invoke-direct {v3, p1}, Lq3/f0;-><init>(Lq3/x0;)V

    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/16 v4, 0x200

    if-gt p1, v4, :cond_6

    iget v4, p0, Lq3/w;->o:I

    and-int/2addr v4, p1

    if-nez v4, :cond_5

    invoke-virtual {v2, p1}, Lq3/u0;->i(I)Ll3/b;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lq3/l0;->d(ILl3/b;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2, p1}, Lq3/u0;->i(I)Ll3/b;

    move-result-object v4

    iget-object v5, p0, Lq3/w;->n:Lq3/x0;

    iget-object v5, v5, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v5, p1}, Lq3/u0;->i(I)Ll3/b;

    move-result-object v5

    iget v6, v4, Ll3/b;->a:I

    iget v7, v5, Ll3/b;->a:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v1

    mul-float/2addr v6, v7

    float-to-double v8, v6

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v6, v8

    iget v8, v4, Ll3/b;->b:I

    iget v9, v5, Ll3/b;->b:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-double v8, v8

    add-double/2addr v8, v10

    double-to-int v8, v8

    iget v9, v4, Ll3/b;->c:I

    iget v12, v5, Ll3/b;->c:I

    sub-int/2addr v9, v12

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-double v12, v9

    add-double/2addr v12, v10

    double-to-int v9, v12

    iget v12, v4, Ll3/b;->d:I

    iget v5, v5, Ll3/b;->d:I

    sub-int/2addr v12, v5

    int-to-float v5, v12

    mul-float/2addr v5, v7

    float-to-double v12, v5

    add-double/2addr v12, v10

    double-to-int v5, v12

    invoke-static {v4, v6, v8, v9, v5}, Lq3/x0;->a(Ll3/b;IIII)Ll3/b;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lq3/l0;->d(ILl3/b;)V

    :goto_2
    shl-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lq3/f0;->b()Lq3/x0;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lq3/w;->p:Landroid/view/View;

    invoke-static {p0, p1, v0}, Lq3/z;->h(Landroid/view/View;Lq3/x0;Ljava/util/List;)V

    return-void
.end method
