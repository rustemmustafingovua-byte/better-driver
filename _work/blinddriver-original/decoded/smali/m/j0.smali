.class public final Lm/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm/c0;

.field public final b:Lm/o;

.field public final c:Lm/g0;

.field public final d:Z

.field public final e:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lm/c0;Lm/o;Lm/g0;Ljava/util/LinkedHashMap;I)V
    .locals 2

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_2

    move-object p3, v1

    :cond_2
    and-int/lit8 v0, p5, 0x20

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_0
    and-int/lit8 p5, p5, 0x40

    if-eqz p5, :cond_4

    .line 7
    sget-object p4, Lu8/s;->l:Lu8/s;

    :cond_4
    move-object p5, p4

    move p4, v0

    .line 8
    invoke-direct/range {p0 .. p5}, Lm/j0;-><init>(Lm/c0;Lm/o;Lm/g0;ZLjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lm/c0;Lm/o;Lm/g0;ZLjava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm/j0;->a:Lm/c0;

    .line 3
    iput-object p2, p0, Lm/j0;->b:Lm/o;

    .line 4
    iput-object p3, p0, Lm/j0;->c:Lm/g0;

    .line 5
    iput-boolean p4, p0, Lm/j0;->d:Z

    .line 6
    iput-object p5, p0, Lm/j0;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lm/j0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lm/j0;

    iget-object v1, p0, Lm/j0;->a:Lm/c0;

    iget-object v3, p1, Lm/j0;->a:Lm/c0;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lm/j0;->b:Lm/o;

    iget-object v3, p1, Lm/j0;->b:Lm/o;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lm/j0;->c:Lm/g0;

    iget-object v3, p1, Lm/j0;->c:Lm/g0;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lm/j0;->d:Z

    iget-boolean v3, p1, Lm/j0;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lm/j0;->e:Ljava/util/Map;

    iget-object p1, p1, Lm/j0;->e:Ljava/util/Map;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lm/j0;->a:Lm/c0;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lm/c0;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit16 v1, v1, 0x3c1

    iget-object v2, p0, Lm/j0;->b:Lm/o;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lm/o;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lm/j0;->c:Lm/g0;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lm/g0;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3c1

    iget-boolean v0, p0, Lm/j0;->d:Z

    invoke-static {v1, v2, v0}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object p0, p0, Lm/j0;->e:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TransitionData(fade="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lm/j0;->a:Lm/c0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", slide=null, changeSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm/j0;->b:Lm/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm/j0;->c:Lm/g0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", veil=null, hold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lm/j0;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", effectsMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lm/j0;->e:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
