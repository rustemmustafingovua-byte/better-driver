.class public final Lu/o0;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;


# instance fields
.field public A:Z

.field public z:Li9/c;


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 2

    invoke-interface {p2, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p2

    iget p3, p2, Lc2/f1;->l:I

    iget p4, p2, Lc2/f1;->m:I

    new-instance v0, Lp/o0;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0, p2}, Lp/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p3, p4, p0, v0}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method
