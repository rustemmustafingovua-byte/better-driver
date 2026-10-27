.class public final Lja/p;
.super Lc6/o;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/encoding/Decoder;
.implements Lga/a;


# instance fields
.field public final a:Lia/c;

.field public final b:Lja/u;

.field public final c:Lja/s;

.field public d:I

.field public final e:Lia/j;

.field public final f:Lja/i;


# direct methods
.method public constructor <init>(Lia/c;Lja/u;Lja/s;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lja/p;->a:Lia/c;

    iput-object p2, p0, Lja/p;->b:Lja/u;

    iput-object p3, p0, Lja/p;->c:Lja/s;

    const/4 p2, -0x1

    iput p2, p0, Lja/p;->d:I

    iget-object p1, p1, Lia/c;->a:Lia/j;

    iput-object p1, p0, Lja/p;->e:Lia/j;

    iget-boolean p1, p1, Lia/j;->d:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lja/i;

    invoke-direct {p1, p4}, Lja/i;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    :goto_0
    iput-object p1, p0, Lja/p;->f:Lja/i;

    return-void
.end method


# virtual methods
.method public final A()D
    .locals 8

    iget-object p0, p0, Lja/p;->c:Lja/s;

    invoke-virtual {p0}, Lja/s;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_0

    return-wide v2

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p0, v0}, Lja/k;->k(Lja/s;Ljava/lang/Number;)V

    throw v1

    :catch_0
    const-string v2, "Failed to parse type \'double\' for input \'"

    const/16 v3, 0x27

    invoke-static {v3, v2, v0}, La6/q;->g(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p0, v0, v2, v3}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v1
.end method

.method public final a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lga/a;
    .locals 7

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lja/p;->a:Lia/c;

    invoke-static {v0, p1}, Lja/k;->j(Lia/c;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/u;

    move-result-object v1

    iget-object v2, p0, Lja/p;->c:Lja/s;

    iget-object v3, v2, Lja/s;->b:Ld1/c0;

    iget v4, v3, Ld1/c0;->b:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Ld1/c0;->b:I

    iget-object v6, v3, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    array-length v6, v6

    if-ne v4, v6, :cond_0

    invoke-virtual {v3}, Ld1/c0;->m()V

    :cond_0
    iget-object v3, v3, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    iget-char v3, v1, Lja/u;->l:C

    invoke-virtual {v2, v3}, Lja/s;->g(C)V

    invoke-virtual {v2}, Lja/s;->p()B

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v3, v5, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lja/p;->b:Lja/u;

    if-ne v3, v1, :cond_1

    iget-object v3, v0, Lia/c;->a:Lia/j;

    iget-boolean v3, v3, Lia/j;->d:Z

    if-eqz v3, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lja/p;

    invoke-direct {p0, v0, v1, v2, p1}, Lja/p;-><init>(Lia/c;Lja/u;Lja/s;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-object p0

    :cond_2
    new-instance p0, Lja/p;

    invoke-direct {p0, v0, v1, v2, p1}, Lja/p;-><init>(Lia/c;Lja/u;Lja/s;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-object p0

    :cond_3
    const/4 p0, 0x0

    const/4 p1, 0x6

    const-string v0, "Unexpected leading comma"

    invoke-static {v2, v0, p0, p1}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b()Z
    .locals 11

    iget-object p0, p0, Lja/p;->c:Lja/s;

    invoke-virtual {p0}, Lja/s;->r()I

    move-result v0

    iget-object v1, p0, Lja/s;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "EOF"

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    if-eq v0, v2, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x22

    const/4 v8, 0x1

    if-ne v2, v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    invoke-virtual {p0, v0}, Lja/s;->q(I)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v0, v9, :cond_6

    const/4 v9, -0x1

    if-eq v0, v9, :cond_6

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    or-int/lit8 v0, v0, 0x20

    const/16 v10, 0x66

    if-eq v0, v10, :cond_2

    const/16 v10, 0x74

    if-ne v0, v10, :cond_1

    const-string v0, "rue"

    invoke-virtual {p0, v9, v0}, Lja/s;->c(ILjava/lang/String;)V

    move v0, v8

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected valid boolean literal prefix, but had \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lja/s;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6, v5}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v4

    :cond_2
    const-string v0, "alse"

    invoke-virtual {p0, v9, v0}, Lja/s;->c(ILjava/lang/String;)V

    move v0, v6

    :goto_1
    if-eqz v2, :cond_5

    iget v2, p0, Lja/s;->a:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v2, v9, :cond_4

    iget v2, p0, Lja/s;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_3

    iget v1, p0, Lja/s;->a:I

    add-int/2addr v1, v8

    iput v1, p0, Lja/s;->a:I

    return v0

    :cond_3
    const-string v0, "Expected closing quotation mark"

    invoke-static {p0, v0, v6, v5}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v4

    :cond_4
    invoke-static {p0, v3, v6, v5}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v4

    :cond_5
    return v0

    :cond_6
    invoke-static {p0, v3, v6, v5}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v4

    :cond_7
    invoke-static {p0, v3, v6, v5}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v4
.end method

.method public final b0()Lia/l;
    .locals 2

    new-instance v0, Lja/o;

    iget-object v1, p0, Lja/p;->a:Lia/c;

    iget-object v1, v1, Lia/c;->a:Lia/j;

    iget-object p0, p0, Lja/p;->c:Lja/s;

    invoke-direct {v0, v1, p0}, Lja/o;-><init>(Lia/j;Lja/s;)V

    invoke-virtual {v0}, Lja/o;->c()Lia/l;

    move-result-object p0

    return-object p0
.end method

.method public final c()C
    .locals 4

    iget-object p0, p0, Lja/p;->c:Lja/s;

    invoke-virtual {p0}, Lja/s;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const-string v1, "Expected single char, but got \'"

    const/16 v2, 0x27

    invoke-static {v2, v1, v0}, La6/q;->g(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p0, v0, v3, v1}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lja/p;->a:Lia/c;

    invoke-static {v0, p1}, Lja/k;->f(Lia/c;Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lja/p;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    if-ne v0, v1, :cond_0

    :cond_1
    iget-object p1, p0, Lja/p;->c:Lja/s;

    invoke-virtual {p1}, Lja/s;->s()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lja/p;->b:Lja/u;

    iget-char p0, p0, Lja/u;->m:C

    invoke-virtual {p1, p0}, Lja/s;->g(C)V

    iget-object p0, p1, Lja/s;->b:Ld1/c0;

    iget p1, p0, Ld1/c0;->b:I

    iget-object v0, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v0, [I

    aget v2, v0, p1

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    aput v1, v0, p1

    add-int/2addr p1, v1

    iput p1, p0, Ld1/c0;->b:I

    :cond_2
    iget p1, p0, Ld1/c0;->b:I

    if-eq p1, v1, :cond_3

    add-int/2addr p1, v1

    iput p1, p0, Ld1/c0;->b:I

    :cond_3
    return-void

    :cond_4
    const-string p0, ""

    invoke-static {p1, p0}, Lja/k;->g(Lja/s;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final g()I
    .locals 5

    iget-object p0, p0, Lja/p;->c:Lja/s;

    invoke-virtual {p0}, Lja/s;->h()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse int for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lja/p;->e:Lia/j;

    iget-boolean v0, v0, Lia/j;->c:Z

    iget-object p0, p0, Lja/p;->c:Lja/s;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lja/s;->k()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lja/s;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final l()J
    .locals 2

    iget-object p0, p0, Lja/p;->c:Lja/s;

    invoke-virtual {p0}, Lja/s;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;
    .locals 3

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    instance-of v0, p1, Lda/b;

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Lkotlinx/serialization/KSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    check-cast p1, Lda/b;
    :try_end_0
    .catch Lda/a; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    throw p0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string v1, "at path"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    throw p1

    :cond_1
    new-instance v0, Lda/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lja/p;->c:Lja/s;

    iget-object p0, p0, Lja/s;->b:Ld1/c0;

    invoke-virtual {p0}, Ld1/c0;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object v1, p1, Lda/a;->l:Ljava/util/List;

    invoke-direct {v0, v1, p0, p1}, Lda/a;-><init>(Ljava/util/List;Ljava/lang/String;Lda/a;)V

    throw v0
.end method

.method public final p()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lja/p;->f:Lja/i;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lja/i;->b:Z

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    iget-object p0, p0, Lja/p;->c:Lja/s;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lja/s;->t(Z)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public final q(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lja/p;->c:Lja/s;

    iget-object v3, v2, Lja/s;->b:Ld1/c0;

    iget-object v4, v2, Lja/s;->e:Ljava/lang/String;

    const-string v5, "descriptor"

    invoke-static {v1, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lja/p;->b:Lja/u;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const-string v7, "object"

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/16 v10, 0x3a

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, -0x1

    if-eqz v6, :cond_e

    const/4 v1, 0x2

    if-eq v6, v1, :cond_4

    invoke-virtual {v2}, Lja/s;->s()Z

    move-result v1

    invoke-virtual {v2}, Lja/s;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v0, Lja/p;->d:I

    if-eq v4, v13, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Expected end of the array or comma"

    invoke-static {v2, v0, v11, v8}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v9

    :cond_1
    :goto_0
    add-int/lit8 v13, v4, 0x1

    iput v13, v0, Lja/p;->d:I

    goto/16 :goto_16

    :cond_2
    if-nez v1, :cond_3

    goto/16 :goto_16

    :cond_3
    const-string v0, "array"

    invoke-static {v2, v0}, Lja/k;->g(Lja/s;Ljava/lang/String;)V

    throw v9

    :cond_4
    iget v1, v0, Lja/p;->d:I

    rem-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_5

    move v4, v12

    goto :goto_1

    :cond_5
    move v4, v11

    :goto_1
    if-eqz v4, :cond_6

    if-eq v1, v13, :cond_7

    invoke-virtual {v2}, Lja/s;->s()Z

    move-result v11

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v10}, Lja/s;->g(C)V

    :cond_7
    :goto_2
    invoke-virtual {v2}, Lja/s;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v4, :cond_b

    iget v1, v0, Lja/p;->d:I

    const/4 v4, 0x4

    if-ne v1, v13, :cond_9

    iget v1, v2, Lja/s;->a:I

    if-nez v11, :cond_8

    goto :goto_3

    :cond_8
    const-string v0, "Unexpected leading comma"

    invoke-static {v2, v0, v1, v4}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v9

    :cond_9
    iget v1, v2, Lja/s;->a:I

    if-eqz v11, :cond_a

    goto :goto_3

    :cond_a
    const-string v0, "Expected comma after the key-value pair"

    invoke-static {v2, v0, v1, v4}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v9

    :cond_b
    :goto_3
    iget v1, v0, Lja/p;->d:I

    add-int/lit8 v13, v1, 0x1

    iput v13, v0, Lja/p;->d:I

    goto/16 :goto_16

    :cond_c
    if-nez v11, :cond_d

    goto/16 :goto_16

    :cond_d
    invoke-static {v2, v7}, Lja/k;->g(Lja/s;Ljava/lang/String;)V

    throw v9

    :cond_e
    invoke-virtual {v2}, Lja/s;->s()Z

    move-result v6

    :goto_4
    invoke-virtual {v2}, Lja/s;->b()Z

    move-result v14

    const-wide/16 v16, 0x1

    move-object/from16 v18, v9

    iget-object v9, v0, Lja/p;->f:Lja/i;

    if-eqz v14, :cond_2a

    iget-object v6, v0, Lja/p;->e:Lia/j;

    iget-boolean v14, v6, Lia/j;->c:Z

    if-eqz v14, :cond_f

    invoke-virtual {v2}, Lja/s;->k()Ljava/lang/String;

    move-result-object v19

    :goto_5
    move/from16 v20, v8

    move-object/from16 v8, v19

    goto :goto_6

    :cond_f
    invoke-virtual {v2}, Lja/s;->d()Ljava/lang/String;

    move-result-object v19

    goto :goto_5

    :goto_6
    invoke-virtual {v2, v10}, Lja/s;->g(C)V

    iget-object v10, v0, Lja/p;->a:Lia/c;

    move/from16 v21, v13

    invoke-static {v1, v10, v8}, Lja/k;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;Lia/c;Ljava/lang/String;)I

    move-result v13

    const/4 v15, -0x3

    if-eq v13, v15, :cond_1a

    iget-boolean v6, v6, Lia/j;->f:Z

    if-eqz v6, :cond_18

    invoke-interface {v1, v13}, Lkotlinx/serialization/descriptors/SerialDescriptor;->k(I)Z

    move-result v6

    invoke-interface {v1, v13}, Lkotlinx/serialization/descriptors/SerialDescriptor;->j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v15

    if-eqz v6, :cond_10

    invoke-interface {v15}, Lkotlinx/serialization/descriptors/SerialDescriptor;->c()Z

    move-result v22

    if-nez v22, :cond_10

    invoke-virtual {v2, v12}, Lja/s;->t(Z)Z

    move-result v22

    if-eqz v22, :cond_10

    goto :goto_c

    :cond_10
    invoke-interface {v15}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()La/a;

    move-result-object v12

    sget-object v11, Lfa/f;->g:Lfa/f;

    invoke-static {v12, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface {v15}, Lkotlinx/serialization/descriptors/SerialDescriptor;->c()Z

    move-result v11

    if-eqz v11, :cond_11

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lja/s;->t(Z)Z

    move-result v12

    if-eqz v12, :cond_11

    goto :goto_d

    :cond_11
    invoke-virtual {v2}, Lja/s;->p()B

    move-result v11

    if-eqz v14, :cond_13

    const/4 v12, 0x1

    if-eq v11, v12, :cond_12

    if-eqz v11, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {v2}, Lja/s;->j()Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    :cond_13
    const/4 v12, 0x1

    if-eq v11, v12, :cond_14

    :goto_7
    move-object/from16 v11, v18

    goto :goto_9

    :cond_14
    invoke-virtual {v2}, Lja/s;->i()Ljava/lang/String;

    move-result-object v11

    :goto_8
    iput-object v11, v2, Lja/s;->c:Ljava/lang/String;

    :goto_9
    if-nez v11, :cond_15

    goto :goto_d

    :cond_15
    invoke-static {v15, v10, v11}, Lja/k;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;Lia/c;Ljava/lang/String;)I

    move-result v11

    iget-object v12, v10, Lia/c;->a:Lia/j;

    iget-boolean v12, v12, Lia/j;->d:Z

    if-nez v12, :cond_16

    invoke-interface {v15}, Lkotlinx/serialization/descriptors/SerialDescriptor;->c()Z

    move-result v12

    if-eqz v12, :cond_16

    const/4 v12, 0x1

    :goto_a
    const/4 v15, -0x3

    goto :goto_b

    :cond_16
    const/4 v12, 0x0

    goto :goto_a

    :goto_b
    if-ne v11, v15, :cond_18

    if-nez v6, :cond_17

    if-eqz v12, :cond_18

    :cond_17
    invoke-virtual {v2}, Lja/s;->i()Ljava/lang/String;

    :goto_c
    invoke-virtual {v2}, Lja/s;->s()Z

    move-result v6

    const/4 v9, 0x0

    goto :goto_e

    :cond_18
    :goto_d
    if-eqz v9, :cond_30

    iget-object v0, v9, Lja/i;->a:Lha/s;

    const/16 v1, 0x40

    if-ge v13, v1, :cond_19

    iget-wide v1, v0, Lha/s;->c:J

    shl-long v6, v16, v13

    or-long/2addr v1, v6

    iput-wide v1, v0, Lha/s;->c:J

    goto/16 :goto_16

    :cond_19
    ushr-int/lit8 v1, v13, 0x6

    const/16 v22, 0x1

    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v2, v13, 0x3f

    iget-object v0, v0, Lha/s;->d:[J

    aget-wide v6, v0, v1

    shl-long v8, v16, v2

    or-long/2addr v6, v8

    aput-wide v6, v0, v1

    goto/16 :goto_16

    :cond_1a
    const/4 v6, 0x0

    const/4 v9, 0x1

    :goto_e
    if-eqz v9, :cond_29

    invoke-static {v10, v1}, Lja/k;->f(Lia/c;Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v6

    if-nez v6, :cond_1e

    iget v0, v3, Ld1/c0;->b:I

    iget-object v1, v3, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v1, [I

    aget v5, v1, v0

    const/4 v6, -0x2

    if-ne v5, v6, :cond_1b

    aput v21, v1, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, v3, Ld1/c0;->b:I

    :cond_1b
    iget v0, v3, Ld1/c0;->b:I

    move/from16 v10, v21

    if-eq v0, v10, :cond_1c

    add-int/2addr v0, v10

    iput v0, v3, Ld1/c0;->b:I

    :cond_1c
    iget v0, v2, Lja/s;->a:I

    const/4 v11, 0x0

    invoke-virtual {v4, v11, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    and-int/lit8 v1, v20, 0x2

    if-eqz v1, :cond_1d

    invoke-static {v0}, Lr9/k;->a0(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_f

    :cond_1d
    const/4 v1, 0x0

    :goto_f
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "string"

    invoke-static {v8, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lja/h;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Encountered an unknown key \'"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' at offset "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " at path: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ld1/c0;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nUse \'ignoreUnknownKeys = true\' in \'Json {}\' builder or \'@JsonIgnoreUnknownKeys\' annotation to ignore unknown keys.\nJSON input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v0}, Lja/k;->h(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lja/h;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    move/from16 v10, v21

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lja/s;->p()B

    move-result v6

    const/16 v9, 0x8

    if-eq v6, v9, :cond_1f

    move/from16 v11, v20

    if-eq v6, v11, :cond_1f

    invoke-virtual {v2}, Lja/s;->j()Ljava/lang/String;

    const/4 v11, 0x6

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_14

    :cond_1f
    :goto_10
    invoke-virtual {v2}, Lja/s;->p()B

    move-result v6

    const/4 v12, 0x1

    if-ne v6, v12, :cond_21

    if-eqz v14, :cond_20

    invoke-virtual {v2}, Lja/s;->j()Ljava/lang/String;

    goto :goto_10

    :cond_20
    invoke-virtual {v2}, Lja/s;->d()Ljava/lang/String;

    goto :goto_10

    :cond_21
    const/4 v11, 0x6

    if-eq v6, v9, :cond_22

    if-ne v6, v11, :cond_23

    :cond_22
    const/4 v13, 0x0

    goto :goto_12

    :cond_23
    const/16 v11, 0x9

    if-ne v6, v11, :cond_25

    invoke-static {v8}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->byteValue()B

    move-result v6

    if-ne v6, v9, :cond_24

    invoke-static {v8}, Lu8/m;->s0(Ljava/util/ArrayList;)Ljava/lang/Object;

    :goto_11
    const/4 v11, 0x6

    const/4 v13, 0x0

    goto :goto_13

    :cond_24
    iget v0, v2, Lja/s;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found ] instead of } at path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lja/k;->b(ILjava/lang/String;Ljava/lang/CharSequence;)Lja/h;

    move-result-object v0

    throw v0

    :cond_25
    const/4 v11, 0x7

    if-ne v6, v11, :cond_27

    invoke-static {v8}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->byteValue()B

    move-result v6

    const/4 v11, 0x6

    if-ne v6, v11, :cond_26

    invoke-static {v8}, Lu8/m;->s0(Ljava/util/ArrayList;)Ljava/lang/Object;

    goto :goto_11

    :cond_26
    iget v0, v2, Lja/s;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found } instead of ] at path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lja/k;->b(ILjava/lang/String;Ljava/lang/CharSequence;)Lja/h;

    move-result-object v0

    throw v0

    :cond_27
    const/16 v11, 0xa

    if-eq v6, v11, :cond_28

    goto :goto_11

    :cond_28
    const-string v0, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    const/4 v11, 0x6

    const/4 v13, 0x0

    invoke-static {v2, v0, v13, v11}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v18

    :goto_12
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_13
    invoke-virtual {v2}, Lja/s;->e()B

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1f

    :goto_14
    invoke-virtual {v2}, Lja/s;->s()Z

    move-result v6

    move v8, v11

    move v11, v13

    move-object/from16 v9, v18

    move v13, v10

    const/16 v10, 0x3a

    goto/16 :goto_4

    :cond_29
    move-object/from16 v9, v18

    move/from16 v8, v20

    move/from16 v13, v21

    const/16 v10, 0x3a

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_2a
    move v10, v13

    move v13, v11

    if-nez v6, :cond_32

    if-eqz v9, :cond_2f

    iget-object v0, v9, Lja/i;->a:Lha/s;

    iget-object v1, v0, Lha/s;->b:Le3/v;

    iget-object v2, v0, Lha/s;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()I

    move-result v4

    :cond_2b
    iget-wide v6, v0, Lha/s;->c:J

    const-wide/16 v8, -0x1

    cmp-long v11, v6, v8

    if-eqz v11, :cond_2c

    not-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v6

    iget-wide v7, v0, Lha/s;->c:J

    shl-long v11, v16, v6

    or-long/2addr v7, v11

    iput-wide v7, v0, Lha/s;->c:J

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Le3/v;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2b

    move v13, v6

    goto :goto_16

    :cond_2c
    const/16 v6, 0x40

    if-le v4, v6, :cond_2f

    iget-object v0, v0, Lha/s;->d:[J

    array-length v4, v0

    move v11, v13

    :goto_15
    if-ge v11, v4, :cond_2f

    add-int/lit8 v6, v11, 0x1

    mul-int/lit8 v7, v6, 0x40

    aget-wide v12, v0, v11

    :cond_2d
    cmp-long v14, v12, v8

    if-eqz v14, :cond_2e

    not-long v14, v12

    invoke-static {v14, v15}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v14

    shl-long v18, v16, v14

    or-long v12, v12, v18

    add-int/2addr v14, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Le3/v;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_2d

    aput-wide v12, v0, v11

    move v13, v14

    goto :goto_16

    :cond_2e
    aput-wide v12, v0, v11

    move v11, v6

    goto :goto_15

    :cond_2f
    move v13, v10

    :cond_30
    :goto_16
    sget-object v0, Lja/u;->p:Lja/u;

    if-eq v5, v0, :cond_31

    iget-object v0, v3, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v0, [I

    iget v1, v3, Ld1/c0;->b:I

    aput v13, v0, v1

    :cond_31
    return v13

    :cond_32
    invoke-static {v2, v7}, Lja/k;->g(Lja/s;Ljava/lang/String;)V

    throw v18
.end method

.method public final u(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lja/r;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lja/g;

    iget-object v0, p0, Lja/p;->c:Lja/s;

    iget-object p0, p0, Lja/p;->a:Lia/c;

    invoke-direct {p1, v0, p0}, Lja/g;-><init>(Lja/s;Lia/c;)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lja/p;->c:Lja/s;

    iget-object v0, v0, Lja/s;->b:Ld1/c0;

    const-string v1, "descriptor"

    invoke-static {p1, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deserializer"

    invoke-static {p3, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lja/p;->b:Lja/u;

    sget-object v2, Lja/u;->p:Lja/u;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x2

    if-eqz v1, :cond_1

    iget-object v4, v0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v4, [I

    iget v5, v0, Ld1/c0;->b:I

    aget v4, v4, v5

    if-ne v4, v2, :cond_1

    iget-object v4, v0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sget-object v6, Lja/l;->a:Lja/l;

    aput-object v6, v4, v5

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lc6/o;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz v1, :cond_3

    iget-object p1, v0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast p1, [I

    iget p2, v0, Ld1/c0;->b:I

    aget p1, p1, p2

    if-eq p1, v2, :cond_2

    add-int/2addr p2, v3

    iput p2, v0, Ld1/c0;->b:I

    iget-object p1, v0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    array-length p1, p1

    if-ne p2, p1, :cond_2

    invoke-virtual {v0}, Ld1/c0;->m()V

    :cond_2
    iget-object p1, v0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iget p2, v0, Ld1/c0;->b:I

    aput-object p0, p1, p2

    iget-object p1, v0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast p1, [I

    aput v2, p1, p2

    :cond_3
    return-object p0
.end method

.method public final x()B
    .locals 5

    iget-object p0, p0, Lja/p;->c:Lja/s;

    invoke-virtual {p0}, Lja/s;->h()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-byte v2, v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse byte for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final y()S
    .locals 5

    iget-object p0, p0, Lja/p;->c:Lja/s;

    invoke-virtual {p0}, Lja/s;->h()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-short v2, v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse short for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final z()F
    .locals 4

    iget-object p0, p0, Lja/p;->c:Lja/s;

    invoke-virtual {p0}, Lja/s;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Lja/k;->k(Lja/s;Ljava/lang/Number;)V

    throw v1

    :catch_0
    const-string v2, "Failed to parse type \'float\' for input \'"

    const/16 v3, 0x27

    invoke-static {v3, v2, v0}, La6/q;->g(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p0, v0, v2, v3}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v1
.end method
