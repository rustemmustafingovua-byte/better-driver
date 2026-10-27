.class public final Ln1/f;
.super Ln1/g;
.source "SourceFile"


# instance fields
.field public final e:Ln1/q;

.field public final f:Ln1/q;

.field public final g:[F


# direct methods
.method public constructor <init>(Ln1/q;Ln1/q;)V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, p2, v0}, Ln1/g;-><init>(Ln1/c;Ln1/c;Ln1/c;[F)V

    iput-object p1, p0, Ln1/f;->e:Ln1/q;

    iput-object p2, p0, Ln1/f;->f:Ln1/q;

    sget-object v0, Ln1/a;->b:Ln1/a;

    iget-object v0, v0, Ln1/a;->a:[F

    iget-object v1, p1, Ln1/q;->d:Ln1/s;

    iget-object p1, p1, Ln1/q;->i:[F

    iget-object v2, p2, Ln1/q;->d:Ln1/s;

    iget-object v3, p2, Ln1/q;->j:[F

    invoke-static {v1, v2}, Ln1/j;->d(Ln1/s;Ln1/s;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3, p1}, Ln1/j;->g([F[F)[F

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ln1/s;->a()[F

    move-result-object v4

    invoke-virtual {v2}, Ln1/s;->a()[F

    move-result-object v5

    sget-object v6, Ln1/j;->b:Ln1/s;

    invoke-static {v1, v6}, Ln1/j;->d(Ln1/s;Ln1/s;)Z

    move-result v1

    const/4 v7, 0x3

    if-nez v1, :cond_1

    new-array v1, v7, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v4, v1}, Ln1/j;->c([F[F[F)[F

    move-result-object v1

    invoke-static {v1, p1}, Ln1/j;->g([F[F)[F

    move-result-object p1

    :cond_1
    invoke-static {v2, v6}, Ln1/j;->d(Ln1/s;Ln1/s;)Z

    move-result v1

    if-nez v1, :cond_2

    new-array v1, v7, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v5, v1}, Ln1/j;->c([F[F[F)[F

    move-result-object v0

    iget-object p2, p2, Ln1/q;->i:[F

    invoke-static {v0, p2}, Ln1/j;->g([F[F)[F

    move-result-object p2

    invoke-static {p2}, Ln1/j;->f([F)[F

    move-result-object v3

    :cond_2
    invoke-static {v3, p1}, Ln1/j;->g([F[F)[F

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ln1/f;->g:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f76d699    # 0.964212f
        0x3f800000    # 1.0f
        0x3f533f85
    .end array-data

    :array_1
    .array-data 4
        0x3f76d699    # 0.964212f
        0x3f800000    # 1.0f
        0x3f533f85
    .end array-data
.end method


# virtual methods
.method public final a(J)J
    .locals 6

    invoke-static {p1, p2}, Lm1/p;->h(J)F

    move-result v0

    invoke-static {p1, p2}, Lm1/p;->g(J)F

    move-result v1

    invoke-static {p1, p2}, Lm1/p;->e(J)F

    move-result v2

    invoke-static {p1, p2}, Lm1/p;->d(J)F

    move-result p1

    iget-object p2, p0, Ln1/f;->e:Ln1/q;

    iget-object p2, p2, Ln1/q;->p:Ln1/m;

    float-to-double v3, v0

    invoke-virtual {p2, v3, v4}, Ln1/m;->g(D)D

    move-result-wide v3

    double-to-float v0, v3

    float-to-double v3, v1

    invoke-virtual {p2, v3, v4}, Ln1/m;->g(D)D

    move-result-wide v3

    double-to-float v1, v3

    float-to-double v2, v2

    invoke-virtual {p2, v2, v3}, Ln1/m;->g(D)D

    move-result-wide v2

    double-to-float p2, v2

    const/4 v2, 0x0

    iget-object v3, p0, Ln1/f;->g:[F

    aget v2, v3, v2

    mul-float/2addr v2, v0

    const/4 v4, 0x3

    aget v4, v3, v4

    mul-float/2addr v4, v1

    add-float/2addr v4, v2

    const/4 v2, 0x6

    aget v2, v3, v2

    mul-float/2addr v2, p2

    add-float/2addr v2, v4

    const/4 v4, 0x1

    aget v4, v3, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x4

    aget v5, v3, v5

    mul-float/2addr v5, v1

    add-float/2addr v5, v4

    const/4 v4, 0x7

    aget v4, v3, v4

    mul-float/2addr v4, p2

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, v3, v5

    mul-float/2addr v5, v0

    const/4 v0, 0x5

    aget v0, v3, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v5

    const/16 v1, 0x8

    aget v1, v3, v1

    mul-float/2addr v1, p2

    add-float/2addr v1, v0

    iget-object p0, p0, Ln1/f;->f:Ln1/q;

    iget-object p2, p0, Ln1/q;->m:Ln1/m;

    float-to-double v2, v2

    invoke-virtual {p2, v2, v3}, Ln1/m;->g(D)D

    move-result-wide v2

    double-to-float p2, v2

    iget-object v0, p0, Ln1/q;->m:Ln1/m;

    float-to-double v2, v4

    invoke-virtual {v0, v2, v3}, Ln1/m;->g(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Ln1/m;->g(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {p2, v2, v0, p1, p0}, Lm1/v;->b(FFFFLn1/c;)J

    move-result-wide p0

    return-wide p0
.end method
