.class public final Lr/y2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLr/m1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lr/y2;->b:Ljava/lang/Object;

    .line 3
    iput-wide p1, p0, Lr/y2;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Lr/m1;I)V
    .locals 2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-wide/16 v0, 0x0

    .line 4
    invoke-direct {p0, v0, v1, p1}, Lr/y2;-><init>(JLr/m1;)V

    return-void
.end method


# virtual methods
.method public a(JJF)J
    .locals 5

    invoke-static {p1, p2, p3, p4}, Ll1/b;->d(JJ)J

    move-result-wide p1

    iget-wide p3, p0, Lr/y2;->a:J

    invoke-static {p3, p4, p1, p2}, Ll1/b;->e(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lr/y2;->a:J

    iget-object p3, p0, Lr/y2;->b:Ljava/lang/Object;

    check-cast p3, Lr/m1;

    if-nez p3, :cond_0

    invoke-static {p1, p2}, Ll1/b;->c(J)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lr/y2;->b(J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    :goto_0
    cmpl-float p1, p1, p5

    if-ltz p1, :cond_4

    iget-object p1, p0, Lr/y2;->b:Ljava/lang/Object;

    check-cast p1, Lr/m1;

    const-wide p2, 0xffffffffL

    const/16 p4, 0x20

    if-nez p1, :cond_1

    iget-wide v0, p0, Lr/y2;->a:J

    invoke-static {v0, v1}, Ll1/b;->c(J)F

    move-result p1

    shr-long v2, v0, p4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    div-float/2addr v2, p1

    and-long/2addr v0, p2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    div-float/2addr v0, p1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v1, p1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v3, p1

    shl-long v0, v1, p4

    and-long p1, v3, p2

    or-long/2addr p1, v0

    invoke-static {p5, p1, p2}, Ll1/b;->f(FJ)J

    move-result-wide p1

    iget-wide p3, p0, Lr/y2;->a:J

    invoke-static {p3, p4, p1, p2}, Ll1/b;->d(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    iget-wide v0, p0, Lr/y2;->a:J

    invoke-virtual {p0, v0, v1}, Lr/y2;->b(J)F

    move-result p1

    iget-wide v0, p0, Lr/y2;->a:J

    invoke-virtual {p0, v0, v1}, Lr/y2;->b(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    mul-float/2addr v0, p5

    sub-float/2addr p1, v0

    iget-wide v0, p0, Lr/y2;->a:J

    iget-object p5, p0, Lr/y2;->b:Ljava/lang/Object;

    check-cast p5, Lr/m1;

    sget-object v2, Lr/m1;->m:Lr/m1;

    if-ne p5, v2, :cond_2

    and-long/2addr v0, p2

    :goto_1
    long-to-int p5, v0

    invoke-static {p5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p5

    goto :goto_2

    :cond_2
    shr-long/2addr v0, p4

    goto :goto_1

    :goto_2
    iget-object p0, p0, Lr/y2;->b:Ljava/lang/Object;

    check-cast p0, Lr/m1;

    if-ne p0, v2, :cond_3

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p5

    int-to-long v0, p5

    shl-long/2addr p0, p4

    and-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0

    :cond_3
    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    shl-long p4, v0, p4

    and-long/2addr p0, p2

    or-long/2addr p0, p4

    return-wide p0

    :cond_4
    const-wide p0, 0x7fc000007fc00000L    # 2.247117487993712E307

    return-wide p0
.end method

.method public b(J)F
    .locals 2

    iget-object p0, p0, Lr/y2;->b:Ljava/lang/Object;

    check-cast p0, Lr/m1;

    sget-object v0, Lr/m1;->m:Lr/m1;

    if-ne p0, v0, :cond_0

    const/16 p0, 0x20

    shr-long p0, p1, p0

    :goto_0
    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_0
    const-wide v0, 0xffffffffL

    and-long p0, p1, v0

    goto :goto_0
.end method

.method public c()Lla/p;
    .locals 8

    new-instance v0, Lc5/o;

    invoke-direct {v0}, Lc5/o;-><init>()V

    :goto_0
    iget-object v1, p0, Lr/y2;->b:Ljava/lang/Object;

    check-cast v1, Lbb/i;

    iget-wide v2, p0, Lr/y2;->a:J

    invoke-interface {v1, v2, v3}, Lbb/i;->o(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lr/y2;->a:J

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lr/y2;->a:J

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lc5/o;->g()Lla/p;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x4

    const/16 v3, 0x3a

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, Lr9/k;->d0(Ljava/lang/CharSequence;CII)I

    move-result v2

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v7, "substring(...)"

    if-eq v2, v5, :cond_1

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v1}, Ly4/s;->i(Lc5/o;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v5, ""

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5, v1}, Ly4/s;->i(Lc5/o;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v5, v1}, Ly4/s;->i(Lc5/o;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
