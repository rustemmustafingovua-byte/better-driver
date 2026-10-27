.class public Lf8/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final n:Lf8/j;

.field public static final o:Ld7/g;


# instance fields
.field public l:I

.field public final m:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf8/j;

    sget-object v1, Lf8/f4;->c:[B

    invoke-direct {v0, v1}, Lf8/j;-><init>([B)V

    sput-object v0, Lf8/j;->n:Lf8/j;

    invoke-static {}, Lf8/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ld7/g;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ld7/g;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ld7/g;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ld7/g;-><init>(I)V

    :goto_0
    sput-object v0, Lf8/j;->o:Ld7/g;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lf8/j;->l:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lf8/j;->m:[B

    return-void
.end method

.method public static b(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Beginning index larger than ending index: "

    const-string v1, ", "

    invoke-static {v0, p0, v1, p1}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "End index: "

    const-string v1, " >= "

    invoke-static {v0, p1, v1, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Beginning index: "

    const-string v0, " < 0"

    invoke-static {p0, p2, v0}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public static c([BII)Lf8/j;
    .locals 3

    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lf8/j;->b(III)I

    new-instance v0, Lf8/j;

    sget-object v1, Lf8/j;->o:Ld7/g;

    iget v1, v1, Ld7/g;->l:I

    packed-switch v1, :pswitch_data_0

    new-array v1, p2, [B

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :pswitch_0
    add-int/2addr p2, p1

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Lf8/j;-><init>([B)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(I)B
    .locals 0

    iget-object p0, p0, Lf8/j;->m:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public d(I[B)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lf8/j;->m:[B

    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public e()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p1, p0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lf8/j;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lf8/j;->size()I

    move-result v0

    move-object v1, p1

    check-cast v1, Lf8/j;

    invoke-virtual {v1}, Lf8/j;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lf8/j;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    instance-of v0, p1, Lf8/j;

    if-eqz v0, :cond_9

    check-cast p1, Lf8/j;

    iget v0, p0, Lf8/j;->l:I

    iget v1, p1, Lf8/j;->l:I

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lf8/j;->size()I

    move-result v0

    invoke-virtual {p1}, Lf8/j;->size()I

    move-result v1

    if-gt v0, v1, :cond_8

    invoke-virtual {p1}, Lf8/j;->size()I

    move-result v1

    if-gt v0, v1, :cond_7

    iget-object v1, p1, Lf8/j;->m:[B

    invoke-virtual {p0}, Lf8/j;->e()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lf8/j;->e()I

    move-result v0

    invoke-virtual {p1}, Lf8/j;->e()I

    move-result p1

    :goto_0
    if-ge v0, v2, :cond_6

    iget-object v3, p0, Lf8/j;->m:[B

    aget-byte v3, v3, v0

    aget-byte v4, v1, p1

    if-eq v3, v4, :cond_5

    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ran off end of other: 0, "

    const-string v2, ", "

    invoke-static {v0, v1, v2}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lf8/j;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf8/j;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lf8/j;->l:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lf8/j;->size()I

    move-result v0

    invoke-virtual {p0}, Lf8/j;->e()I

    move-result v1

    move v3, v0

    move v2, v1

    :goto_0
    add-int v4, v1, v0

    if-ge v2, v4, :cond_0

    mul-int/lit8 v3, v3, 0x1f

    iget-object v4, p0, Lf8/j;->m:[B

    aget-byte v4, v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput v3, p0, Lf8/j;->l:I

    return v3

    :cond_2
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lf8/h;

    invoke-direct {v0, p0}, Lf8/h;-><init>(Lf8/j;)V

    return-object v0
.end method

.method public j(I)B
    .locals 0

    iget-object p0, p0, Lf8/j;->m:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public final k()Z
    .locals 3

    invoke-virtual {p0}, Lf8/j;->e()I

    move-result v0

    invoke-virtual {p0}, Lf8/j;->size()I

    move-result v1

    add-int/2addr v1, v0

    sget-object v2, Lf8/s5;->a:Lf8/v4;

    iget-object p0, p0, Lf8/j;->m:[B

    invoke-virtual {v2, p0, v0, v1}, Lf8/v4;->n([BII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final l()Lf8/k;
    .locals 3

    invoke-virtual {p0}, Lf8/j;->e()I

    move-result v0

    invoke-virtual {p0}, Lf8/j;->size()I

    move-result v1

    const/4 v2, 0x1

    iget-object p0, p0, Lf8/j;->m:[B

    invoke-static {p0, v0, v1, v2}, Lf8/k;->c([BIIZ)Lf8/k;

    move-result-object p0

    return-object p0
.end method

.method public final m()Ljava/lang/String;
    .locals 4

    sget-object v0, Lf8/f4;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lf8/j;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lf8/j;->e()I

    move-result v2

    invoke-virtual {p0}, Lf8/j;->size()I

    move-result v3

    iget-object p0, p0, Lf8/j;->m:[B

    invoke-direct {v1, p0, v2, v3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lf8/j;->m:[B

    array-length p0, p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lf8/j;->size()I

    move-result v1

    invoke-virtual {p0}, Lf8/j;->size()I

    move-result v2

    const/16 v3, 0x32

    if-gt v2, v3, :cond_0

    invoke-static {p0}, Lf8/v4;->j(Lf8/j;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0}, Lf8/j;->size()I

    move-result v4

    const/16 v5, 0x2f

    invoke-static {v3, v5, v4}, Lf8/j;->b(III)I

    move-result v3

    if-nez v3, :cond_1

    sget-object p0, Lf8/j;->n:Lf8/j;

    goto :goto_0

    :cond_1
    new-instance v4, Lf8/i;

    iget-object v5, p0, Lf8/j;->m:[B

    invoke-virtual {p0}, Lf8/j;->e()I

    move-result p0

    invoke-direct {v4, v5, p0, v3}, Lf8/i;-><init>([BII)V

    move-object p0, v4

    :goto_0
    invoke-static {p0}, Lf8/v4;->j(Lf8/j;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<ByteString@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " size="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " contents=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\">"

    invoke-static {v2, p0, v0}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
