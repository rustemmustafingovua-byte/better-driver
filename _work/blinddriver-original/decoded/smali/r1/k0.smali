.class public final Lr1/k0;
.super Lr1/i0;
.source "SourceFile"


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:Ljava/util/List;

.field public final n:I

.field public final o:Lm1/m;

.field public final p:F

.field public final q:Lm1/m;

.field public final r:F

.field public final s:F

.field public final t:I

.field public final u:I

.field public final v:F

.field public final w:F

.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ILm1/m;FLm1/m;FFIIFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/k0;->l:Ljava/lang/String;

    iput-object p2, p0, Lr1/k0;->m:Ljava/util/List;

    iput p3, p0, Lr1/k0;->n:I

    iput-object p4, p0, Lr1/k0;->o:Lm1/m;

    iput p5, p0, Lr1/k0;->p:F

    iput-object p6, p0, Lr1/k0;->q:Lm1/m;

    iput p7, p0, Lr1/k0;->r:F

    iput p8, p0, Lr1/k0;->s:F

    iput p9, p0, Lr1/k0;->t:I

    iput p10, p0, Lr1/k0;->u:I

    iput p11, p0, Lr1/k0;->v:F

    iput p12, p0, Lr1/k0;->w:F

    iput p13, p0, Lr1/k0;->x:F

    iput p14, p0, Lr1/k0;->y:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const-class v2, Lr1/k0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lr1/k0;

    iget-object v2, p0, Lr1/k0;->l:Ljava/lang/String;

    iget-object v3, p1, Lr1/k0;->l:Ljava/lang/String;

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lr1/k0;->o:Lm1/m;

    iget-object v3, p1, Lr1/k0;->o:Lm1/m;

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lr1/k0;->p:F

    iget v3, p1, Lr1/k0;->p:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_6

    iget-object v2, p0, Lr1/k0;->q:Lm1/m;

    iget-object v3, p1, Lr1/k0;->q:Lm1/m;

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lr1/k0;->r:F

    iget v3, p1, Lr1/k0;->r:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_6

    iget v2, p0, Lr1/k0;->s:F

    iget v3, p1, Lr1/k0;->s:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_6

    iget v2, p0, Lr1/k0;->t:I

    iget v3, p1, Lr1/k0;->t:I

    if-ne v2, v3, :cond_6

    iget v2, p0, Lr1/k0;->u:I

    iget v3, p1, Lr1/k0;->u:I

    if-ne v2, v3, :cond_6

    iget v2, p0, Lr1/k0;->v:F

    iget v3, p1, Lr1/k0;->v:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_6

    iget v2, p0, Lr1/k0;->w:F

    iget v3, p1, Lr1/k0;->w:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_6

    iget v2, p0, Lr1/k0;->x:F

    iget v3, p1, Lr1/k0;->x:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_6

    iget v2, p0, Lr1/k0;->y:F

    iget v3, p1, Lr1/k0;->y:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_6

    iget v2, p0, Lr1/k0;->n:I

    iget v3, p1, Lr1/k0;->n:I

    if-ne v2, v3, :cond_6

    iget-object p0, p0, Lr1/k0;->m:Ljava/util/List;

    iget-object p1, p1, Lr1/k0;->m:Ljava/util/List;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lr1/k0;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lr1/k0;->m:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lr0/i;->d(Ljava/util/List;II)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lr1/k0;->o:Lm1/m;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Lr1/k0;->p:F

    invoke-static {v3, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget-object v3, p0, Lr1/k0;->q:Lm1/m;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lr1/k0;->r:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lr1/k0;->s:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lr1/k0;->t:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget v2, p0, Lr1/k0;->u:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget v2, p0, Lr1/k0;->v:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lr1/k0;->w:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lr1/k0;->x:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lr1/k0;->y:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget p0, p0, Lr1/k0;->n:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
