.class public final Lorg/codehaus/janino/util/q;
.super Lorg/codehaus/janino/util/z;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/codehaus/janino/util/q;->a:I

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

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget p0, p0, Lorg/codehaus/janino/util/q;->a:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/codehaus/janino/util/q;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/codehaus/janino/util/q;

    iget p1, p1, Lorg/codehaus/janino/util/q;->a:I

    iget p0, p0, Lorg/codehaus/janino/util/q;->a:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lorg/codehaus/janino/util/q;->a:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CONSTANT_Integer_info("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/codehaus/janino/util/q;->a:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
