.class final Lu/g1;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu/g1;->a:F

    iput p2, p0, Lu/g1;->b:F

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 2

    new-instance v0, Lu/h1;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget v1, p0, Lu/g1;->a:F

    iput v1, v0, Lu/h1;->z:F

    iget p0, p0, Lu/g1;->b:F

    iput p0, v0, Lu/h1;->A:F

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lu/g1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lu/g1;

    iget v0, p1, Lu/g1;->a:F

    iget v1, p0, Lu/g1;->a:F

    invoke-static {v1, v0}, Lb3/f;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lu/g1;->b:F

    iget p1, p1, Lu/g1;->b:F

    invoke-static {p0, p1}, Lb3/f;->b(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 1

    check-cast p1, Lu/h1;

    iget v0, p0, Lu/g1;->a:F

    iput v0, p1, Lu/h1;->z:F

    iget p0, p0, Lu/g1;->b:F

    iput p0, p1, Lu/h1;->A:F

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lu/g1;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lu/g1;->b:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
