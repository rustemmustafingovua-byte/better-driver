.class public final Lr1/g0;
.super Lr1/i0;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lk9/a;


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:F

.field public final n:F

.field public final o:F

.field public final p:F

.field public final q:F

.field public final r:F

.field public final s:F

.field public final t:Ljava/util/List;

.field public final u:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/g0;->l:Ljava/lang/String;

    iput p2, p0, Lr1/g0;->m:F

    iput p3, p0, Lr1/g0;->n:F

    iput p4, p0, Lr1/g0;->o:F

    iput p5, p0, Lr1/g0;->p:F

    iput p6, p0, Lr1/g0;->q:F

    iput p7, p0, Lr1/g0;->r:F

    iput p8, p0, Lr1/g0;->s:F

    iput-object p9, p0, Lr1/g0;->t:Ljava/util/List;

    iput-object p10, p0, Lr1/g0;->u:Ljava/util/List;

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

    if-eqz p1, :cond_5

    instance-of v2, p1, Lr1/g0;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lr1/g0;

    iget-object v2, p1, Lr1/g0;->l:Ljava/lang/String;

    iget-object v3, p0, Lr1/g0;->l:Ljava/lang/String;

    invoke-static {v3, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lr1/g0;->m:F

    iget v3, p1, Lr1/g0;->m:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Lr1/g0;->n:F

    iget v3, p1, Lr1/g0;->n:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Lr1/g0;->o:F

    iget v3, p1, Lr1/g0;->o:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Lr1/g0;->p:F

    iget v3, p1, Lr1/g0;->p:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Lr1/g0;->q:F

    iget v3, p1, Lr1/g0;->q:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Lr1/g0;->r:F

    iget v3, p1, Lr1/g0;->r:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Lr1/g0;->s:F

    iget v3, p1, Lr1/g0;->s:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget-object v2, p0, Lr1/g0;->t:Ljava/util/List;

    iget-object v3, p1, Lr1/g0;->t:Ljava/util/List;

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lr1/g0;->u:Ljava/util/List;

    iget-object p1, p1, Lr1/g0;->u:Ljava/util/List;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lr1/g0;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lr1/g0;->m:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lr1/g0;->n:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lr1/g0;->o:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lr1/g0;->p:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lr1/g0;->q:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lr1/g0;->r:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lr1/g0;->s:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget-object v2, p0, Lr1/g0;->t:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lr0/i;->d(Ljava/util/List;II)I

    move-result v0

    iget-object p0, p0, Lr1/g0;->u:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lr1/f0;

    invoke-direct {v0, p0}, Lr1/f0;-><init>(Lr1/g0;)V

    return-object v0
.end method
