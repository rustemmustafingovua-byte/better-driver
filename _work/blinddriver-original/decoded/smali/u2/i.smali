.class public final Lu2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/g;


# virtual methods
.method public final a(Lu2/h;)V
    .locals 0

    const/4 p0, -0x1

    iput p0, p1, Lu2/h;->d:I

    iput p0, p1, Lu2/h;->e:I

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lu2/i;

    return p0
.end method

.method public final hashCode()I
    .locals 0

    const-class p0, Lu2/i;

    invoke-static {p0}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object p0

    invoke-virtual {p0}, Lj9/f;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "FinishComposingTextCommand()"

    return-object p0
.end method
