.class public final Lu2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/g;


# virtual methods
.method public final a(Lu2/h;)V
    .locals 2

    iget-object p0, p1, Lu2/h;->a:Lr2/c;

    invoke-virtual {p0}, Lr2/c;->b()I

    move-result p0

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0, v0}, Lu2/h;->d(IILjava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lu2/d;

    return p0
.end method

.method public final hashCode()I
    .locals 0

    const-class p0, Lu2/d;

    invoke-static {p0}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object p0

    invoke-virtual {p0}, Lj9/f;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "DeleteAllCommand()"

    return-object p0
.end method
