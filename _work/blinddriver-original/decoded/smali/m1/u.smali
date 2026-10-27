.class final Lm1/u;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:J

.field public final g:Lm1/h0;

.field public final h:Z

.field public final i:J

.field public final j:J

.field public final k:I


# direct methods
.method public constructor <init>(FFFFFJLm1/h0;ZJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm1/u;->a:F

    iput p2, p0, Lm1/u;->b:F

    iput p3, p0, Lm1/u;->c:F

    iput p4, p0, Lm1/u;->d:F

    iput p5, p0, Lm1/u;->e:F

    iput-wide p6, p0, Lm1/u;->f:J

    iput-object p8, p0, Lm1/u;->g:Lm1/h0;

    iput-boolean p9, p0, Lm1/u;->h:Z

    iput-wide p10, p0, Lm1/u;->i:J

    iput-wide p12, p0, Lm1/u;->j:J

    iput p14, p0, Lm1/u;->k:I

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 3

    new-instance v0, Lm1/i0;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget v1, p0, Lm1/u;->a:F

    iput v1, v0, Lm1/i0;->z:F

    iget v1, p0, Lm1/u;->b:F

    iput v1, v0, Lm1/i0;->A:F

    iget v1, p0, Lm1/u;->c:F

    iput v1, v0, Lm1/i0;->B:F

    iget v1, p0, Lm1/u;->d:F

    iput v1, v0, Lm1/i0;->C:F

    iget v1, p0, Lm1/u;->e:F

    iput v1, v0, Lm1/i0;->D:F

    const/high16 v1, 0x41000000    # 8.0f

    iput v1, v0, Lm1/i0;->E:F

    iget-wide v1, p0, Lm1/u;->f:J

    iput-wide v1, v0, Lm1/i0;->F:J

    iget-object v1, p0, Lm1/u;->g:Lm1/h0;

    iput-object v1, v0, Lm1/i0;->G:Lm1/h0;

    iget-boolean v1, p0, Lm1/u;->h:Z

    iput-boolean v1, v0, Lm1/i0;->H:Z

    iget-wide v1, p0, Lm1/u;->i:J

    iput-wide v1, v0, Lm1/i0;->I:J

    iget-wide v1, p0, Lm1/u;->j:J

    iput-wide v1, v0, Lm1/i0;->J:J

    iget p0, p0, Lm1/u;->k:I

    iput p0, v0, Lm1/i0;->K:I

    const/4 p0, 0x3

    iput p0, v0, Lm1/i0;->L:I

    new-instance p0, Landroidx/fragment/app/t;

    const/16 v1, 0x16

    invoke-direct {p0, v1, v0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    iput-object p0, v0, Lm1/i0;->M:Landroidx/fragment/app/t;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lm1/u;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lm1/u;

    iget v0, p0, Lm1/u;->a:F

    iget v1, p1, Lm1/u;->a:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget v0, p0, Lm1/u;->b:F

    iget v1, p1, Lm1/u;->b:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lm1/u;->c:F

    iget v1, p1, Lm1/u;->c:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_1

    :cond_6
    iget v1, p0, Lm1/u;->d:F

    iget v2, p1, Lm1/u;->d:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    iget v0, p0, Lm1/u;->e:F

    iget v1, p1, Lm1/u;->e:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    :cond_b
    iget-wide v0, p0, Lm1/u;->f:J

    iget-wide v2, p1, Lm1/u;->f:J

    invoke-static {v0, v1, v2, v3}, Lm1/k0;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lm1/u;->g:Lm1/h0;

    iget-object v1, p1, Lm1/u;->g:Lm1/h0;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1

    :cond_d
    iget-boolean v0, p0, Lm1/u;->h:Z

    iget-boolean v1, p1, Lm1/u;->h:Z

    if-eq v0, v1, :cond_e

    goto :goto_1

    :cond_e
    iget-wide v0, p0, Lm1/u;->i:J

    iget-wide v2, p1, Lm1/u;->i:J

    invoke-static {v0, v1, v2, v3}, Lm1/p;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1

    :cond_f
    iget-wide v0, p0, Lm1/u;->j:J

    iget-wide v2, p1, Lm1/u;->j:J

    invoke-static {v0, v1, v2, v3}, Lm1/p;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_1

    :cond_10
    iget p0, p0, Lm1/u;->k:I

    iget p1, p1, Lm1/u;->k:I

    if-ne p0, p1, :cond_11

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_11
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 2

    check-cast p1, Lm1/i0;

    iget v0, p0, Lm1/u;->a:F

    iput v0, p1, Lm1/i0;->z:F

    iget v0, p0, Lm1/u;->b:F

    iput v0, p1, Lm1/i0;->A:F

    iget v0, p0, Lm1/u;->c:F

    iput v0, p1, Lm1/i0;->B:F

    iget v0, p0, Lm1/u;->d:F

    iput v0, p1, Lm1/i0;->C:F

    iget v0, p0, Lm1/u;->e:F

    iput v0, p1, Lm1/i0;->D:F

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p1, Lm1/i0;->E:F

    iget-wide v0, p0, Lm1/u;->f:J

    iput-wide v0, p1, Lm1/i0;->F:J

    iget-object v0, p0, Lm1/u;->g:Lm1/h0;

    iput-object v0, p1, Lm1/i0;->G:Lm1/h0;

    iget-boolean v0, p0, Lm1/u;->h:Z

    iput-boolean v0, p1, Lm1/i0;->H:Z

    iget-wide v0, p0, Lm1/u;->i:J

    iput-wide v0, p1, Lm1/i0;->I:J

    iget-wide v0, p0, Lm1/u;->j:J

    iput-wide v0, p1, Lm1/i0;->J:J

    iget p0, p0, Lm1/u;->k:I

    iput p0, p1, Lm1/i0;->K:I

    const/4 p0, 0x3

    iput p0, p1, Lm1/i0;->L:I

    iget-object p0, p1, Lm1/i0;->M:Landroidx/fragment/app/t;

    iget-object v0, p1, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, v0}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object p1

    iget-object p1, p1, Le2/h1;->A:Le2/h1;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Le2/h1;->s1(Li9/c;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lm1/u;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lm1/u;->b:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lm1/u;->c:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v3, p0, Lm1/u;->d:F

    invoke-static {v3, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lm1/u;->e:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    sget v2, Lm1/k0;->c:I

    iget-wide v2, p0, Lm1/u;->f:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-object v2, p0, Lm1/u;->g:Lm1/h0;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lm1/u;->h:Z

    const/16 v3, 0x3c1

    invoke-static {v2, v3, v0}, Lm/a;->g(IIZ)I

    move-result v0

    sget v2, Lm1/p;->h:I

    iget-wide v2, p0, Lm1/u;->i:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lm1/u;->j:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget p0, p0, Lm1/u;->k:I

    invoke-static {p0, v0, v1}, Lm/a;->e(III)I

    move-result p0

    const/4 v0, 0x3

    invoke-static {v0, p0, v1}, Lm/a;->e(III)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GraphicsLayerElement(scaleX="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lm1/u;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scaleY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm1/u;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm1/u;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", translationX=0.0, translationY=0.0, shadowElevation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm1/u;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rotationX=0.0, rotationY=0.0, rotationZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm1/u;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cameraDistance=8.0, transformOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lm1/u;->f:J

    invoke-static {v1, v2}, Lm1/k0;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm1/u;->g:Lm1/h0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lm1/u;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", renderEffect=null, ambientShadowColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lm1/u;->i:J

    const-string v3, ", spotShadowColor="

    invoke-static {v1, v2, v3, v0}, Lm/a;->s(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Lm1/u;->j:J

    const-string v3, ", compositingStrategy="

    invoke-static {v1, v2, v3, v0}, Lm/a;->s(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CompositingStrategy(value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lm1/u;->k:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", blendMode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x3

    invoke-static {p0}, Lm1/v;->C(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", colorFilter=null)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
