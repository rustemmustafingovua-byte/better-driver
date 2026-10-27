.class public final Lad/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lua/nav/routing/GeoPoint;

.field public final b:Ljava/lang/Double;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:D


# direct methods
.method public constructor <init>(Lua/nav/routing/GeoPoint;Ljava/lang/Double;Ljava/lang/String;ID)V
    .locals 1

    const-string v0, "headingSrc"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad/n1;->a:Lua/nav/routing/GeoPoint;

    iput-object p2, p0, Lad/n1;->b:Ljava/lang/Double;

    iput-object p3, p0, Lad/n1;->c:Ljava/lang/String;

    iput p4, p0, Lad/n1;->d:I

    iput-wide p5, p0, Lad/n1;->e:D

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lad/n1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lad/n1;

    iget-object v1, p0, Lad/n1;->a:Lua/nav/routing/GeoPoint;

    iget-object v3, p1, Lad/n1;->a:Lua/nav/routing/GeoPoint;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lad/n1;->b:Ljava/lang/Double;

    iget-object v3, p1, Lad/n1;->b:Ljava/lang/Double;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lad/n1;->c:Ljava/lang/String;

    iget-object v3, p1, Lad/n1;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lad/n1;->d:I

    iget v3, p1, Lad/n1;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lad/n1;->e:D

    iget-wide p0, p1, Lad/n1;->e:D

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lad/n1;->a:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lad/n1;->b:Ljava/lang/Double;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lad/n1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lad/n1;->d:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-wide v1, p0, Lad/n1;->e:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start(point="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lad/n1;->a:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headingDeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lad/n1;->b:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headingSrc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lad/n1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", points="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lad/n1;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shiftM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-wide v2, p0, Lad/n1;->e:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->m(Ljava/lang/StringBuilder;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
