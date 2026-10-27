.class final Lu/l0;
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

    iput p1, p0, Lu/l0;->a:F

    iput p2, p0, Lu/l0;->b:F

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 2

    new-instance v0, Lu/m0;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget v1, p0, Lu/l0;->a:F

    iput v1, v0, Lu/m0;->z:F

    iget p0, p0, Lu/l0;->b:F

    iput p0, v0, Lu/m0;->A:F

    const/4 p0, 0x1

    iput-boolean p0, v0, Lu/m0;->B:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lu/l0;

    if-eqz v1, :cond_1

    check-cast p1, Lu/l0;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p0, Lu/l0;->a:F

    iget v2, p1, Lu/l0;->a:F

    invoke-static {v1, v2}, Lb3/f;->b(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    iget p0, p0, Lu/l0;->b:F

    iget p1, p1, Lu/l0;->b:F

    invoke-static {p0, p1}, Lb3/f;->b(FF)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 4

    check-cast p1, Lu/m0;

    iget v0, p1, Lu/m0;->z:F

    iget v1, p0, Lu/l0;->a:F

    invoke-static {v0, v1}, Lb3/f;->b(FF)Z

    move-result v0

    iget p0, p0, Lu/l0;->b:F

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p1, Lu/m0;->A:F

    invoke-static {v0, p0}, Lb3/f;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lu/m0;->B:Z

    if-eq v0, v2, :cond_1

    :cond_0
    invoke-static {p1}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Le2/g0;->W(Z)V

    :cond_1
    iput v1, p1, Lu/m0;->z:F

    iput p0, p1, Lu/m0;->A:F

    iput-boolean v2, p1, Lu/m0;->B:Z

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lu/l0;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget p0, p0, Lu/l0;->b:F

    invoke-static {p0, v0, v1}, Lm/a;->c(FII)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OffsetModifierElement(x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lu/l0;->a:F

    invoke-static {v1}, Lb3/f;->c(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lu/l0;->b:F

    invoke-static {p0}, Lb3/f;->c(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", rtlAware=true)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
