.class public final Lorg/codehaus/janino/util/n;
.super Lorg/codehaus/janino/util/z;
.source "SourceFile"


# instance fields
.field public final a:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/codehaus/janino/util/n;->a:D

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Ljava/io/DataOutputStream;)V
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-wide v0, p0, Lorg/codehaus/janino/util/n;->a:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/codehaus/janino/util/n;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/codehaus/janino/util/n;

    iget-wide v0, p1, Lorg/codehaus/janino/util/n;->a:D

    iget-wide p0, p0, Lorg/codehaus/janino/util/n;->a:D

    cmpl-double p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lorg/codehaus/janino/util/n;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    long-to-int p0, v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CONSTANT_Double_info("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/codehaus/janino/util/n;->a:D

    const-string p0, ")"

    invoke-static {v0, v1, v2, p0}, Lm/a;->m(Ljava/lang/StringBuilder;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
