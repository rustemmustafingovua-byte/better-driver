.class final Lj1/l;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Lq1/b;

.field public final b:Lf1/e;

.field public final c:Lc2/x0;

.field public final d:F

.field public final e:Lm1/j;


# direct methods
.method public constructor <init>(Lq1/b;Lf1/e;Lc2/x0;FLm1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/l;->a:Lq1/b;

    iput-object p2, p0, Lj1/l;->b:Lf1/e;

    iput-object p3, p0, Lj1/l;->c:Lc2/x0;

    iput p4, p0, Lj1/l;->d:F

    iput-object p5, p0, Lj1/l;->e:Lm1/j;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 2

    new-instance v0, Lj1/m;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object v1, p0, Lj1/l;->a:Lq1/b;

    iput-object v1, v0, Lj1/m;->z:Lq1/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj1/m;->A:Z

    iget-object v1, p0, Lj1/l;->b:Lf1/e;

    iput-object v1, v0, Lj1/m;->B:Lf1/e;

    iget-object v1, p0, Lj1/l;->c:Lc2/x0;

    iput-object v1, v0, Lj1/m;->C:Lc2/x0;

    iget v1, p0, Lj1/l;->d:F

    iput v1, v0, Lj1/m;->D:F

    iget-object p0, p0, Lj1/l;->e:Lm1/j;

    iput-object p0, v0, Lj1/m;->E:Lm1/j;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lj1/l;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lj1/l;

    iget-object v0, p0, Lj1/l;->a:Lq1/b;

    iget-object v1, p1, Lj1/l;->a:Lq1/b;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lj1/l;->b:Lf1/e;

    iget-object v1, p1, Lj1/l;->b:Lf1/e;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lj1/l;->c:Lc2/x0;

    iget-object v1, p1, Lj1/l;->c:Lc2/x0;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget v0, p0, Lj1/l;->d:F

    iget v1, p1, Lj1/l;->d:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lj1/l;->e:Lm1/j;

    iget-object p1, p1, Lj1/l;->e:Lm1/j;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 7

    check-cast p1, Lj1/m;

    iget-boolean v0, p1, Lj1/m;->A:Z

    iget-object v1, p0, Lj1/l;->a:Lq1/b;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lj1/m;->z:Lq1/b;

    invoke-virtual {v0}, Lq1/b;->d()J

    move-result-wide v3

    invoke-virtual {v1}, Lq1/b;->d()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ll1/e;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-object v1, p1, Lj1/m;->z:Lq1/b;

    iput-boolean v2, p1, Lj1/m;->A:Z

    iget-object v1, p0, Lj1/l;->b:Lf1/e;

    iput-object v1, p1, Lj1/m;->B:Lf1/e;

    iget-object v1, p0, Lj1/l;->c:Lc2/x0;

    iput-object v1, p1, Lj1/m;->C:Lc2/x0;

    iget v1, p0, Lj1/l;->d:F

    iput v1, p1, Lj1/m;->D:F

    iget-object p0, p0, Lj1/l;->e:Lm1/j;

    iput-object p0, p1, Lj1/m;->E:Lm1/j;

    if-eqz v0, :cond_2

    invoke-static {p1}, Le2/l;->l(Le2/x;)V

    :cond_2
    invoke-static {p1}, Le2/l;->k(Le2/n;)V

    return-void
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lj1/l;->a:Lq1/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object v2, p0, Lj1/l;->b:Lf1/e;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lj1/l;->c:Lc2/x0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lj1/l;->d:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget-object p0, p0, Lj1/l;->e:Lm1/j;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PainterElement(painter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj1/l;->a:Lq1/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sizeToIntrinsics=true, alignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj1/l;->b:Lf1/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj1/l;->c:Lc2/x0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj1/l;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", colorFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lj1/l;->e:Lm1/j;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
