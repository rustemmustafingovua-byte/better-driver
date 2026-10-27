.class public final Lja/g;
.super Lc6/o;
.source "SourceFile"


# instance fields
.field public final a:Lja/s;


# direct methods
.method public constructor <init>(Lja/s;Lia/c;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lja/g;->a:Lja/s;

    return-void
.end method


# virtual methods
.method public final g()I
    .locals 4

    iget-object p0, p0, Lja/g;->a:Lja/s;

    invoke-virtual {p0}, Lja/s;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lb6/g;->K(Ljava/lang/String;)Lt8/s;

    move-result-object v2

    if-eqz v2, :cond_0

    iget p0, v2, Lt8/s;->l:I

    return p0

    :cond_0
    invoke-static {v0}, Lr9/r;->M(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v2, "Failed to parse type \'UInt\' for input \'"

    const/16 v3, 0x27

    invoke-static {v3, v2, v0}, La6/q;->g(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p0, v0, v2, v3}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v1
.end method

.method public final l()J
    .locals 4

    iget-object p0, p0, Lja/g;->a:Lja/s;

    invoke-virtual {p0}, Lja/s;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lb6/g;->L(Ljava/lang/String;)Lt8/u;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v0, v2, Lt8/u;->l:J

    return-wide v0

    :cond_0
    invoke-static {v0}, Lr9/r;->M(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v2, "Failed to parse type \'ULong\' for input \'"

    const/16 v3, 0x27

    invoke-static {v3, v2, v0}, La6/q;->g(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p0, v0, v2, v3}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v1
.end method

.method public final q(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unsupported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x()B
    .locals 4

    iget-object p0, p0, Lja/g;->a:Lja/s;

    invoke-virtual {p0}, Lja/s;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lb6/g;->K(Ljava/lang/String;)Lt8/s;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, v2, Lt8/s;->l:I

    const/16 v3, 0xff

    invoke-static {v2, v3}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    int-to-byte v2, v2

    new-instance v3, Lt8/q;

    invoke-direct {v3, v2}, Lt8/q;-><init>(B)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_2

    iget-byte p0, v3, Lt8/q;->l:B

    return p0

    :cond_2
    invoke-static {v0}, Lr9/r;->M(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v2, "Failed to parse type \'UByte\' for input \'"

    const/16 v3, 0x27

    invoke-static {v3, v2, v0}, La6/q;->g(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p0, v0, v2, v3}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v1
.end method

.method public final y()S
    .locals 4

    iget-object p0, p0, Lja/g;->a:Lja/s;

    invoke-virtual {p0}, Lja/s;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lb6/g;->K(Ljava/lang/String;)Lt8/s;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, v2, Lt8/s;->l:I

    const v3, 0xffff

    invoke-static {v2, v3}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    int-to-short v2, v2

    new-instance v3, Lt8/x;

    invoke-direct {v3, v2}, Lt8/x;-><init>(S)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_2

    iget-short p0, v3, Lt8/x;->l:S

    return p0

    :cond_2
    invoke-static {v0}, Lr9/r;->M(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v2, "Failed to parse type \'UShort\' for input \'"

    const/16 v3, 0x27

    invoke-static {v3, v2, v0}, La6/q;->g(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p0, v0, v2, v3}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v1
.end method
