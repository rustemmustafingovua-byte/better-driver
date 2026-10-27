.class public final Lp/w;
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

.field public final b:Lm1/j0;

.field public final c:Lm1/h0;


# direct methods
.method public constructor <init>(FLm1/j0;Lm1/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lp/w;->a:F

    iput-object p2, p0, Lp/w;->b:Lm1/j0;

    iput-object p3, p0, Lp/w;->c:Lm1/h0;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 3

    new-instance v0, Lp/v;

    iget-object v1, p0, Lp/w;->b:Lm1/j0;

    iget-object v2, p0, Lp/w;->c:Lm1/h0;

    iget p0, p0, Lp/w;->a:F

    invoke-direct {v0, p0, v1, v2}, Lp/v;-><init>(FLm1/j0;Lm1/h0;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lp/w;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lp/w;

    iget v0, p0, Lp/w;->a:F

    iget v1, p1, Lp/w;->a:F

    invoke-static {v0, v1}, Lb3/f;->b(FF)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lp/w;->b:Lm1/j0;

    iget-object v1, p1, Lp/w;->b:Lm1/j0;

    invoke-virtual {v0, v1}, Lm1/j0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lp/w;->c:Lm1/h0;

    iget-object p1, p1, Lp/w;->c:Lm1/h0;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .locals 3

    check-cast p1, Lp/v;

    iget v0, p1, Lp/v;->C:F

    iget-object v1, p1, Lp/v;->F:Lj1/b;

    iget v2, p0, Lp/w;->a:F

    invoke-static {v0, v2}, Lb3/f;->b(FF)Z

    move-result v0

    if-nez v0, :cond_0

    iput v2, p1, Lp/v;->C:F

    invoke-virtual {v1}, Lj1/b;->M0()V

    :cond_0
    iget-object v0, p1, Lp/v;->D:Lm1/j0;

    iget-object v2, p0, Lp/w;->b:Lm1/j0;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v2, p1, Lp/v;->D:Lm1/j0;

    invoke-virtual {v1}, Lj1/b;->M0()V

    :cond_1
    iget-object v0, p1, Lp/v;->E:Lm1/h0;

    iget-object p0, p0, Lp/w;->c:Lm1/h0;

    invoke-static {v0, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p0, p1, Lp/v;->E:Lm1/h0;

    invoke-virtual {v1}, Lj1/b;->M0()V

    invoke-static {p1}, Le2/l;->m(Le2/z1;)V

    :cond_2
    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lp/w;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lp/w;->b:Lm1/j0;

    invoke-virtual {v1}, Lm1/j0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lp/w;->c:Lm1/h0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BorderModifierNodeElement(width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lp/w;->a:F

    invoke-static {v1}, Lb3/f;->c(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", brush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp/w;->b:Lm1/j0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lp/w;->c:Lm1/h0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
