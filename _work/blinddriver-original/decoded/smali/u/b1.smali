.class public abstract Lu/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu/v;

.field public static final b:Lu/v;

.field public static final c:Lu/v;

.field public static final d:Lu/l1;

.field public static final e:Lu/l1;

.field public static final f:Lu/l1;

.field public static final g:Lu/l1;

.field public static final h:Lu/l1;

.field public static final i:Lu/l1;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lu/v;

    sget-object v1, Lu/u;->m:Lu/u;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lu/v;-><init>(Lu/u;F)V

    sput-object v0, Lu/b1;->a:Lu/v;

    new-instance v0, Lu/v;

    sget-object v3, Lu/u;->l:Lu/u;

    invoke-direct {v0, v3, v2}, Lu/v;-><init>(Lu/u;F)V

    sput-object v0, Lu/b1;->b:Lu/v;

    new-instance v0, Lu/v;

    sget-object v4, Lu/u;->n:Lu/u;

    invoke-direct {v0, v4, v2}, Lu/v;-><init>(Lu/u;F)V

    sput-object v0, Lu/b1;->c:Lu/v;

    sget-object v0, Lf1/c;->y:Lf1/h;

    new-instance v2, Lu/l1;

    new-instance v5, Lod/y6;

    const/16 v6, 0xd

    invoke-direct {v5, v6, v0}, Lod/y6;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v1, v5, v0}, Lu/l1;-><init>(Lu/u;Li9/e;Ljava/lang/Object;)V

    sput-object v2, Lu/b1;->d:Lu/l1;

    sget-object v0, Lf1/c;->x:Lf1/h;

    new-instance v2, Lu/l1;

    new-instance v5, Lod/y6;

    invoke-direct {v5, v6, v0}, Lod/y6;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v1, v5, v0}, Lu/l1;-><init>(Lu/u;Li9/e;Ljava/lang/Object;)V

    sput-object v2, Lu/b1;->e:Lu/l1;

    sget-object v0, Lf1/c;->v:Lf1/i;

    new-instance v1, Lu/l1;

    new-instance v2, Lod/y6;

    const/16 v5, 0xe

    invoke-direct {v2, v5, v0}, Lod/y6;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v3, v2, v0}, Lu/l1;-><init>(Lu/u;Li9/e;Ljava/lang/Object;)V

    sput-object v1, Lu/b1;->f:Lu/l1;

    sget-object v0, Lf1/c;->u:Lf1/i;

    new-instance v1, Lu/l1;

    new-instance v2, Lod/y6;

    invoke-direct {v2, v5, v0}, Lod/y6;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v3, v2, v0}, Lu/l1;-><init>(Lu/u;Li9/e;Ljava/lang/Object;)V

    sput-object v1, Lu/b1;->g:Lu/l1;

    sget-object v0, Lf1/c;->p:Lf1/j;

    new-instance v1, Lu/l1;

    new-instance v2, Lod/y6;

    const/16 v3, 0xf

    invoke-direct {v2, v3, v0}, Lod/y6;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v4, v2, v0}, Lu/l1;-><init>(Lu/u;Li9/e;Ljava/lang/Object;)V

    sput-object v1, Lu/b1;->h:Lu/l1;

    sget-object v0, Lf1/c;->l:Lf1/j;

    new-instance v1, Lu/l1;

    new-instance v2, Lod/y6;

    invoke-direct {v2, v3, v0}, Lod/y6;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v4, v2, v0}, Lu/l1;-><init>(Lu/u;Li9/e;Ljava/lang/Object;)V

    sput-object v1, Lu/b1;->i:Lu/l1;

    return-void
.end method

.method public static final a(Lf1/r;FF)Lf1/r;
    .locals 1

    new-instance v0, Lu/g1;

    invoke-direct {v0, p1, p2}, Lu/g1;-><init>(FF)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lf1/r;FFI)Lf1/r;
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v1

    :cond_1
    invoke-static {p0, p1, p2}, Lu/b1;->a(Lf1/r;FF)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lf1/r;)Lf1/r;
    .locals 1

    sget-object v0, Lu/b1;->c:Lu/v;

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lf1/r;F)Lf1/r;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    sget-object p1, Lu/b1;->a:Lu/v;

    goto :goto_0

    :cond_0
    new-instance v0, Lu/v;

    sget-object v1, Lu/u;->m:Lu/u;

    invoke-direct {v0, v1, p1}, Lu/v;-><init>(Lu/u;F)V

    move-object p1, v0

    :goto_0
    invoke-interface {p0, p1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lf1/r;)Lf1/r;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lf1/r;F)Lf1/r;
    .locals 6

    new-instance v0, Lu/a1;

    const/4 v3, 0x0

    const/4 v5, 0x5

    const/4 v1, 0x0

    move v4, p1

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lu/a1;-><init>(FFFFI)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lf1/r;FF)Lf1/r;
    .locals 6

    new-instance v0, Lu/a1;

    const/4 v3, 0x0

    const/4 v5, 0x5

    const/4 v1, 0x0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lu/a1;-><init>(FFFFI)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lf1/r;FFI)Lf1/r;
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v1

    :cond_1
    invoke-static {p0, p1, p2}, Lu/b1;->g(Lf1/r;FF)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Lf1/r;F)Lf1/r;
    .locals 6

    new-instance v0, Lu/a1;

    const/4 v5, 0x0

    move v2, p1

    move v3, p1

    move v4, p1

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lu/a1;-><init>(FFFFZ)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lf1/r;FF)Lf1/r;
    .locals 6

    new-instance v0, Lu/a1;

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lu/a1;-><init>(FFFFZ)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lf1/r;FFFFI)Lf1/r;
    .locals 8

    and-int/lit8 v0, p5, 0x2

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-eqz v0, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, p2

    :goto_0
    and-int/lit8 p2, p5, 0x4

    if-eqz p2, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, p3

    :goto_1
    and-int/lit8 p2, p5, 0x8

    if-eqz p2, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, p4

    :goto_2
    new-instance v2, Lu/a1;

    const/4 v7, 0x0

    move v3, p1

    invoke-direct/range {v2 .. v7}, Lu/a1;-><init>(FFFFZ)V

    invoke-interface {p0, v2}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final l(Lf1/r;F)Lf1/r;
    .locals 6

    new-instance v0, Lu/a1;

    const/4 v5, 0x1

    move v2, p1

    move v3, p1

    move v4, p1

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lu/a1;-><init>(FFFFZ)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Lf1/r;FF)Lf1/r;
    .locals 6

    new-instance v0, Lu/a1;

    const/4 v5, 0x1

    move v3, p1

    move v4, p2

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lu/a1;-><init>(FFFFZ)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Lf1/r;FFFF)Lf1/r;
    .locals 6

    new-instance v0, Lu/a1;

    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lu/a1;-><init>(FFFFZ)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lf1/r;FFI)Lf1/r;
    .locals 2

    sget v0, Lo0/u1;->b:F

    and-int/lit8 p3, p3, 0x2

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-eqz p3, :cond_0

    move v0, v1

    :cond_0
    invoke-static {p0, p1, v0, p2, v1}, Lu/b1;->n(Lf1/r;FFFF)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final p(Lf1/r;F)Lf1/r;
    .locals 6

    new-instance v0, Lu/a1;

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v2, 0x0

    move v3, p1

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lu/a1;-><init>(FFFFI)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final q(Lf1/r;FF)Lf1/r;
    .locals 6

    new-instance v0, Lu/a1;

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v2, 0x0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lu/a1;-><init>(FFFFI)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lf1/r;FFI)Lf1/r;
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v1

    :cond_1
    invoke-static {p0, p1, p2}, Lu/b1;->q(Lf1/r;FF)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static s(Lf1/r;)Lf1/r;
    .locals 5

    sget-object v0, Lf1/c;->v:Lf1/i;

    invoke-static {v0, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lu/b1;->f:Lu/l1;

    goto :goto_0

    :cond_0
    sget-object v1, Lf1/c;->u:Lf1/i;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lu/b1;->g:Lu/l1;

    goto :goto_0

    :cond_1
    new-instance v1, Lu/l1;

    sget-object v2, Lu/u;->l:Lu/u;

    new-instance v3, Lod/y6;

    const/16 v4, 0xe

    invoke-direct {v3, v4, v0}, Lod/y6;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v2, v3, v0}, Lu/l1;-><init>(Lu/u;Li9/e;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lf1/r;)Lf1/r;
    .locals 5

    sget-object v0, Lf1/c;->p:Lf1/j;

    invoke-virtual {v0, v0}, Lf1/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lu/b1;->h:Lu/l1;

    goto :goto_0

    :cond_0
    sget-object v1, Lf1/c;->l:Lf1/j;

    invoke-virtual {v0, v1}, Lf1/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lu/b1;->i:Lu/l1;

    goto :goto_0

    :cond_1
    new-instance v1, Lu/l1;

    sget-object v2, Lu/u;->n:Lu/u;

    new-instance v3, Lod/y6;

    const/16 v4, 0xf

    invoke-direct {v3, v4, v0}, Lod/y6;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v2, v3, v0}, Lu/l1;-><init>(Lu/u;Li9/e;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static u(Lf1/r;)Lf1/r;
    .locals 5

    sget-object v0, Lf1/c;->y:Lf1/h;

    invoke-static {v0, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lu/b1;->d:Lu/l1;

    goto :goto_0

    :cond_0
    sget-object v1, Lf1/c;->x:Lf1/h;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lu/b1;->e:Lu/l1;

    goto :goto_0

    :cond_1
    new-instance v1, Lu/l1;

    sget-object v2, Lu/u;->m:Lu/u;

    new-instance v3, Lod/y6;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v0}, Lod/y6;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v2, v3, v0}, Lu/l1;-><init>(Lu/u;Li9/e;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method
