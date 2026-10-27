.class final Lo0/e5;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Ls/i;

.field public final b:Z

.field public final c:Ln/r0;


# direct methods
.method public constructor <init>(Ls/i;ZLn/r0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/e5;->a:Ls/i;

    iput-boolean p2, p0, Lo0/e5;->b:Z

    iput-object p3, p0, Lo0/e5;->c:Ln/r0;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 2

    new-instance v0, Lo0/g5;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object v1, p0, Lo0/e5;->a:Ls/i;

    iput-object v1, v0, Lo0/g5;->z:Ls/i;

    iget-boolean v1, p0, Lo0/e5;->b:Z

    iput-boolean v1, v0, Lo0/g5;->A:Z

    iget-object p0, p0, Lo0/e5;->c:Ln/r0;

    iput-object p0, v0, Lo0/g5;->B:Ln/r0;

    const/high16 p0, 0x7fc00000    # Float.NaN

    iput p0, v0, Lo0/g5;->F:F

    iput p0, v0, Lo0/g5;->G:F

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lo0/e5;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lo0/e5;

    iget-object v0, p0, Lo0/e5;->a:Ls/i;

    iget-object v1, p1, Lo0/e5;->a:Ls/i;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo0/e5;->b:Z

    iget-boolean v1, p1, Lo0/e5;->b:Z

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lo0/e5;->c:Ln/r0;

    iget-object p1, p1, Lo0/e5;->c:Ln/r0;

    invoke-virtual {p0, p1}, Ln/r0;->equals(Ljava/lang/Object;)Z

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

    check-cast p1, Lo0/g5;

    iget-object v0, p0, Lo0/e5;->a:Ls/i;

    iput-object v0, p1, Lo0/g5;->z:Ls/i;

    iget-boolean v0, p1, Lo0/g5;->A:Z

    iget-boolean v1, p0, Lo0/e5;->b:Z

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Le2/l;->l(Le2/x;)V

    :cond_0
    iput-boolean v1, p1, Lo0/g5;->A:Z

    iget-object p0, p0, Lo0/e5;->c:Ln/r0;

    iput-object p0, p1, Lo0/g5;->B:Ln/r0;

    iget-object p0, p1, Lo0/g5;->E:Ln/c;

    if-nez p0, :cond_1

    iget p0, p1, Lo0/g5;->G:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_1

    iget p0, p1, Lo0/g5;->G:F

    invoke-static {p0}, Ln/d;->a(F)Ln/c;

    move-result-object p0

    iput-object p0, p1, Lo0/g5;->E:Ln/c;

    :cond_1
    iget-object p0, p1, Lo0/g5;->D:Ln/c;

    if-nez p0, :cond_2

    iget p0, p1, Lo0/g5;->F:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_2

    iget p0, p1, Lo0/g5;->F:F

    invoke-static {p0}, Ln/d;->a(F)Ln/c;

    move-result-object p0

    iput-object p0, p1, Lo0/g5;->D:Ln/c;

    :cond_2
    return-void
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lo0/e5;->a:Ls/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lo0/e5;->b:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object p0, p0, Lo0/e5;->c:Ln/r0;

    invoke-virtual {p0}, Ln/r0;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThumbElement(interactionSource="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo0/e5;->a:Ls/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", checked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo0/e5;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", animationSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo0/e5;->c:Ln/r0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
