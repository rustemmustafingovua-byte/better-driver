.class public final Lu2/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/g;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu2/w;->a:I

    iput p2, p0, Lu2/w;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lu2/h;)V
    .locals 3

    iget-object v0, p1, Lu2/h;->a:Lr2/c;

    invoke-virtual {v0}, Lr2/c;->b()I

    move-result v0

    iget v1, p0, Lu2/w;->a:I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lg6/c1;->f(III)I

    move-result v0

    iget-object v1, p1, Lu2/h;->a:Lr2/c;

    invoke-virtual {v1}, Lr2/c;->b()I

    move-result v1

    iget p0, p0, Lu2/w;->b:I

    invoke-static {p0, v2, v1}, Lg6/c1;->f(III)I

    move-result p0

    if-ge v0, p0, :cond_0

    invoke-virtual {p1, v0, p0}, Lu2/h;->f(II)V

    return-void

    :cond_0
    invoke-virtual {p1, p0, v0}, Lu2/h;->f(II)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lu2/w;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lu2/w;

    iget v1, p1, Lu2/w;->a:I

    iget v3, p0, Lu2/w;->a:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lu2/w;->b:I

    iget p1, p1, Lu2/w;->b:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lu2/w;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lu2/w;->b:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetSelectionCommand(start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lu2/w;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lu2/w;->b:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lr0/i;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
