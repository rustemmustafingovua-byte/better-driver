.class public final Lp0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/m;


# instance fields
.field public final a:Lf1/i;

.field public final b:Lf1/i;

.field public final c:I


# direct methods
.method public constructor <init>(Lf1/i;Lf1/i;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/d;->a:Lf1/i;

    iput-object p2, p0, Lp0/d;->b:Lf1/i;

    iput p3, p0, Lp0/d;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lb3/k;JI)I
    .locals 1

    invoke-virtual {p1}, Lb3/k;->b()I

    move-result p2

    iget-object p3, p0, Lp0/d;->b:Lf1/i;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, p2}, Lf1/i;->a(II)I

    move-result p2

    iget-object p3, p0, Lp0/d;->a:Lf1/i;

    invoke-virtual {p3, v0, p4}, Lf1/i;->a(II)I

    move-result p3

    neg-int p3, p3

    iget p1, p1, Lb3/k;->b:I

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    iget p0, p0, Lp0/d;->c:I

    add-int/2addr p1, p0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lp0/d;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lp0/d;

    iget-object v0, p0, Lp0/d;->a:Lf1/i;

    iget-object v1, p1, Lp0/d;->a:Lf1/i;

    invoke-virtual {v0, v1}, Lf1/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lp0/d;->b:Lf1/i;

    iget-object v1, p1, Lp0/d;->b:Lf1/i;

    invoke-virtual {v0, v1}, Lf1/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget p0, p0, Lp0/d;->c:I

    iget p1, p1, Lp0/d;->c:I

    if-eq p0, p1, :cond_4

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lp0/d;->a:Lf1/i;

    iget v0, v0, Lf1/i;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lp0/d;->b:Lf1/i;

    iget v2, v2, Lf1/i;->a:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget p0, p0, Lp0/d;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Vertical(menuAlignment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lp0/d;->a:Lf1/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", anchorAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp0/d;->b:Lf1/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lp0/d;->c:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lr0/i;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
