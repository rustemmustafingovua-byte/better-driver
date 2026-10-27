.class public final Ldd/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ldd/l0;

.field public final b:Ldd/y0;

.field public final c:Ldd/l0;

.field public final d:Ldd/l0;

.field public final e:Ldd/l0;

.field public final f:Ldd/p;

.field public final g:Ldd/m0;

.field public final h:Ldd/t;

.field public final i:Z

.field public final j:I

.field public final k:I

.field public final l:Z

.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldd/l0;Ldd/y0;Ldd/l0;Ldd/l0;Ldd/l0;Ldd/p;Ldd/m0;Ldd/t;ZIIZLjava/lang/String;)V
    .locals 1

    const-string v0, "gpsState"

    invoke-static {p8, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd/n;->a:Ldd/l0;

    iput-object p2, p0, Ldd/n;->b:Ldd/y0;

    iput-object p3, p0, Ldd/n;->c:Ldd/l0;

    iput-object p4, p0, Ldd/n;->d:Ldd/l0;

    iput-object p5, p0, Ldd/n;->e:Ldd/l0;

    iput-object p6, p0, Ldd/n;->f:Ldd/p;

    iput-object p7, p0, Ldd/n;->g:Ldd/m0;

    iput-object p8, p0, Ldd/n;->h:Ldd/t;

    iput-boolean p9, p0, Ldd/n;->i:Z

    iput p10, p0, Ldd/n;->j:I

    iput p11, p0, Ldd/n;->k:I

    iput-boolean p12, p0, Ldd/n;->l:Z

    iput-object p13, p0, Ldd/n;->m:Ljava/lang/String;

    return-void
.end method

.method public static a(Ldd/n;Ldd/l0;Ldd/y0;Ldd/l0;Ldd/l0;Ldd/l0;Ldd/p;Ldd/m0;Ldd/t;ZIIZLjava/lang/String;I)Ldd/n;
    .locals 14

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Ldd/n;->a:Ldd/l0;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldd/n;->b:Ldd/y0;

    move-object v2, p1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p2

    :goto_0
    and-int/lit8 p1, v0, 0x4

    if-eqz p1, :cond_2

    iget-object p1, p0, Ldd/n;->c:Ldd/l0;

    move-object v3, p1

    goto :goto_1

    :cond_2
    move-object/from16 v3, p3

    :goto_1
    and-int/lit8 p1, v0, 0x8

    if-eqz p1, :cond_3

    iget-object p1, p0, Ldd/n;->d:Ldd/l0;

    move-object v4, p1

    goto :goto_2

    :cond_3
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 p1, v0, 0x10

    if-eqz p1, :cond_4

    iget-object p1, p0, Ldd/n;->e:Ldd/l0;

    move-object v5, p1

    goto :goto_3

    :cond_4
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 p1, v0, 0x20

    if-eqz p1, :cond_5

    iget-object p1, p0, Ldd/n;->f:Ldd/p;

    move-object v6, p1

    goto :goto_4

    :cond_5
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 p1, v0, 0x40

    if-eqz p1, :cond_6

    iget-object p1, p0, Ldd/n;->g:Ldd/m0;

    move-object v7, p1

    goto :goto_5

    :cond_6
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_7

    iget-object p1, p0, Ldd/n;->h:Ldd/t;

    move-object v8, p1

    goto :goto_6

    :cond_7
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 p1, v0, 0x100

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Ldd/n;->i:Z

    move v9, p1

    goto :goto_7

    :cond_8
    move/from16 v9, p9

    :goto_7
    and-int/lit16 p1, v0, 0x200

    if-eqz p1, :cond_9

    iget p1, p0, Ldd/n;->j:I

    move v10, p1

    goto :goto_8

    :cond_9
    move/from16 v10, p10

    :goto_8
    and-int/lit16 p1, v0, 0x400

    if-eqz p1, :cond_a

    iget p1, p0, Ldd/n;->k:I

    move v11, p1

    goto :goto_9

    :cond_a
    move/from16 v11, p11

    :goto_9
    and-int/lit16 p1, v0, 0x800

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Ldd/n;->l:Z

    move v12, p1

    goto :goto_a

    :cond_b
    move/from16 v12, p12

    :goto_a
    and-int/lit16 p1, v0, 0x1000

    if-eqz p1, :cond_c

    iget-object p1, p0, Ldd/n;->m:Ljava/lang/String;

    move-object v13, p1

    goto :goto_b

    :cond_c
    move-object/from16 v13, p13

    :goto_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "gpsState"

    invoke-static {v8, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ldd/n;

    invoke-direct/range {v0 .. v13}, Ldd/n;-><init>(Ldd/l0;Ldd/y0;Ldd/l0;Ldd/l0;Ldd/l0;Ldd/p;Ldd/m0;Ldd/t;ZIIZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ldd/l0;
    .locals 0

    iget-object p0, p0, Ldd/n;->e:Ldd/l0;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ldd/n;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ldd/n;

    iget-object v1, p0, Ldd/n;->a:Ldd/l0;

    iget-object v3, p1, Ldd/n;->a:Ldd/l0;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ldd/n;->b:Ldd/y0;

    iget-object v3, p1, Ldd/n;->b:Ldd/y0;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ldd/n;->c:Ldd/l0;

    iget-object v3, p1, Ldd/n;->c:Ldd/l0;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ldd/n;->d:Ldd/l0;

    iget-object v3, p1, Ldd/n;->d:Ldd/l0;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Ldd/n;->e:Ldd/l0;

    iget-object v3, p1, Ldd/n;->e:Ldd/l0;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Ldd/n;->f:Ldd/p;

    iget-object v3, p1, Ldd/n;->f:Ldd/p;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Ldd/n;->g:Ldd/m0;

    iget-object v3, p1, Ldd/n;->g:Ldd/m0;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Ldd/n;->h:Ldd/t;

    iget-object v3, p1, Ldd/n;->h:Ldd/t;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Ldd/n;->i:Z

    iget-boolean v3, p1, Ldd/n;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Ldd/n;->j:I

    iget v3, p1, Ldd/n;->j:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Ldd/n;->k:I

    iget v3, p1, Ldd/n;->k:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Ldd/n;->l:Z

    iget-boolean v3, p1, Ldd/n;->l:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object p0, p0, Ldd/n;->m:Ljava/lang/String;

    iget-object p1, p1, Ldd/n;->m:Ljava/lang/String;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Ldd/n;->a:Ldd/l0;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ldd/l0;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Ldd/n;->b:Ldd/y0;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ldd/y0;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Ldd/n;->c:Ldd/l0;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ldd/l0;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Ldd/n;->d:Ldd/l0;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ldd/l0;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Ldd/n;->e:Ldd/l0;

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ldd/l0;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Ldd/n;->f:Ldd/p;

    invoke-virtual {v3}, Ldd/p;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Ldd/n;->g:Ldd/m0;

    invoke-virtual {v1}, Ldd/m0;->hashCode()I

    move-result v1

    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Ldd/n;->h:Ldd/t;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-boolean v1, p0, Ldd/n;->i:Z

    invoke-static {v3, v2, v1}, Lm/a;->g(IIZ)I

    move-result v1

    iget v3, p0, Ldd/n;->j:I

    invoke-static {v3, v1, v2}, Lm/a;->e(III)I

    move-result v1

    iget v3, p0, Ldd/n;->k:I

    invoke-static {v3, v1, v2}, Lm/a;->e(III)I

    move-result v1

    iget-boolean v3, p0, Ldd/n;->l:Z

    invoke-static {v1, v2, v3}, Lm/a;->g(IIZ)I

    move-result v1

    iget-object p0, p0, Ldd/n;->m:Ljava/lang/String;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EngineState(lastGps="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ldd/n;->a:Ldd/l0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastGpsVerdict="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldd/n;->b:Ldd/y0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastGoodGps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldd/n;->c:Ldd/l0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastNet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldd/n;->d:Ldd/l0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastFused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldd/n;->e:Ldd/l0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gnss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldd/n;->f:Ldd/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sensors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldd/n;->g:Ldd/m0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gpsState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldd/n;->h:Ldd/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", jammed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ldd/n;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gpsFixCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldd/n;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", badFixCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldd/n;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ldd/n;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", logFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Ldd/n;->m:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
