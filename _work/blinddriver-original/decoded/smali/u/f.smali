.class public final Lu/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/e;
.implements Lu/g;


# instance fields
.field public final a:F

.field public final b:Lsc/u0;

.field public final c:F


# direct methods
.method public constructor <init>(FLsc/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu/f;->a:F

    iput-object p2, p0, Lu/f;->b:Lsc/u0;

    iput p1, p0, Lu/f;->c:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Lu/f;->c:F

    return p0
.end method

.method public final b(Lb3/c;I[ILb3/m;[I)V
    .locals 8

    array-length v0, p3

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v0, p0, Lu/f;->a:F

    invoke-interface {p1, v0}, Lb3/c;->h0(F)I

    move-result p1

    sget-object v0, Lb3/m;->m:Lb3/m;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p4, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    sget-object v3, Lu/h;->a:Lu/n;

    if-nez v0, :cond_2

    array-length v0, p3

    move v1, v2

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v1, v0, :cond_3

    aget v4, p3, v1

    add-int/lit8 v6, v5, 0x1

    sub-int v7, p2, v4

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, p5, v5

    sub-int v3, p2, v3

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v5, p5, v5

    add-int/2addr v5, v4

    add-int v4, v5, v3

    add-int/lit8 v1, v1, 0x1

    move v5, v4

    move v4, v3

    move v3, v5

    move v5, v6

    goto :goto_1

    :cond_2
    array-length v0, p3

    sub-int/2addr v0, v1

    move v3, v2

    move v4, v3

    :goto_2
    const/4 v1, -0x1

    if-ge v1, v0, :cond_3

    aget v1, p3, v0

    sub-int v4, p2, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, p5, v0

    sub-int v3, p2, v3

    sub-int/2addr v3, v1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget v3, p5, v0

    add-int/2addr v3, v1

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    sub-int/2addr v3, v4

    if-ge v3, p2, :cond_4

    sub-int/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lu/f;->b:Lsc/u0;

    invoke-virtual {p0, p1, p4}, Lsc/u0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    array-length p1, p5

    :goto_3
    if-ge v2, p1, :cond_4

    aget p2, p5, v2

    add-int/2addr p2, p0

    aput p2, p5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method

.method public final c(ILc2/t0;[I[I)V
    .locals 6

    sget-object v4, Lb3/m;->l:Lb3/m;

    move-object v0, p0

    move v2, p1

    move-object v1, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lu/f;->b(Lb3/c;I[ILb3/m;[I)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lu/f;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lu/f;

    iget v0, p0, Lu/f;->a:F

    iget v1, p1, Lu/f;->a:F

    invoke-static {v0, v1}, Lb3/f;->b(FF)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lu/f;->b:Lsc/u0;

    iget-object p1, p1, Lu/f;->b:Lsc/u0;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lu/f;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object p0, p0, Lu/f;->b:Lsc/u0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Arrangement#spacedAligned("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lu/f;->a:F

    invoke-static {v1}, Lb3/f;->c(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu/f;->b:Lsc/u0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
