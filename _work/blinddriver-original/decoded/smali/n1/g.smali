.class public Ln1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln1/c;

.field public final b:Ln1/c;

.field public final c:Ln1/c;

.field public final d:[F


# direct methods
.method public constructor <init>(Ln1/c;Ln1/c;I)V
    .locals 8

    .line 6
    iget-wide v0, p1, Ln1/c;->b:J

    .line 7
    sget-wide v2, Ln1/b;->a:J

    invoke-static {v0, v1, v2, v3}, Ln1/b;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ln1/j;->a(Ln1/c;)Ln1/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 8
    :goto_0
    iget-wide v4, p2, Ln1/c;->b:J

    .line 9
    invoke-static {v4, v5, v2, v3}, Ln1/b;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {p2}, Ln1/j;->a(Ln1/c;)Ln1/c;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    const/4 v4, 0x3

    if-ne p3, v4, :cond_7

    .line 11
    iget-wide v5, p1, Ln1/c;->b:J

    .line 12
    invoke-static {v5, v6, v2, v3}, Ln1/b;->a(JJ)Z

    move-result p3

    .line 13
    iget-wide v5, p2, Ln1/c;->b:J

    .line 14
    invoke-static {v5, v6, v2, v3}, Ln1/b;->a(JJ)Z

    move-result v2

    if-eqz p3, :cond_2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    if-nez p3, :cond_3

    if-eqz v2, :cond_7

    :cond_3
    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, p2

    .line 15
    :goto_2
    check-cast p1, Ln1/q;

    iget-object p1, p1, Ln1/q;->d:Ln1/s;

    .line 16
    sget-object v3, Ln1/j;->e:[F

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Ln1/s;->a()[F

    move-result-object p3

    goto :goto_3

    :cond_5
    move-object p3, v3

    :goto_3
    if-eqz v2, :cond_6

    .line 17
    invoke-virtual {p1}, Ln1/s;->a()[F

    move-result-object v3

    :cond_6
    const/4 p1, 0x0

    .line 18
    aget v2, p3, p1

    aget v5, v3, p1

    div-float/2addr v2, v5

    const/4 v5, 0x1

    .line 19
    aget v6, p3, v5

    aget v7, v3, v5

    div-float/2addr v6, v7

    const/4 v7, 0x2

    .line 20
    aget p3, p3, v7

    aget v3, v3, v7

    div-float/2addr p3, v3

    new-array v3, v4, [F

    aput v2, v3, p1

    aput v6, v3, v5

    aput p3, v3, v7

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v3, 0x0

    .line 21
    :goto_5
    invoke-direct {p0, p2, v0, v1, v3}, Ln1/g;-><init>(Ln1/c;Ln1/c;Ln1/c;[F)V

    return-void
.end method

.method public constructor <init>(Ln1/c;Ln1/c;Ln1/c;[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln1/g;->a:Ln1/c;

    .line 3
    iput-object p2, p0, Ln1/g;->b:Ln1/c;

    .line 4
    iput-object p3, p0, Ln1/g;->c:Ln1/c;

    .line 5
    iput-object p4, p0, Ln1/g;->d:[F

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 9

    invoke-static {p1, p2}, Lm1/p;->h(J)F

    move-result v0

    invoke-static {p1, p2}, Lm1/p;->g(J)F

    move-result v1

    invoke-static {p1, p2}, Lm1/p;->e(J)F

    move-result v2

    invoke-static {p1, p2}, Lm1/p;->d(J)F

    move-result v7

    iget-object p1, p0, Ln1/g;->b:Ln1/c;

    invoke-virtual {p1, v0, v1, v2}, Ln1/c;->d(FFF)J

    move-result-wide v3

    const/16 p2, 0x20

    shr-long v5, v3, p2

    long-to-int p2, v5

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {p1, v0, v1, v2}, Ln1/c;->e(FFF)F

    move-result p1

    iget-object v0, p0, Ln1/g;->d:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    mul-float/2addr p2, v1

    const/4 v1, 0x1

    aget v1, v0, v1

    mul-float/2addr v3, v1

    const/4 v1, 0x2

    aget v0, v0, v1

    mul-float/2addr p1, v0

    :cond_0
    move v6, p1

    move v4, p2

    move v5, v3

    iget-object v3, p0, Ln1/g;->c:Ln1/c;

    iget-object v8, p0, Ln1/g;->a:Ln1/c;

    invoke-virtual/range {v3 .. v8}, Ln1/c;->f(FFFFLn1/c;)J

    move-result-wide p0

    return-wide p0
.end method
