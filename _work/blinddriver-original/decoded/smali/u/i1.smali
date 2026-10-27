.class public final Lu/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/j1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lr0/e1;


# direct methods
.method public constructor <init>(Lu/c0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu/i1;->a:Ljava/lang/String;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lu/i1;->b:Lr0/e1;

    return-void
.end method


# virtual methods
.method public final a(Lc2/t0;Lb3/m;)I
    .locals 0

    invoke-virtual {p0}, Lu/i1;->e()Lu/c0;

    move-result-object p0

    iget p0, p0, Lu/c0;->a:I

    return p0
.end method

.method public final b(Lc2/t0;Lb3/m;)I
    .locals 0

    invoke-virtual {p0}, Lu/i1;->e()Lu/c0;

    move-result-object p0

    iget p0, p0, Lu/c0;->c:I

    return p0
.end method

.method public final c(Lc2/t0;)I
    .locals 0

    invoke-virtual {p0}, Lu/i1;->e()Lu/c0;

    move-result-object p0

    iget p0, p0, Lu/c0;->d:I

    return p0
.end method

.method public final d(Lb3/c;)I
    .locals 0

    invoke-virtual {p0}, Lu/i1;->e()Lu/c0;

    move-result-object p0

    iget p0, p0, Lu/c0;->b:I

    return p0
.end method

.method public final e()Lu/c0;
    .locals 0

    iget-object p0, p0, Lu/i1;->b:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/c0;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lu/i1;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lu/i1;->e()Lu/c0;

    move-result-object p0

    check-cast p1, Lu/i1;

    invoke-virtual {p1}, Lu/i1;->e()Lu/c0;

    move-result-object p1

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f(Lu/c0;)V
    .locals 0

    iget-object p0, p0, Lu/i1;->b:Lr0/e1;

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lu/i1;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lu/i1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/i1;->e()Lu/c0;

    move-result-object v1

    iget v1, v1, Lu/c0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/i1;->e()Lu/c0;

    move-result-object v1

    iget v1, v1, Lu/c0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/i1;->e()Lu/c0;

    move-result-object v1

    iget v1, v1, Lu/c0;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/i1;->e()Lu/c0;

    move-result-object p0

    iget p0, p0, Lu/c0;->d:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lr0/i;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
