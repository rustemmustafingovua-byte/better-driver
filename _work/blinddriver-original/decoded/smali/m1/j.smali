.class public final Lm1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/BlendModeColorFilter;

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 3

    new-instance v0, Landroid/graphics/BlendModeColorFilter;

    invoke-static {p2, p3}, Lm1/v;->y(J)I

    move-result v1

    invoke-static {p1}, Lm1/v;->v(I)Landroid/graphics/BlendMode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lm1/j;->a:Landroid/graphics/BlendModeColorFilter;

    iput-wide p2, p0, Lm1/j;->b:J

    iput p1, p0, Lm1/j;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lm1/j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lm1/j;

    iget-wide v3, p1, Lm1/j;->b:J

    iget-wide v5, p0, Lm1/j;->b:J

    invoke-static {v5, v6, v3, v4}, Lm1/p;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lm1/j;->c:I

    iget p1, p1, Lm1/j;->c:I

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 2

    sget v0, Lm1/p;->h:I

    iget-wide v0, p0, Lm1/j;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lm1/j;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlendModeColorFilter(color="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lm1/j;->b:J

    const-string v3, ", blendMode="

    invoke-static {v1, v2, v3, v0}, Lm/a;->s(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget p0, p0, Lm1/j;->c:I

    invoke-static {p0}, Lm1/v;->C(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
