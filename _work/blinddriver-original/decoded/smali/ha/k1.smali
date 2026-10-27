.class public final Lha/k1;
.super Lha/r0;
.source "SourceFile"


# instance fields
.field public a:[S

.field public b:I


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lha/k1;->a:[S

    iget p0, p0, Lha/k1;->b:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p0

    const-string v0, "copyOf(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lt8/y;

    invoke-direct {v0, p0}, Lt8/y;-><init>([S)V

    return-object v0
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Lha/k1;->a:[S

    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-ge p1, v1, :cond_0

    move p1, v1

    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lha/k1;->a:[S

    :cond_1
    return-void
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lha/k1;->b:I

    return p0
.end method
