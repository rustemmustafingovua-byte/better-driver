.class public final Ldd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D

.field public final d:I

.field public final e:Z

.field public final f:Ldd/j;


# direct methods
.method public constructor <init>(DDDIZLdd/j;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p9, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ldd/c;->a:D

    iput-wide p3, p0, Ldd/c;->b:D

    iput-wide p5, p0, Ldd/c;->c:D

    iput p7, p0, Ldd/c;->d:I

    iput-boolean p8, p0, Ldd/c;->e:Z

    iput-object p9, p0, Ldd/c;->f:Ldd/j;

    return-void
.end method

.method public static a(Ldd/c;DI)Ldd/c;
    .locals 11

    sget-object v0, Ldd/j;->l:Ldd/j;

    iget-wide v2, p0, Ldd/c;->a:D

    iget-wide v4, p0, Ldd/c;->b:D

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_0

    iget-wide p1, p0, Ldd/c;->c:D

    :cond_0
    move-wide v6, p1

    iget v8, p0, Ldd/c;->d:I

    and-int/lit8 p1, p3, 0x10

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Ldd/c;->e:Z

    :goto_0
    move v9, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :goto_1
    and-int/lit8 p1, p3, 0x20

    if-eqz p1, :cond_2

    iget-object v0, p0, Ldd/c;->f:Ldd/j;

    :cond_2
    move-object v10, v0

    const-string p0, "source"

    invoke-static {v10, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ldd/c;

    invoke-direct/range {v1 .. v10}, Ldd/c;-><init>(DDDIZLdd/j;)V

    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ldd/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ldd/c;

    iget-wide v3, p0, Ldd/c;->a:D

    iget-wide v5, p1, Ldd/c;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Ldd/c;->b:D

    iget-wide v5, p1, Ldd/c;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Ldd/c;->c:D

    iget-wide v5, p1, Ldd/c;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Ldd/c;->d:I

    iget v3, p1, Ldd/c;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Ldd/c;->e:Z

    iget-boolean v3, p1, Ldd/c;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Ldd/c;->f:Ldd/j;

    iget-object p1, p1, Ldd/c;->f:Ldd/j;

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Ldd/c;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Ldd/c;->b:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Ldd/c;->c:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget v2, p0, Ldd/c;->d:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-boolean v2, p0, Ldd/c;->e:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object p0, p0, Ldd/c;->f:Ldd/j;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, "CellArea(lat="

    const-string v1, ", lon="

    iget-wide v2, p0, Ldd/c;->a:D

    invoke-static {v2, v3, v0, v1}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ldd/c;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", radiusKm="

    const-string v2, ", cells="

    iget-wide v3, p0, Ldd/c;->c:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget v1, p0, Ldd/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exactRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ldd/c;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ldd/c;->f:Ldd/j;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
