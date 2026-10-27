.class public abstract Lj1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lf1/r;F)Lf1/r;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const v1, 0x7effb

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lm1/v;->q(Lf1/r;FFLm1/h0;I)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lf1/r;Lm1/h0;)Lf1/r;
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7e7ff

    invoke-static {p0, v0, v0, p1, v1}, Lm1/v;->q(Lf1/r;FFLm1/h0;I)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lf1/r;)Lf1/r;
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7efff

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Lm1/v;->q(Lf1/r;FFLm1/h0;I)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lf1/r;Li9/c;)Lf1/r;
    .locals 1

    new-instance v0, Lj1/e;

    invoke-direct {v0, p1}, Lj1/e;-><init>(Li9/c;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lf1/r;Li9/c;)Lf1/r;
    .locals 1

    new-instance v0, Lj1/h;

    invoke-direct {v0, p1}, Lj1/h;-><init>(Li9/c;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lf1/r;Li9/c;)Lf1/r;
    .locals 1

    new-instance v0, Lj1/i;

    invoke-direct {v0, p1}, Lj1/i;-><init>(Li9/c;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lf1/r;Lq1/b;Lf1/e;Lc2/x0;Lm1/j;I)Lf1/r;
    .locals 6

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    sget-object p2, Lf1/c;->p:Lf1/j;

    :cond_0
    move-object v2, p2

    new-instance v0, Lj1/l;

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lj1/l;-><init>(Lq1/b;Lf1/e;Lc2/x0;FLm1/j;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method
