.class public final Lp0/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/l;


# instance fields
.field public final a:Lf1/f;


# direct methods
.method public constructor <init>(Lf1/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/a0;->a:Lf1/f;

    return-void
.end method


# virtual methods
.method public final a(Lb3/k;JILb3/m;)I
    .locals 0

    const/16 p1, 0x20

    shr-long p1, p2, p1

    long-to-int p1, p1

    if-lt p4, p1, :cond_1

    sub-int/2addr p1, p4

    int-to-float p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    sget-object p1, Lb3/m;->l:Lb3/m;

    const/4 p2, 0x0

    if-ne p5, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    :goto_0
    const/4 p1, 0x1

    int-to-float p1, p1

    add-float/2addr p1, p2

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lp0/a0;->a:Lf1/f;

    invoke-virtual {p0, p4, p1, p5}, Lf1/f;->a(IILb3/m;)I

    move-result p0

    sub-int/2addr p1, p4

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lg6/c1;->f(III)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lp0/a0;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lp0/a0;

    iget-object p0, p0, Lp0/a0;->a:Lf1/f;

    iget-object p1, p1, Lp0/a0;->a:Lf1/f;

    invoke-virtual {p0, p1}, Lf1/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, Lp0/a0;->a:Lf1/f;

    iget p0, p0, Lf1/f;->a:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Horizontal(alignment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lp0/a0;->a:Lf1/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", margin=0)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
