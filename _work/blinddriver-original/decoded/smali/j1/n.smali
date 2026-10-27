.class public final Lj1/n;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Lm1/h0;

.field public final b:Z

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Lm1/h0;ZJJ)V
    .locals 1

    sget v0, Lq/e;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/n;->a:Lm1/h0;

    iput-boolean p2, p0, Lj1/n;->b:Z

    iput-wide p3, p0, Lj1/n;->c:J

    iput-wide p5, p0, Lj1/n;->d:J

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 3

    new-instance v0, Lm1/l;

    new-instance v1, Landroidx/fragment/app/t;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lm1/l;-><init>(Li9/c;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lj1/n;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lj1/n;

    sget v0, Lq/e;->d:F

    invoke-static {v0, v0}, Lb3/f;->b(FF)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lj1/n;->a:Lm1/h0;

    iget-object v1, p1, Lj1/n;->a:Lm1/h0;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lj1/n;->b:Z

    iget-boolean v1, p1, Lj1/n;->b:Z

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lj1/n;->c:J

    iget-wide v2, p1, Lj1/n;->c:J

    invoke-static {v0, v1, v2, v3}, Lm1/p;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-wide v0, p0, Lj1/n;->d:J

    iget-wide p0, p1, Lj1/n;->d:J

    invoke-static {v0, v1, p0, p1}, Lm1/p;->c(JJ)Z

    move-result p0

    if-nez p0, :cond_6

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 2

    check-cast p1, Lm1/l;

    new-instance v0, Landroidx/fragment/app/t;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    iput-object v0, p1, Lm1/l;->z:Li9/c;

    iget-object p0, p1, Lf1/q;->l:Lf1/q;

    iget-boolean p0, p0, Lf1/q;->y:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    invoke-static {p1, p0}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object p0

    iget-object p0, p0, Le2/h1;->A:Le2/h1;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Le2/h1;->s1(Li9/c;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final hashCode()I
    .locals 4

    sget v0, Lq/e;->d:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lj1/n;->a:Lm1/h0;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lj1/n;->b:Z

    invoke-static {v2, v1, v0}, Lm/a;->g(IIZ)I

    move-result v0

    sget v2, Lm1/p;->h:I

    iget-wide v2, p0, Lj1/n;->c:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v1, p0, Lj1/n;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShadowGraphicsLayerElement(elevation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lq/e;->d:F

    invoke-static {v1}, Lb3/f;->c(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj1/n;->a:Lm1/h0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lj1/n;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ambientColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lj1/n;->c:J

    const-string v3, ", spotColor="

    invoke-static {v1, v2, v3, v0}, Lm/a;->s(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Lj1/n;->d:J

    invoke-static {v1, v2}, Lm1/p;->i(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
