.class public final Lp0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf3/z;


# instance fields
.field public final l:J

.field public final m:Lb3/c;

.field public final n:I

.field public final o:Lo0/k;

.field public final p:Lp0/c;

.field public final q:Lp0/c;

.field public final r:Lp0/a0;

.field public final s:Lp0/a0;

.field public final t:Lp0/d;

.field public final u:Lp0/d;

.field public final v:Lp0/d;

.field public final w:Lp0/b0;

.field public final x:Lp0/b0;


# direct methods
.method public constructor <init>(JLb3/c;Lo0/k;)V
    .locals 3

    sget v0, Lo0/u1;->a:F

    invoke-interface {p3, v0}, Lb3/c;->h0(F)I

    move-result v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lp0/i;->l:J

    iput-object p3, p0, Lp0/i;->m:Lb3/c;

    iput v0, p0, Lp0/i;->n:I

    iput-object p4, p0, Lp0/i;->o:Lo0/k;

    const/16 p4, 0x20

    shr-long v1, p1, p4

    long-to-int p4, v1

    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    invoke-interface {p3, p4}, Lb3/c;->h0(F)I

    move-result p4

    new-instance v1, Lp0/c;

    sget-object v2, Lf1/c;->x:Lf1/h;

    invoke-direct {v1, v2, v2, p4}, Lp0/c;-><init>(Lf1/h;Lf1/h;I)V

    iput-object v1, p0, Lp0/i;->p:Lp0/c;

    new-instance v1, Lp0/c;

    sget-object v2, Lf1/c;->z:Lf1/h;

    invoke-direct {v1, v2, v2, p4}, Lp0/c;-><init>(Lf1/h;Lf1/h;I)V

    iput-object v1, p0, Lp0/i;->q:Lp0/c;

    new-instance p4, Lp0/a0;

    sget-object v1, Lf1/a;->c:Lf1/f;

    invoke-direct {p4, v1}, Lp0/a0;-><init>(Lf1/f;)V

    iput-object p4, p0, Lp0/i;->r:Lp0/a0;

    new-instance p4, Lp0/a0;

    sget-object v1, Lf1/a;->d:Lf1/f;

    invoke-direct {p4, v1}, Lp0/a0;-><init>(Lf1/f;)V

    iput-object p4, p0, Lp0/i;->s:Lp0/a0;

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-interface {p3, p1}, Lb3/c;->h0(F)I

    move-result p1

    new-instance p2, Lp0/d;

    sget-object p3, Lf1/c;->u:Lf1/i;

    sget-object p4, Lf1/c;->w:Lf1/i;

    invoke-direct {p2, p3, p4, p1}, Lp0/d;-><init>(Lf1/i;Lf1/i;I)V

    iput-object p2, p0, Lp0/i;->t:Lp0/d;

    new-instance p2, Lp0/d;

    invoke-direct {p2, p4, p3, p1}, Lp0/d;-><init>(Lf1/i;Lf1/i;I)V

    iput-object p2, p0, Lp0/i;->u:Lp0/d;

    new-instance p2, Lp0/d;

    sget-object v1, Lf1/c;->v:Lf1/i;

    invoke-direct {p2, v1, p3, p1}, Lp0/d;-><init>(Lf1/i;Lf1/i;I)V

    iput-object p2, p0, Lp0/i;->v:Lp0/d;

    new-instance p1, Lp0/b0;

    invoke-direct {p1, p3, v0}, Lp0/b0;-><init>(Lf1/i;I)V

    iput-object p1, p0, Lp0/i;->w:Lp0/b0;

    new-instance p1, Lp0/b0;

    invoke-direct {p1, p4, v0}, Lp0/b0;-><init>(Lf1/i;I)V

    iput-object p1, p0, Lp0/i;->x:Lp0/b0;

    return-void
.end method


# virtual methods
.method public final a(Lb3/k;JLb3/m;J)J
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v7, p5

    invoke-virtual/range {p1 .. p1}, Lb3/k;->a()J

    move-result-wide v1

    const/16 v9, 0x20

    shr-long/2addr v1, v9

    long-to-int v1, v1

    shr-long v2, p2, v9

    long-to-int v10, v2

    div-int/lit8 v2, v10, 0x2

    if-ge v1, v2, :cond_0

    iget-object v1, v0, Lp0/i;->r:Lp0/a0;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lp0/i;->s:Lp0/a0;

    :goto_0
    const/4 v11, 0x3

    new-array v2, v11, [Lp0/l;

    const/4 v12, 0x0

    iget-object v3, v0, Lp0/i;->p:Lp0/c;

    aput-object v3, v2, v12

    const/4 v13, 0x1

    iget-object v3, v0, Lp0/i;->q:Lp0/c;

    aput-object v3, v2, v13

    const/4 v14, 0x2

    aput-object v1, v2, v14

    invoke-static {v2}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v1

    move v2, v12

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp0/l;

    shr-long v4, v7, v9

    long-to-int v5, v4

    move-object/from16 v6, p4

    move/from16 v16, v1

    move-object v1, v3

    move/from16 v17, v9

    move-wide/from16 v3, p2

    move v9, v2

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Lp0/l;->a(Lb3/k;JILb3/m;)I

    move-result v1

    invoke-static {v15}, Lg5/f;->A(Ljava/util/List;)I

    move-result v6

    if-eq v9, v6, :cond_3

    if-ltz v1, :cond_1

    add-int/2addr v5, v1

    if-gt v5, v10, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v9, 0x1

    move v2, v1

    move/from16 v1, v16

    move/from16 v9, v17

    goto :goto_1

    :cond_2
    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v17, v9

    move v1, v12

    :cond_3
    :goto_2
    invoke-virtual {v2}, Lb3/k;->a()J

    move-result-wide v5

    const-wide v9, 0xffffffffL

    and-long/2addr v5, v9

    long-to-int v5, v5

    move-wide v15, v9

    and-long v9, v3, v15

    long-to-int v6, v9

    div-int/lit8 v9, v6, 0x2

    if-ge v5, v9, :cond_4

    iget-object v5, v0, Lp0/i;->w:Lp0/b0;

    goto :goto_3

    :cond_4
    iget-object v5, v0, Lp0/i;->x:Lp0/b0;

    :goto_3
    const/4 v9, 0x4

    new-array v9, v9, [Lp0/m;

    iget-object v10, v0, Lp0/i;->t:Lp0/d;

    aput-object v10, v9, v12

    iget-object v10, v0, Lp0/i;->u:Lp0/d;

    aput-object v10, v9, v13

    iget-object v10, v0, Lp0/i;->v:Lp0/d;

    aput-object v10, v9, v14

    aput-object v5, v9, v11

    invoke-static {v9}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v9

    move v10, v12

    :goto_4
    if-ge v10, v9, :cond_7

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lp0/m;

    and-long v13, v7, v15

    long-to-int v13, v13

    invoke-interface {v11, v2, v3, v4, v13}, Lp0/m;->a(Lb3/k;JI)I

    move-result v11

    invoke-static {v5}, Lg5/f;->A(Ljava/util/List;)I

    move-result v14

    if-eq v10, v14, :cond_6

    iget v14, v0, Lp0/i;->n:I

    if-lt v11, v14, :cond_5

    add-int/2addr v13, v11

    sub-int v14, v6, v14

    if-gt v13, v14, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    move v12, v11

    :cond_7
    int-to-long v3, v1

    shl-long v3, v3, v17

    int-to-long v5, v12

    and-long/2addr v5, v15

    or-long/2addr v3, v5

    iget-object v0, v0, Lp0/i;->o:Lo0/k;

    invoke-static {v3, v4, v7, v8}, Lwa/h;->b(JJ)Lb3/k;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lo0/k;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lp0/i;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lp0/i;

    iget-wide v0, p0, Lp0/i;->l:J

    iget-wide v2, p1, Lp0/i;->l:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-object v0, p0, Lp0/i;->m:Lb3/c;

    iget-object v1, p1, Lp0/i;->m:Lb3/c;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Lp0/i;->n:I

    iget v1, p1, Lp0/i;->n:I

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lp0/i;->o:Lo0/k;

    iget-object p1, p1, Lp0/i;->o:Lo0/k;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lp0/i;->l:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lp0/i;->m:Lb3/c;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lp0/i;->n:I

    invoke-static {v0, v2, v1}, Lm/a;->e(III)I

    move-result v0

    iget-object p0, p0, Lp0/i;->o:Lo0/k;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DropdownMenuPositionProvider(contentOffset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lp0/i;->l:J

    invoke-static {v1, v2}, Lb3/g;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp0/i;->m:Lb3/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", verticalMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lp0/i;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", onPositionCalculated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lp0/i;->o:Lo0/k;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
