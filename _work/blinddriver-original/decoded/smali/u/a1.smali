.class final Lu/a1;
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

.field public final c:F

.field public final d:F

.field public final e:Z


# direct methods
.method public synthetic constructor <init>(FFFFI)V
    .locals 2

    and-int/lit8 v0, p5, 0x1

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    move p2, v1

    :cond_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    move p3, v1

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v1

    :cond_3
    const/4 p5, 0x1

    .line 7
    invoke-direct/range {p0 .. p5}, Lu/a1;-><init>(FFFFZ)V

    return-void
.end method

.method public constructor <init>(FFFFZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lu/a1;->a:F

    .line 3
    iput p2, p0, Lu/a1;->b:F

    .line 4
    iput p3, p0, Lu/a1;->c:F

    .line 5
    iput p4, p0, Lu/a1;->d:F

    .line 6
    iput-boolean p5, p0, Lu/a1;->e:Z

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 2

    new-instance v0, Lu/c1;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget v1, p0, Lu/a1;->a:F

    iput v1, v0, Lu/c1;->z:F

    iget v1, p0, Lu/a1;->b:F

    iput v1, v0, Lu/c1;->A:F

    iget v1, p0, Lu/a1;->c:F

    iput v1, v0, Lu/c1;->B:F

    iget v1, p0, Lu/a1;->d:F

    iput v1, v0, Lu/c1;->C:F

    iget-boolean p0, p0, Lu/a1;->e:Z

    iput-boolean p0, v0, Lu/c1;->D:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lu/a1;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lu/a1;

    iget v0, p1, Lu/a1;->a:F

    iget v1, p0, Lu/a1;->a:F

    invoke-static {v1, v0}, Lb3/f;->b(FF)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lu/a1;->b:F

    iget v1, p1, Lu/a1;->b:F

    invoke-static {v0, v1}, Lb3/f;->b(FF)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p0, Lu/a1;->c:F

    iget v1, p1, Lu/a1;->c:F

    invoke-static {v0, v1}, Lb3/f;->b(FF)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget v0, p0, Lu/a1;->d:F

    iget v1, p1, Lu/a1;->d:F

    invoke-static {v0, v1}, Lb3/f;->b(FF)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean p0, p0, Lu/a1;->e:Z

    iget-boolean p1, p1, Lu/a1;->e:Z

    if-eq p0, p1, :cond_6

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 1

    check-cast p1, Lu/c1;

    iget v0, p0, Lu/a1;->a:F

    iput v0, p1, Lu/c1;->z:F

    iget v0, p0, Lu/a1;->b:F

    iput v0, p1, Lu/c1;->A:F

    iget v0, p0, Lu/a1;->c:F

    iput v0, p1, Lu/c1;->B:F

    iget v0, p0, Lu/a1;->d:F

    iput v0, p1, Lu/c1;->C:F

    iget-boolean p0, p0, Lu/a1;->e:Z

    iput-boolean p0, p1, Lu/c1;->D:Z

    return-void
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lu/a1;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lu/a1;->b:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lu/a1;->c:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lu/a1;->d:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget-boolean p0, p0, Lu/a1;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
