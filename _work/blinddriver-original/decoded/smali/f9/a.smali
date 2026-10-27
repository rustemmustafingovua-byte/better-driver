.class public final Lf9/a;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# virtual methods
.method public final b()[B
    .locals 1

    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const-string v0, "buf"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
