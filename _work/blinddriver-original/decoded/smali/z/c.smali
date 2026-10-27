.class public abstract Lz/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lf1/r;ZLs/i;Lo0/b3;ZLm2/h;Li9/a;)Lf1/r;
    .locals 8

    if-eqz p3, :cond_0

    new-instance v0, Lz/a;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lz/a;-><init>(ZLs/i;Lp/e1;ZLm2/h;Li9/a;)V

    goto :goto_0

    :cond_0
    move v2, p1

    move-object v3, p2

    move-object p2, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    if-nez p2, :cond_1

    new-instance v1, Lz/a;

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lz/a;-><init>(ZLs/i;Lp/e1;ZLm2/h;Li9/a;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lf1/o;->a:Lf1/o;

    if-eqz v3, :cond_2

    invoke-static {v0, v3, p2}, Lp/b1;->a(Lf1/r;Ls/i;Lp/e1;)Lf1/r;

    move-result-object p1

    new-instance v1, Lz/a;

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lz/a;-><init>(ZLs/i;Lp/e1;ZLm2/h;Li9/a;)V

    invoke-interface {p1, v1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance p1, Lz/b;

    move p3, v2

    move p4, v5

    move-object p5, v6

    move-object p6, v7

    invoke-direct/range {p1 .. p6}, Lz/b;-><init>(Lp/e1;ZZLm2/h;Li9/a;)V

    invoke-static {v0, p1}, Lf1/a;->a(Lf1/r;Li9/f;)Lf1/r;

    move-result-object v0

    :goto_0
    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lf1/r;ZLs/i;ZLm2/h;Li9/c;)Lf1/r;
    .locals 6

    new-instance v0, Lz/e;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lz/e;-><init>(ZLs/i;ZLm2/h;Li9/c;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lo2/a;Lo0/b3;ZLm2/h;Li9/a;)Lf1/r;
    .locals 7

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lz/i;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lz/i;-><init>(Lo2/a;Ls/i;Lp/e1;ZLm2/h;Li9/a;)V

    return-object v0

    :cond_0
    move-object v1, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object p0, v2

    move-object v2, p1

    if-nez v2, :cond_1

    new-instance v0, Lz/i;

    const/4 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lz/i;-><init>(Lo2/a;Ls/i;Lp/e1;ZLm2/h;Li9/a;)V

    return-object v0

    :cond_1
    new-instance p0, Lz/f;

    move-object v3, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lz/f;-><init>(Lp/e1;Lo2/a;ZLm2/h;Li9/a;)V

    sget-object p0, Lf1/o;->a:Lf1/o;

    invoke-static {p0, v1}, Lf1/a;->a(Lf1/r;Li9/f;)Lf1/r;

    move-result-object p0

    return-object p0
.end method
