.class public final Lorg/codehaus/janino/util/l;
.super Lorg/codehaus/janino/util/h;
.source "SourceFile"


# instance fields
.field public final b:S

.field public final c:S

.field public final d:[B

.field public final e:[Lorg/codehaus/janino/util/k;

.field public final f:[Lorg/codehaus/janino/util/h;


# direct methods
.method public constructor <init>(SSS[B[Lorg/codehaus/janino/util/k;[Lorg/codehaus/janino/util/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codehaus/janino/util/h;-><init>(S)V

    iput-short p2, p0, Lorg/codehaus/janino/util/l;->b:S

    iput-short p3, p0, Lorg/codehaus/janino/util/l;->c:S

    iput-object p4, p0, Lorg/codehaus/janino/util/l;->d:[B

    iput-object p5, p0, Lorg/codehaus/janino/util/l;->e:[Lorg/codehaus/janino/util/k;

    iput-object p6, p0, Lorg/codehaus/janino/util/l;->f:[Lorg/codehaus/janino/util/h;

    return-void
.end method


# virtual methods
.method public final b(Ljava/io/DataOutputStream;)V
    .locals 6

    iget-short v0, p0, Lorg/codehaus/janino/util/l;->b:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v0, p0, Lorg/codehaus/janino/util/l;->c:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lorg/codehaus/janino/util/l;->d:[B

    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/codehaus/janino/util/l;->e:[Lorg/codehaus/janino/util/k;

    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-short v5, v4, Lorg/codehaus/janino/util/k;->a:S

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v5, v4, Lorg/codehaus/janino/util/k;->b:S

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v5, v4, Lorg/codehaus/janino/util/k;->c:S

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v4, v4, Lorg/codehaus/janino/util/k;->d:S

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/codehaus/janino/util/l;->f:[Lorg/codehaus/janino/util/h;

    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p0, v2

    invoke-virtual {v1, p1}, Lorg/codehaus/janino/util/h;->a(Ljava/io/DataOutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
