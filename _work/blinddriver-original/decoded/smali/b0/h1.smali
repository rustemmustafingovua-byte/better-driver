.class public final Lb0/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/a0;


# instance fields
.field public final a:Lb0/v2;

.field public final b:I

.field public final c:Lu2/b0;

.field public final d:Li9/a;


# direct methods
.method public constructor <init>(Lb0/v2;ILu2/b0;Li9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/h1;->a:Lb0/v2;

    iput p2, p0, Lb0/h1;->b:I

    iput-object p3, p0, Lb0/h1;->c:Lu2/b0;

    iput-object p4, p0, Lb0/h1;->d:Li9/a;

    return-void
.end method


# virtual methods
.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 9

    invoke-static {p3, p4}, Lb3/a;->g(J)I

    move-result v0

    invoke-interface {p2, v0}, Lc2/q0;->z(I)I

    move-result v0

    invoke-static {p3, p4}, Lb3/a;->h(J)I

    move-result v1

    if-ge v0, v1, :cond_0

    move-wide v2, p3

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const/4 v6, 0x0

    move-wide v2, p3

    invoke-static/range {v2 .. v8}, Lb3/a;->a(JIIIII)J

    move-result-wide p3

    :goto_0
    invoke-interface {p2, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v5

    iget p2, v5, Lc2/f1;->l:I

    invoke-static {v2, v3}, Lb3/a;->h(J)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget p2, v5, Lc2/f1;->m:I

    new-instance v0, Lb0/g1;

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lb0/g1;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {v4, v1, p2, p0, v0}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lb0/h1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lb0/h1;

    iget-object v1, p0, Lb0/h1;->a:Lb0/v2;

    iget-object v3, p1, Lb0/h1;->a:Lb0/v2;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lb0/h1;->b:I

    iget v3, p1, Lb0/h1;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lb0/h1;->c:Lu2/b0;

    iget-object v3, p1, Lb0/h1;->c:Lu2/b0;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lb0/h1;->d:Li9/a;

    iget-object p1, p1, Lb0/h1;->d:Li9/a;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lb0/h1;->a:Lb0/v2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lb0/h1;->b:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-object v2, p0, Lb0/h1;->c:Lu2/b0;

    invoke-virtual {v2}, Lu2/b0;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lb0/h1;->d:Li9/a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HorizontalScrollLayoutModifier(scrollerPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb0/h1;->a:Lb0/v2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cursorOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb0/h1;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transformedText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb0/h1;->c:Lu2/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textLayoutResultProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb0/h1;->d:Li9/a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
