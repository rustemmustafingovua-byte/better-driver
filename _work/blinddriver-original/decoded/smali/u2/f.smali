.class public final Lu2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/g;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu2/f;->a:I

    iput p2, p0, Lu2/f;->b:I

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " respectively."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv2/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lu2/h;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lu2/f;->a:I

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    iget v4, p1, Lu2/h;->b:I

    if-le v4, v3, :cond_1

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Lu2/h;->b(I)C

    move-result v4

    iget v5, p1, Lu2/h;->b:I

    sub-int/2addr v5, v3

    invoke-virtual {p1, v5}, Lu2/h;->b(I)C

    move-result v5

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :cond_2
    move v1, v0

    :goto_2
    iget v3, p0, Lu2/f;->b:I

    if-ge v0, v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    iget v4, p1, Lu2/h;->c:I

    iget-object v5, p1, Lu2/h;->a:Lr2/c;

    add-int/2addr v4, v3

    invoke-virtual {v5}, Lr2/c;->b()I

    move-result v6

    if-ge v4, v6, :cond_4

    iget v4, p1, Lu2/h;->c:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Lu2/h;->b(I)C

    move-result v4

    iget v5, p1, Lu2/h;->c:I

    add-int/2addr v5, v3

    invoke-virtual {p1, v5}, Lu2/h;->b(I)C

    move-result v5

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lr2/c;->b()I

    move-result p0

    iget v0, p1, Lu2/h;->c:I

    sub-int v1, p0, v0

    :cond_5
    iget p0, p1, Lu2/h;->c:I

    add-int/2addr v1, p0

    invoke-virtual {p1, p0, v1}, Lu2/h;->a(II)V

    iget p0, p1, Lu2/h;->b:I

    sub-int v0, p0, v2

    invoke-virtual {p1, v0, p0}, Lu2/h;->a(II)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lu2/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lu2/f;

    iget v1, p1, Lu2/f;->a:I

    iget v3, p0, Lu2/f;->a:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lu2/f;->b:I

    iget p1, p1, Lu2/f;->b:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lu2/f;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lu2/f;->b:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeleteSurroundingTextInCodePointsCommand(lengthBeforeCursor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lu2/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lengthAfterCursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lu2/f;->b:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lr0/i;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
