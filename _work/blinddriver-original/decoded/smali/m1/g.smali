.class public final Lm1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Path;

.field public b:Landroid/graphics/RectF;

.field public c:[F

.field public d:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1/g;->a:Landroid/graphics/Path;

    return-void
.end method

.method public static a(Lm1/g;Lm1/g;)V
    .locals 3

    iget-object p0, p0, Lm1/g;->a:Landroid/graphics/Path;

    iget-object p1, p1, Lm1/g;->a:Landroid/graphics/Path;

    const-wide/16 v0, 0x0

    long-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    return-void
.end method

.method public static b(Lm1/g;Ll1/d;)V
    .locals 12

    sget-object v0, Lm1/d0;->l:[Lm1/d0;

    iget-object v0, p0, Lm1/g;->b:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lm1/g;->b:Landroid/graphics/RectF;

    :cond_0
    iget-object v0, p0, Lm1/g;->b:Landroid/graphics/RectF;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v1, p1, Ll1/d;->a:F

    iget-wide v2, p1, Ll1/d;->h:J

    iget-wide v4, p1, Ll1/d;->g:J

    iget-wide v6, p1, Ll1/d;->f:J

    iget-wide v8, p1, Ll1/d;->e:J

    iget v10, p1, Ll1/d;->b:F

    iget v11, p1, Ll1/d;->c:F

    iget p1, p1, Ll1/d;->d:F

    invoke-virtual {v0, v1, v10, v11, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lm1/g;->c:[F

    if-nez p1, :cond_1

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lm1/g;->c:[F

    :cond_1
    iget-object p1, p0, Lm1/g;->c:[F

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    const/16 v0, 0x20

    shr-long v10, v8, v0

    long-to-int v1, v10

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const/4 v10, 0x0

    aput v1, p1, v10

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    long-to-int v1, v8

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const/4 v8, 0x1

    aput v1, p1, v8

    shr-long v8, v6, v0

    long-to-int v1, v8

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const/4 v8, 0x2

    aput v1, p1, v8

    and-long/2addr v6, v10

    long-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const/4 v6, 0x3

    aput v1, p1, v6

    shr-long v6, v4, v0

    long-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const/4 v6, 0x4

    aput v1, p1, v6

    and-long/2addr v4, v10

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const/4 v4, 0x5

    aput v1, p1, v4

    shr-long v0, v2, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const/4 v1, 0x6

    aput v0, p1, v1

    and-long v0, v2, v10

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const/4 v1, 0x7

    aput v0, p1, v1

    iget-object p1, p0, Lm1/g;->a:Landroid/graphics/Path;

    iget-object v0, p0, Lm1/g;->b:Landroid/graphics/RectF;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p0, p0, Lm1/g;->c:[F

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, p0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-void
.end method


# virtual methods
.method public final c()Ll1/c;
    .locals 4

    iget-object v0, p0, Lm1/g;->b:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lm1/g;->b:Landroid/graphics/RectF;

    :cond_0
    iget-object v0, p0, Lm1/g;->b:Landroid/graphics/RectF;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p0, p0, Lm1/g;->a:Landroid/graphics/Path;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance p0, Ll1/c;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v1, v2, v3, v0}, Ll1/c;-><init>(FFFF)V

    return-object p0
.end method

.method public final d(FF)V
    .locals 0

    iget-object p0, p0, Lm1/g;->a:Landroid/graphics/Path;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public final e(FF)V
    .locals 0

    iget-object p0, p0, Lm1/g;->a:Landroid/graphics/Path;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    return-void
.end method

.method public final f(Lm1/g;Lm1/g;I)Z
    .locals 2

    if-nez p3, :cond_0

    sget-object p3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    sget-object p3, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    sget-object p3, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    sget-object p3, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    goto :goto_0

    :cond_3
    sget-object p3, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    :goto_0
    instance-of v0, p1, Lm1/g;

    const-string v1, "Unable to obtain android.graphics.Path"

    if-eqz v0, :cond_5

    iget-object p1, p1, Lm1/g;->a:Landroid/graphics/Path;

    instance-of v0, p2, Lm1/g;

    if-eqz v0, :cond_4

    iget-object p2, p2, Lm1/g;->a:Landroid/graphics/Path;

    iget-object p0, p0, Lm1/g;->a:Landroid/graphics/Path;

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    move-result p0

    return p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()V
    .locals 0

    iget-object p0, p0, Lm1/g;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public final h()V
    .locals 0

    iget-object p0, p0, Lm1/g;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->rewind()V

    return-void
.end method
