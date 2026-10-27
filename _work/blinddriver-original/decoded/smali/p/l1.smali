.class final Lp/l1;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lp/q;

.field public final c:F


# direct methods
.method public constructor <init>(ILp/q;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lp/l1;->a:I

    iput-object p2, p0, Lp/l1;->b:Lp/q;

    iput p3, p0, Lp/l1;->c:F

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 3

    new-instance v0, Lp/m1;

    iget-object v1, p0, Lp/l1;->b:Lp/q;

    iget v2, p0, Lp/l1;->c:F

    iget p0, p0, Lp/l1;->a:I

    invoke-direct {v0, p0, v1, v2}, Lp/m1;-><init>(ILp/q;F)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lp/l1;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lp/l1;

    iget v0, p0, Lp/l1;->a:I

    iget v1, p1, Lp/l1;->a:I

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lp/l1;->b:Lp/q;

    iget-object v1, p1, Lp/l1;->b:Lp/q;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget p0, p0, Lp/l1;->c:F

    iget p1, p1, Lp/l1;->c:F

    invoke-static {p0, p1}, Lb3/f;->b(FF)Z

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 2

    check-cast p1, Lp/m1;

    iget-object v0, p1, Lp/m1;->G:Lr0/e1;

    iget-object v1, p0, Lp/l1;->b:Lp/q;

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v0, p1, Lp/m1;->H:Lr0/e1;

    new-instance v1, Lp/j1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget v0, p1, Lp/m1;->z:I

    iget v1, p0, Lp/l1;->a:I

    iget p0, p0, Lp/l1;->c:F

    if-ne v0, v1, :cond_1

    iget v0, p1, Lp/m1;->A:F

    invoke-static {v0, p0}, Lb3/f;->b(FF)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput v1, p1, Lp/m1;->z:I

    iput p0, p1, Lp/m1;->A:F

    invoke-virtual {p1}, Lp/m1;->N0()V

    return-void
.end method

.method public final hashCode()I
    .locals 3

    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    const/16 v2, 0x4b0

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget v2, p0, Lp/l1;->a:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-object v2, p0, Lp/l1;->b:Lp/q;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget p0, p0, Lp/l1;->c:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MarqueeModifierElement(iterations=2147483647, animationMode=Immediately, delayMillis=1200, initialDelayMillis="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lp/l1;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp/l1;->b:Lp/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", velocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lp/l1;->c:F

    invoke-static {p0}, Lb3/f;->c(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
