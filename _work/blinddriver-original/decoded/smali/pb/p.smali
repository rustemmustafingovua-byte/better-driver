.class public final Lpb/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# instance fields
.field public final l:Lpb/a;

.field public final m:Lpb/a;


# direct methods
.method public constructor <init>(Lpb/a;Lpb/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpb/p;->l:Lpb/a;

    iput-object p2, p0, Lpb/p;->m:Lpb/a;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lpb/p;

    iget-object v0, p0, Lpb/p;->l:Lpb/a;

    iget-object v1, p1, Lpb/p;->l:Lpb/a;

    invoke-virtual {v0, v1}, Lpb/a;->a(Lpb/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lpb/p;->m:Lpb/a;

    iget-object p1, p1, Lpb/p;->m:Lpb/a;

    invoke-virtual {p0, p1}, Lpb/a;->a(Lpb/a;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lpb/p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lpb/p;

    iget-object v0, p0, Lpb/p;->l:Lpb/a;

    iget-object v2, p1, Lpb/p;->l:Lpb/a;

    invoke-virtual {v0, v2}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lpb/p;->m:Lpb/a;

    iget-object p1, p1, Lpb/p;->m:Lpb/a;

    invoke-virtual {p0, p1}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lpb/p;->l:Lpb/a;

    iget-wide v1, v0, Lpb/a;->l:D

    const/16 v3, 0x1ed

    const/16 v4, 0x1d

    invoke-static {v3, v1, v2, v4}, Lm/a;->d(IDI)I

    move-result v1

    iget-wide v2, v0, Lpb/a;->m:D

    invoke-static {v1, v2, v3, v4}, Lm/a;->d(IDI)I

    move-result v0

    iget-object p0, p0, Lpb/p;->m:Lpb/a;

    iget-wide v1, p0, Lpb/a;->l:D

    invoke-static {v0, v1, v2, v4}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v1, p0, Lpb/a;->m:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LINESTRING ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lpb/p;->l:Lpb/a;

    iget-wide v2, v1, Lpb/a;->l:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lpb/a;->m:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lpb/p;->m:Lpb/a;

    iget-wide v3, p0, Lpb/a;->l:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lpb/a;->m:D

    const-string p0, ")"

    invoke-static {v0, v1, v2, p0}, Lm/a;->m(Ljava/lang/StringBuilder;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
