.class public final Lorg/codehaus/janino/util/l0;
.super Lorg/codehaus/janino/util/p0;
.source "SourceFile"


# instance fields
.field public final b:[Lorg/codehaus/janino/util/r0;

.field public final c:[Lorg/codehaus/janino/util/r0;


# direct methods
.method public constructor <init>(I[Lorg/codehaus/janino/util/r0;[Lorg/codehaus/janino/util/r0;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codehaus/janino/util/p0;-><init>(I)V

    iput-object p2, p0, Lorg/codehaus/janino/util/l0;->b:[Lorg/codehaus/janino/util/r0;

    iput-object p3, p0, Lorg/codehaus/janino/util/l0;->c:[Lorg/codehaus/janino/util/r0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutputStream;)V
    .locals 5

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, p0, Lorg/codehaus/janino/util/p0;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lorg/codehaus/janino/util/l0;->b:[Lorg/codehaus/janino/util/r0;

    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v4, p1}, Lorg/codehaus/janino/util/r0;->a(Ljava/io/DataOutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/codehaus/janino/util/l0;->c:[Lorg/codehaus/janino/util/r0;

    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p0, v2

    invoke-interface {v1, p1}, Lorg/codehaus/janino/util/r0;->a(Ljava/io/DataOutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "full_frame(offsetDelta="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codehaus/janino/util/p0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", locals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/janino/util/l0;->b:[Lorg/codehaus/janino/util/r0;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/codehaus/janino/util/l0;->c:[Lorg/codehaus/janino/util/r0;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
