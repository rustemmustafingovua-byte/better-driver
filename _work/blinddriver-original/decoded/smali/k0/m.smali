.class final Lk0/m;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Lk0/b;

.field public final b:Lb0/r1;

.field public final c:Lm0/v1;


# direct methods
.method public constructor <init>(Lk0/b;Lb0/r1;Lm0/v1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/m;->a:Lk0/b;

    iput-object p2, p0, Lk0/m;->b:Lb0/r1;

    iput-object p3, p0, Lk0/m;->c:Lm0/v1;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 3

    new-instance v0, Lk0/n;

    iget-object v1, p0, Lk0/m;->b:Lb0/r1;

    iget-object v2, p0, Lk0/m;->c:Lm0/v1;

    iget-object p0, p0, Lk0/m;->a:Lk0/b;

    invoke-direct {v0, p0, v1, v2}, Lk0/n;-><init>(Lk0/b;Lb0/r1;Lm0/v1;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk0/m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk0/m;

    iget-object v1, p0, Lk0/m;->a:Lk0/b;

    iget-object v3, p1, Lk0/m;->a:Lk0/b;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lk0/m;->b:Lb0/r1;

    iget-object v3, p1, Lk0/m;->b:Lb0/r1;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lk0/m;->c:Lm0/v1;

    iget-object p1, p1, Lk0/m;->c:Lm0/v1;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final f(Lf1/q;)V
    .locals 2

    check-cast p1, Lk0/n;

    iget-boolean v0, p1, Lf1/q;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lk0/n;->z:Lk0/b;

    invoke-virtual {v0}, Lk0/b;->e()V

    iget-object v0, p1, Lk0/n;->z:Lk0/b;

    invoke-virtual {v0, p1}, Lk0/b;->k(Lk0/n;)V

    :cond_0
    iget-object v0, p0, Lk0/m;->a:Lk0/b;

    iput-object v0, p1, Lk0/n;->z:Lk0/b;

    iget-boolean v1, p1, Lf1/q;->y:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lk0/b;->a:Lk0/n;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Expected textInputModifierNode to be null"

    invoke-static {v1}, Lt/b;->c(Ljava/lang/String;)V

    :goto_0
    iput-object p1, v0, Lk0/b;->a:Lk0/n;

    :cond_2
    iget-object v0, p0, Lk0/m;->b:Lb0/r1;

    iput-object v0, p1, Lk0/n;->A:Lb0/r1;

    iget-object p0, p0, Lk0/m;->c:Lm0/v1;

    iput-object p0, p1, Lk0/n;->B:Lm0/v1;

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lk0/m;->a:Lk0/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lk0/m;->b:Lb0/r1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lk0/m;->c:Lm0/v1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LegacyAdaptingPlatformTextInputModifier(serviceAdapter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lk0/m;->a:Lk0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", legacyTextFieldState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk0/m;->b:Lb0/r1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textFieldSelectionManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lk0/m;->c:Lm0/v1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
