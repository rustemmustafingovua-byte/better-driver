.class public final Lcc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/f;


# instance fields
.field public a:[Lpb/a;


# virtual methods
.method public final b(I)Lpb/a;
    .locals 0

    iget-object p0, p0, Lcc/c;->a:[Lpb/a;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final c()[Lpb/a;
    .locals 0

    iget-object p0, p0, Lcc/c;->a:[Lpb/a;

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcc/c;->a:[Lpb/a;

    array-length p0, p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lqb/a;

    iget-object p0, p0, Lcc/c;->a:[Lpb/a;

    invoke-direct {v0, p0}, Lqb/a;-><init>([Lpb/a;)V

    invoke-static {v0}, Ld7/g;->v(Lqb/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
