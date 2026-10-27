.class public final Ldd/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:F

.field public final B:F

.field public final C:D

.field public final D:J

.field public final E:F

.field public final F:J

.field public final a:D

.field public final b:D

.field public final c:D

.field public final d:F

.field public final e:J

.field public final f:J

.field public final g:I

.field public final h:I

.field public final i:F

.field public final j:I

.field public final k:F

.field public final l:F

.field public final m:F

.field public final n:F

.field public final o:F

.field public final p:F

.field public final q:F

.field public final r:F

.field public final s:J

.field public final t:J

.field public final u:D

.field public final v:F

.field public final w:F

.field public final x:D

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(DDDFJJIIFIFFFFFFFFJJDFFDIIFFDJFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ldd/r0;->a:D

    iput-wide p3, p0, Ldd/r0;->b:D

    iput-wide p5, p0, Ldd/r0;->c:D

    iput p7, p0, Ldd/r0;->d:F

    iput-wide p8, p0, Ldd/r0;->e:J

    iput-wide p10, p0, Ldd/r0;->f:J

    iput p12, p0, Ldd/r0;->g:I

    iput p13, p0, Ldd/r0;->h:I

    iput p14, p0, Ldd/r0;->i:F

    iput p15, p0, Ldd/r0;->j:I

    move/from16 p1, p16

    iput p1, p0, Ldd/r0;->k:F

    move/from16 p1, p17

    iput p1, p0, Ldd/r0;->l:F

    move/from16 p1, p18

    iput p1, p0, Ldd/r0;->m:F

    move/from16 p1, p19

    iput p1, p0, Ldd/r0;->n:F

    move/from16 p1, p20

    iput p1, p0, Ldd/r0;->o:F

    move/from16 p1, p21

    iput p1, p0, Ldd/r0;->p:F

    move/from16 p1, p22

    iput p1, p0, Ldd/r0;->q:F

    move/from16 p1, p23

    iput p1, p0, Ldd/r0;->r:F

    move-wide/from16 p1, p24

    iput-wide p1, p0, Ldd/r0;->s:J

    move-wide/from16 p1, p26

    iput-wide p1, p0, Ldd/r0;->t:J

    move-wide/from16 p1, p28

    iput-wide p1, p0, Ldd/r0;->u:D

    move/from16 p1, p30

    iput p1, p0, Ldd/r0;->v:F

    move/from16 p1, p31

    iput p1, p0, Ldd/r0;->w:F

    move-wide/from16 p1, p32

    iput-wide p1, p0, Ldd/r0;->x:D

    move/from16 p1, p34

    iput p1, p0, Ldd/r0;->y:I

    move/from16 p1, p35

    iput p1, p0, Ldd/r0;->z:I

    move/from16 p1, p36

    iput p1, p0, Ldd/r0;->A:F

    move/from16 p1, p37

    iput p1, p0, Ldd/r0;->B:F

    move-wide/from16 p1, p38

    iput-wide p1, p0, Ldd/r0;->C:D

    move-wide/from16 p1, p40

    iput-wide p1, p0, Ldd/r0;->D:J

    move/from16 p1, p42

    iput p1, p0, Ldd/r0;->E:F

    move-wide/from16 p1, p43

    iput-wide p1, p0, Ldd/r0;->F:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ldd/r0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ldd/r0;

    iget-wide v3, p0, Ldd/r0;->a:D

    iget-wide v5, p1, Ldd/r0;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Ldd/r0;->b:D

    iget-wide v5, p1, Ldd/r0;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Ldd/r0;->c:D

    iget-wide v5, p1, Ldd/r0;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Ldd/r0;->d:F

    iget v3, p1, Ldd/r0;->d:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Ldd/r0;->e:J

    iget-wide v5, p1, Ldd/r0;->e:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Ldd/r0;->f:J

    iget-wide v5, p1, Ldd/r0;->f:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Ldd/r0;->g:I

    iget v3, p1, Ldd/r0;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Ldd/r0;->h:I

    iget v3, p1, Ldd/r0;->h:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Ldd/r0;->i:F

    iget v3, p1, Ldd/r0;->i:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Ldd/r0;->j:I

    iget v3, p1, Ldd/r0;->j:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Ldd/r0;->k:F

    iget v3, p1, Ldd/r0;->k:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Ldd/r0;->l:F

    iget v3, p1, Ldd/r0;->l:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_d

    return v2

    :cond_d
    iget v1, p0, Ldd/r0;->m:F

    iget v3, p1, Ldd/r0;->m:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget v1, p0, Ldd/r0;->n:F

    iget v3, p1, Ldd/r0;->n:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget v1, p0, Ldd/r0;->o:F

    iget v3, p1, Ldd/r0;->o:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_10

    return v2

    :cond_10
    iget v1, p0, Ldd/r0;->p:F

    iget v3, p1, Ldd/r0;->p:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget v1, p0, Ldd/r0;->q:F

    iget v3, p1, Ldd/r0;->q:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_12

    return v2

    :cond_12
    iget v1, p0, Ldd/r0;->r:F

    iget v3, p1, Ldd/r0;->r:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Ldd/r0;->s:J

    iget-wide v5, p1, Ldd/r0;->s:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_14

    return v2

    :cond_14
    iget-wide v3, p0, Ldd/r0;->t:J

    iget-wide v5, p1, Ldd/r0;->t:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Ldd/r0;->u:D

    iget-wide v5, p1, Ldd/r0;->u:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_16

    return v2

    :cond_16
    iget v1, p0, Ldd/r0;->v:F

    iget v3, p1, Ldd/r0;->v:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Ldd/r0;->w:F

    iget v3, p1, Ldd/r0;->w:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_18

    return v2

    :cond_18
    iget-wide v3, p0, Ldd/r0;->x:D

    iget-wide v5, p1, Ldd/r0;->x:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_19

    return v2

    :cond_19
    iget v1, p0, Ldd/r0;->y:I

    iget v3, p1, Ldd/r0;->y:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Ldd/r0;->z:I

    iget v3, p1, Ldd/r0;->z:I

    if-eq v1, v3, :cond_1b

    return v2

    :cond_1b
    iget v1, p0, Ldd/r0;->A:F

    iget v3, p1, Ldd/r0;->A:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1c

    return v2

    :cond_1c
    iget v1, p0, Ldd/r0;->B:F

    iget v3, p1, Ldd/r0;->B:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1d

    return v2

    :cond_1d
    iget-wide v3, p0, Ldd/r0;->C:D

    iget-wide v5, p1, Ldd/r0;->C:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_1e

    return v2

    :cond_1e
    iget-wide v3, p0, Ldd/r0;->D:J

    iget-wide v5, p1, Ldd/r0;->D:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1f

    return v2

    :cond_1f
    iget v1, p0, Ldd/r0;->E:F

    iget v3, p1, Ldd/r0;->E:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_20

    return v2

    :cond_20
    iget-wide v3, p0, Ldd/r0;->F:J

    iget-wide p0, p1, Ldd/r0;->F:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_21

    return v2

    :cond_21
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Ldd/r0;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Ldd/r0;->b:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Ldd/r0;->c:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget v2, p0, Ldd/r0;->d:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget-wide v2, p0, Ldd/r0;->e:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Ldd/r0;->f:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget v2, p0, Ldd/r0;->g:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget v2, p0, Ldd/r0;->h:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget v2, p0, Ldd/r0;->i:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Ldd/r0;->j:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget v2, p0, Ldd/r0;->k:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Ldd/r0;->l:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Ldd/r0;->m:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Ldd/r0;->n:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Ldd/r0;->o:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Ldd/r0;->p:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Ldd/r0;->q:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Ldd/r0;->r:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget-wide v2, p0, Ldd/r0;->s:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Ldd/r0;->t:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Ldd/r0;->u:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget v2, p0, Ldd/r0;->v:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Ldd/r0;->w:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget-wide v2, p0, Ldd/r0;->x:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget v2, p0, Ldd/r0;->y:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget v2, p0, Ldd/r0;->z:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget v2, p0, Ldd/r0;->A:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Ldd/r0;->B:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget-wide v2, p0, Ldd/r0;->C:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Ldd/r0;->D:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget v2, p0, Ldd/r0;->E:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget-wide v1, p0, Ldd/r0;->F:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, "TrustConfig(altMinM="

    const-string v1, ", altMaxM="

    iget-wide v2, p0, Ldd/r0;->a:D

    invoke-static {v2, v3, v0, v1}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ldd/r0;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", maxSpeedKmh="

    const-string v2, ", maxAccuracyM="

    iget-wide v3, p0, Ldd/r0;->c:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget v1, p0, Ldd/r0;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxClockSkewMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldd/r0;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", clockSkewStableTolMs="

    const-string v2, ", clockSkewStableFixes="

    iget-wide v3, p0, Ldd/r0;->f:J

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    const-string v1, ", minSatsUsed="

    const-string v2, ", minMeanCn0="

    iget v3, p0, Ldd/r0;->g:I

    iget v4, p0, Ldd/r0;->h:I

    invoke-static {v0, v3, v1, v4, v2}, Lm/a;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v1, p0, Ldd/r0;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cn0WaiveMinSats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldd/r0;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cn0WaiveMaxAccM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldd/r0;->k:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minCn0Spread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldd/r0;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeadingDiffDeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldd/r0;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeadingDiffCorrectedDeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldd/r0;->n:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", headingCheckMinSpeedMps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldd/r0;->o:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", jamAgcDb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldd/r0;->p:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", jamHardAgcDb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldd/r0;->q:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", frozenMinSpeedMps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldd/r0;->r:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", frozenSuspectS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldd/r0;->s:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", frozenBadS="

    const-string v2, ", netDiffMinM="

    iget-wide v3, p0, Ldd/r0;->t:J

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    iget-wide v1, p0, Ldd/r0;->u:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", netMaxAccM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldd/r0;->v:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", netDiffMaxSpeedMps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldd/r0;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", speedMismatchMinMps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldd/r0;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", jamStrongMinSats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldd/r0;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", jamStrongMinSatsDual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldd/r0;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", jamStrongMinCn0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldd/r0;->A:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", jamStrongMinSpread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldd/r0;->B:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", jamStrongNetM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldd/r0;->C:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", jamStrongNetMaxAgeMs="

    const-string v2, ", jamStrongNetMaxAccM="

    iget-wide v3, p0, Ldd/r0;->D:J

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    iget v1, p0, Ldd/r0;->E:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", jamStrongChainMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldd/r0;->F:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
