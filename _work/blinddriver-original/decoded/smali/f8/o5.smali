.class public final Lf8/o5;
.super Lf8/p5;
.source "SourceFile"


# virtual methods
.method public final c(JLjava/lang/Object;)B
    .locals 0

    iget-object p0, p0, Lf8/p5;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method
