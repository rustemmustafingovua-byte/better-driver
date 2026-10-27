.class public final Lbb/v;
.super Lbb/w;
.source "SourceFile"


# virtual methods
.method public final d(J)Lbb/w;
    .locals 0

    return-object p0
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g(J)Lbb/w;
    .locals 0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string p2, "unit"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
