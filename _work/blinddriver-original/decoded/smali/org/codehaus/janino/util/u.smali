.class public final Lorg/codehaus/janino/util/u;
.super Lorg/codehaus/janino/util/v;
.source "SourceFile"


# instance fields
.field public final a:S

.field public final b:S


# direct methods
.method public constructor <init>(SS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/codehaus/janino/util/u;->a:S

    iput-short p2, p0, Lorg/codehaus/janino/util/u;->b:S

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b(Ljava/io/DataOutputStream;)V
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-short v0, p0, Lorg/codehaus/janino/util/u;->a:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short p0, p0, Lorg/codehaus/janino/util/u;->b:S

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/codehaus/janino/util/u;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/codehaus/janino/util/u;

    iget-short v0, p1, Lorg/codehaus/janino/util/u;->a:S

    iget-short v1, p0, Lorg/codehaus/janino/util/u;->a:S

    if-ne v0, v1, :cond_0

    iget-short p1, p1, Lorg/codehaus/janino/util/u;->b:S

    iget-short p0, p0, Lorg/codehaus/janino/util/u;->b:S

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-short v0, p0, Lorg/codehaus/janino/util/u;->b:S

    shl-int/lit8 v0, v0, 0x10

    iget-short p0, p0, Lorg/codehaus/janino/util/u;->a:S

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CONSTANT_NameAndType_info("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v1, p0, Lorg/codehaus/janino/util/u;->a:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lorg/codehaus/janino/util/u;->b:S

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
