.class public final Lorg/codehaus/janino/util/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/janino/util/r0;


# instance fields
.field public a:S


# virtual methods
.method public final a(Ljava/io/DataOutputStream;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-short p0, p0, Lorg/codehaus/janino/util/q0;->a:S

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method public final b()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/codehaus/janino/util/q0;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/codehaus/janino/util/q0;

    iget-short p1, p1, Lorg/codehaus/janino/util/q0;->a:S

    iget-short p0, p0, Lorg/codehaus/janino/util/q0;->a:S

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-short p0, p0, Lorg/codehaus/janino/util/q0;->a:S

    xor-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uninitialized(offset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short p0, p0, Lorg/codehaus/janino/util/q0;->a:S

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
