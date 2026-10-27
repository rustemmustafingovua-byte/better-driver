.class final Lp/n;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:F

.field public final c:Lm1/h0;


# direct methods
.method public constructor <init>(JLm1/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lp/n;->a:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lp/n;->b:F

    iput-object p3, p0, Lp/n;->c:Lm1/h0;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 3

    new-instance v0, Lp/p;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-wide v1, p0, Lp/n;->a:J

    iput-wide v1, v0, Lp/p;->z:J

    iget-object p0, p0, Lp/n;->c:Lm1/h0;

    iput-object p0, v0, Lp/p;->A:Lm1/h0;

    const-wide v1, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v1, v0, Lp/p;->B:J

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lp/n;

    if-eqz v0, :cond_0

    check-cast p1, Lp/n;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lp/n;->a:J

    iget-wide v2, p1, Lp/n;->a:J

    invoke-static {v0, v1, v2, v3}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lp/n;->b:F

    iget v1, p1, Lp/n;->b:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object p0, p0, Lp/n;->c:Lm1/h0;

    iget-object p1, p1, Lp/n;->c:Lm1/h0;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 2

    check-cast p1, Lp/p;

    iget-wide v0, p0, Lp/n;->a:J

    iput-wide v0, p1, Lp/p;->z:J

    iget-object v0, p1, Lp/p;->A:Lm1/h0;

    iget-object p0, p0, Lp/n;->c:Lm1/h0;

    invoke-static {v0, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p0, p1, Lp/p;->A:Lm1/h0;

    invoke-static {p1}, Le2/l;->m(Le2/z1;)V

    :cond_0
    invoke-static {p1}, Le2/l;->k(Le2/n;)V

    return-void
.end method

.method public final hashCode()I
    .locals 3

    sget v0, Lm1/p;->h:I

    iget-wide v0, p0, Lp/n;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3c1

    iget v1, p0, Lp/n;->b:F

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lm/a;->c(FII)I

    move-result v0

    iget-object p0, p0, Lp/n;->c:Lm1/h0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
