.class public final Lu/q0;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public D:Z

.field public z:F


# virtual methods
.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 5

    iget v0, p0, Lu/q0;->z:F

    invoke-interface {p1, v0}, Lb3/c;->h0(F)I

    move-result v0

    iget v1, p0, Lu/q0;->B:F

    invoke-interface {p1, v1}, Lb3/c;->h0(F)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lu/q0;->A:F

    invoke-interface {p1, v0}, Lb3/c;->h0(F)I

    move-result v0

    iget v2, p0, Lu/q0;->C:F

    invoke-interface {p1, v2}, Lb3/c;->h0(F)I

    move-result v2

    add-int/2addr v2, v0

    neg-int v0, v1

    neg-int v3, v2

    invoke-static {v0, v3, p3, p4}, Lb3/b;->i(IIJ)J

    move-result-wide v3

    invoke-interface {p2, v3, v4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p2

    iget v0, p2, Lc2/f1;->l:I

    add-int/2addr v0, v1

    invoke-static {v0, p3, p4}, Lb3/b;->g(IJ)I

    move-result v0

    iget v1, p2, Lc2/f1;->m:I

    add-int/2addr v1, v2

    invoke-static {v1, p3, p4}, Lb3/b;->f(IJ)I

    move-result p3

    new-instance p4, Lp/o0;

    const/16 v1, 0xc

    invoke-direct {p4, v1, p0, p2}, Lp/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, v0, p3, p0, p4}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method
