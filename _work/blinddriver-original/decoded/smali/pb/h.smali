.class public final Lpb/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# instance fields
.field public l:D

.field public m:D

.field public n:D

.field public o:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lpb/h;->l:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 3
    iput-wide v2, p0, Lpb/h;->m:D

    .line 4
    iput-wide v0, p0, Lpb/h;->n:D

    .line 5
    iput-wide v2, p0, Lpb/h;->o:D

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    .line 7
    iput-wide p1, p0, Lpb/h;->l:D

    .line 8
    iput-wide p3, p0, Lpb/h;->m:D

    goto :goto_0

    .line 9
    :cond_0
    iput-wide p3, p0, Lpb/h;->l:D

    .line 10
    iput-wide p1, p0, Lpb/h;->m:D

    :goto_0
    cmpg-double p1, p5, p7

    if-gez p1, :cond_1

    .line 11
    iput-wide p5, p0, Lpb/h;->n:D

    .line 12
    iput-wide p7, p0, Lpb/h;->o:D

    return-void

    .line 13
    :cond_1
    iput-wide p7, p0, Lpb/h;->n:D

    .line 14
    iput-wide p5, p0, Lpb/h;->o:D

    return-void
.end method

.method public constructor <init>(Lpb/h;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget-wide v0, p1, Lpb/h;->l:D

    iput-wide v0, p0, Lpb/h;->l:D

    .line 17
    iget-wide v0, p1, Lpb/h;->m:D

    iput-wide v0, p0, Lpb/h;->m:D

    .line 18
    iget-wide v0, p1, Lpb/h;->n:D

    iput-wide v0, p0, Lpb/h;->n:D

    .line 19
    iget-wide v0, p1, Lpb/h;->o:D

    iput-wide v0, p0, Lpb/h;->o:D

    return-void
.end method

.method public static e(Lpb/a;Lpb/a;Lpb/a;)Z
    .locals 8

    iget-wide v0, p2, Lpb/a;->l:D

    iget-wide v2, p0, Lpb/a;->l:D

    iget-wide v4, p1, Lpb/a;->l:D

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    move-wide v6, v2

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    cmpl-double v6, v0, v6

    if-ltz v6, :cond_4

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide v2, v4

    :goto_1
    cmpg-double v0, v0, v2

    if-gtz v0, :cond_4

    iget-wide v0, p2, Lpb/a;->m:D

    iget-wide v2, p0, Lpb/a;->m:D

    iget-wide p0, p1, Lpb/a;->m:D

    cmpg-double p2, v2, p0

    if-gez p2, :cond_2

    move-wide v4, v2

    goto :goto_2

    :cond_2
    move-wide v4, p0

    :goto_2
    cmpl-double p2, v0, v4

    if-ltz p2, :cond_4

    cmpl-double p2, v2, p0

    if-lez p2, :cond_3

    goto :goto_3

    :cond_3
    move-wide v2, p0

    :goto_3
    cmpg-double p0, v0, v2

    if-gtz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Lpb/a;Lpb/a;Lpb/a;Lpb/a;)Z
    .locals 10

    iget-wide v0, p2, Lpb/a;->l:D

    iget-wide v2, p3, Lpb/a;->l:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-wide v2, p2, Lpb/a;->l:D

    iget-wide v4, p3, Lpb/a;->l:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lpb/a;->l:D

    iget-wide v6, p1, Lpb/a;->l:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iget-wide v6, p0, Lpb/a;->l:D

    iget-wide v8, p1, Lpb/a;->l:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    cmpl-double v2, v4, v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    return v3

    :cond_0
    cmpg-double v0, v6, v0

    if-gez v0, :cond_1

    return v3

    :cond_1
    iget-wide v0, p2, Lpb/a;->m:D

    iget-wide v4, p3, Lpb/a;->m:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-wide v4, p2, Lpb/a;->m:D

    iget-wide p2, p3, Lpb/a;->m:D

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    iget-wide v4, p0, Lpb/a;->m:D

    iget-wide v6, p1, Lpb/a;->m:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iget-wide v6, p0, Lpb/a;->m:D

    iget-wide p0, p1, Lpb/a;->m:D

    invoke-static {v6, v7, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    cmpl-double p2, v4, p2

    if-lez p2, :cond_2

    return v3

    :cond_2
    cmpg-double p0, p0, v0

    if-gez p0, :cond_3

    return v3

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lpb/h;)Z
    .locals 6

    invoke-virtual {p0}, Lpb/h;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lpb/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p1, Lpb/h;->l:D

    iget-wide v4, p0, Lpb/h;->l:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_1

    iget-wide v2, p1, Lpb/h;->m:D

    iget-wide v4, p0, Lpb/h;->m:D

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_1

    iget-wide v2, p1, Lpb/h;->n:D

    iget-wide v4, p0, Lpb/h;->n:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_1

    iget-wide v2, p1, Lpb/h;->o:D

    iget-wide p0, p0, Lpb/h;->o:D

    cmpg-double p0, v2, p0

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final b(DD)V
    .locals 2

    invoke-virtual {p0}, Lpb/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lpb/h;->l:D

    iput-wide p1, p0, Lpb/h;->m:D

    iput-wide p3, p0, Lpb/h;->n:D

    iput-wide p3, p0, Lpb/h;->o:D

    return-void

    :cond_0
    iget-wide v0, p0, Lpb/h;->l:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    iput-wide p1, p0, Lpb/h;->l:D

    :cond_1
    iget-wide v0, p0, Lpb/h;->m:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_2

    iput-wide p1, p0, Lpb/h;->m:D

    :cond_2
    iget-wide p1, p0, Lpb/h;->n:D

    cmpg-double p1, p3, p1

    if-gez p1, :cond_3

    iput-wide p3, p0, Lpb/h;->n:D

    :cond_3
    iget-wide p1, p0, Lpb/h;->o:D

    cmpl-double p1, p3, p1

    if-lez p1, :cond_4

    iput-wide p3, p0, Lpb/h;->o:D

    :cond_4
    return-void
.end method

.method public final c(Lpb/h;)V
    .locals 4

    invoke-virtual {p1}, Lpb/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpb/h;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lpb/h;->l:D

    iput-wide v0, p0, Lpb/h;->l:D

    iget-wide v0, p1, Lpb/h;->m:D

    iput-wide v0, p0, Lpb/h;->m:D

    iget-wide v0, p1, Lpb/h;->n:D

    iput-wide v0, p0, Lpb/h;->n:D

    iget-wide v0, p1, Lpb/h;->o:D

    iput-wide v0, p0, Lpb/h;->o:D

    return-void

    :cond_1
    iget-wide v0, p1, Lpb/h;->l:D

    iget-wide v2, p0, Lpb/h;->l:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    iput-wide v0, p0, Lpb/h;->l:D

    :cond_2
    iget-wide v0, p1, Lpb/h;->m:D

    iget-wide v2, p0, Lpb/h;->m:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_3

    iput-wide v0, p0, Lpb/h;->m:D

    :cond_3
    iget-wide v0, p1, Lpb/h;->n:D

    iget-wide v2, p0, Lpb/h;->n:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_4

    iput-wide v0, p0, Lpb/h;->n:D

    :cond_4
    iget-wide v0, p1, Lpb/h;->o:D

    iget-wide v2, p0, Lpb/h;->o:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_5

    iput-wide v0, p0, Lpb/h;->o:D

    :cond_5
    :goto_0
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 8

    check-cast p1, Lpb/h;

    invoke-virtual {p0}, Lpb/h;->i()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lpb/h;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lpb/h;->i()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    return v3

    :cond_2
    iget-wide v4, p0, Lpb/h;->l:D

    iget-wide v6, p1, Lpb/h;->l:D

    cmpg-double v0, v4, v6

    if-gez v0, :cond_3

    return v2

    :cond_3
    cmpl-double v0, v4, v6

    if-lez v0, :cond_4

    return v3

    :cond_4
    iget-wide v4, p0, Lpb/h;->n:D

    iget-wide v6, p1, Lpb/h;->n:D

    cmpg-double v0, v4, v6

    if-gez v0, :cond_5

    return v2

    :cond_5
    cmpl-double v0, v4, v6

    if-lez v0, :cond_6

    return v3

    :cond_6
    iget-wide v4, p0, Lpb/h;->m:D

    iget-wide v6, p1, Lpb/h;->m:D

    cmpg-double v0, v4, v6

    if-gez v0, :cond_7

    return v2

    :cond_7
    cmpl-double v0, v4, v6

    if-lez v0, :cond_8

    return v3

    :cond_8
    iget-wide v4, p0, Lpb/h;->o:D

    iget-wide p0, p1, Lpb/h;->o:D

    cmpg-double v0, v4, p0

    if-gez v0, :cond_9

    return v2

    :cond_9
    cmpl-double p0, v4, p0

    if-lez p0, :cond_a

    return v3

    :cond_a
    return v1
.end method

.method public final d(Lpb/a;)Z
    .locals 6

    iget-wide v0, p1, Lpb/a;->l:D

    iget-wide v2, p1, Lpb/a;->m:D

    invoke-virtual {p0}, Lpb/h;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lpb/h;->m:D

    cmpl-double p1, v0, v4

    if-gtz p1, :cond_1

    iget-wide v4, p0, Lpb/h;->l:D

    cmpg-double p1, v0, v4

    if-ltz p1, :cond_1

    iget-wide v0, p0, Lpb/h;->o:D

    cmpl-double p1, v2, v0

    if-gtz p1, :cond_1

    iget-wide p0, p0, Lpb/h;->n:D

    cmpg-double p0, v2, p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lpb/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lpb/h;

    invoke-virtual {p0}, Lpb/h;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lpb/h;->i()Z

    move-result p0

    return p0

    :cond_1
    iget-wide v2, p0, Lpb/h;->m:D

    iget-wide v4, p1, Lpb/h;->m:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_2

    iget-wide v2, p0, Lpb/h;->o:D

    iget-wide v4, p1, Lpb/h;->o:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_2

    iget-wide v2, p0, Lpb/h;->l:D

    iget-wide v4, p1, Lpb/h;->l:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_2

    iget-wide v2, p0, Lpb/h;->n:D

    iget-wide p0, p1, Lpb/h;->n:D

    cmpl-double p0, v2, p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final h(Lpb/h;)Z
    .locals 6

    invoke-virtual {p0}, Lpb/h;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lpb/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p1, Lpb/h;->l:D

    iget-wide v4, p0, Lpb/h;->m:D

    cmpl-double v0, v2, v4

    if-gtz v0, :cond_1

    iget-wide v2, p1, Lpb/h;->m:D

    iget-wide v4, p0, Lpb/h;->l:D

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_1

    iget-wide v2, p1, Lpb/h;->n:D

    iget-wide v4, p0, Lpb/h;->o:D

    cmpl-double v0, v2, v4

    if-gtz v0, :cond_1

    iget-wide v2, p1, Lpb/h;->o:D

    iget-wide p0, p0, Lpb/h;->n:D

    cmpg-double p0, v2, p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lpb/h;->l:D

    invoke-static {v0, v1}, Lpb/a;->p(D)I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-wide v1, p0, Lpb/h;->m:D

    invoke-static {v1, v2}, Lpb/a;->p(D)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-wide v2, p0, Lpb/h;->n:D

    invoke-static {v2, v3}, Lpb/a;->p(D)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-wide v1, p0, Lpb/h;->o:D

    invoke-static {v1, v2}, Lpb/a;->p(D)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final i()Z
    .locals 4

    iget-wide v0, p0, Lpb/h;->m:D

    iget-wide v2, p0, Lpb/h;->l:D

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Env["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lpb/h;->l:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lpb/h;->m:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lpb/h;->n:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lpb/h;->o:D

    const-string p0, "]"

    invoke-static {v0, v1, v2, p0}, Lm/a;->m(Ljava/lang/StringBuilder;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
