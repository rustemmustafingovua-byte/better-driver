.class public final Lg6/g;
.super Lg6/m1;
.source "SourceFile"


# virtual methods
.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget-object p0, Ls5/b;->a:Ls5/a;

    .line 10
    invoke-virtual {p1, p0}, Ls5/k;->J(Ls5/a;)[B

    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p3, Ljava/nio/ByteBuffer;

    .line 2
    new-instance p0, Lu6/e;

    invoke-direct {p0, p3}, Lu6/e;-><init>(Ljava/nio/ByteBuffer;)V

    .line 3
    iget-object p2, p2, Lb6/i;->q:Lb6/h;

    .line 4
    iget-object p2, p2, Ld6/m;->m:Ld6/a;

    .line 5
    iget-object p2, p2, Ld6/a;->s:Ls5/a;

    .line 6
    invoke-virtual {p1, p2, p0}, Ls5/k;->A0(Ls5/a;Lu6/e;)I

    .line 7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-object p3
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->v:Lt6/f;

    return-object p0
.end method
