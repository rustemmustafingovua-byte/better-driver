.class public final Lb3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/c;


# instance fields
.field public final l:F

.field public final m:F

.field public final n:Lc3/a;


# direct methods
.method public constructor <init>(FFLc3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb3/e;->l:F

    iput p2, p0, Lb3/e;->m:F

    iput-object p3, p0, Lb3/e;->n:Lc3/a;

    return-void
.end method


# virtual methods
.method public final S()F
    .locals 0

    iget p0, p0, Lb3/e;->m:F

    return p0
.end method

.method public final a()F
    .locals 0

    iget p0, p0, Lb3/e;->l:F

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lb3/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lb3/e;

    iget v1, p0, Lb3/e;->l:F

    iget v3, p1, Lb3/e;->l:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lb3/e;->m:F

    iget v3, p1, Lb3/e;->m:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lb3/e;->n:Lc3/a;

    iget-object p1, p1, Lb3/e;->n:Lc3/a;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lb3/e;->l:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lb3/e;->m:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget-object p0, p0, Lb3/e;->n:Lc3/a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final m(F)J
    .locals 2

    iget-object p0, p0, Lb3/e;->n:Lc3/a;

    invoke-interface {p0, p1}, Lc3/a;->a(F)F

    move-result p0

    const-wide v0, 0x100000000L

    invoke-static {p0, v0, v1}, La/a;->u(FJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DensityWithConverter(density="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lb3/e;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fontScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb3/e;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", converter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb3/e;->n:Lc3/a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v(J)F
    .locals 4

    invoke-static {p1, p2}, Lb3/o;->b(J)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    invoke-static {v0, v1, v2, v3}, Lb3/p;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lb3/e;->n:Lc3/a;

    invoke-static {p1, p2}, Lb3/o;->c(J)F

    move-result p1

    invoke-interface {p0, p1}, Lc3/a;->b(F)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only Sp can convert to Px"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
