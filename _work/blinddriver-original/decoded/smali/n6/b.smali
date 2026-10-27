.class public final Ln6/b;
.super Ls5/u;
.source "SourceFile"


# virtual methods
.method public final b(Lb6/l;)I
    .locals 0

    sget-object p0, Ln6/a;->b:Ln6/a;

    iget-object p1, p1, Lb6/l;->o:Ljava/lang/Class;

    iget-object p0, p0, Ln6/a;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public final c()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method
