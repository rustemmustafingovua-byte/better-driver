.class public final Le2/b0;
.super Le2/d0;
.source "SourceFile"


# virtual methods
.method public final j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Undefined measure and it is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
