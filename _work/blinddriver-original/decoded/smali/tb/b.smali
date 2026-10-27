.class public Ltb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final l:Ltb/a;

.field public m:Lq3/k;

.field public final n:Lpb/a;

.field public final o:Lpb/a;

.field public final p:D

.field public final q:D

.field public final r:I


# direct methods
.method public constructor <init>(Ltb/a;Lpb/a;Lpb/a;Lq3/k;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltb/b;->l:Ltb/a;

    iput-object p2, p0, Ltb/b;->n:Lpb/a;

    iput-object p3, p0, Ltb/b;->o:Lpb/a;

    iget-wide v0, p3, Lpb/a;->l:D

    iget-wide v2, p2, Lpb/a;->l:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ltb/b;->p:D

    iget-wide v2, p3, Lpb/a;->m:D

    iget-wide p1, p2, Lpb/a;->m:D

    sub-double/2addr v2, p1

    iput-wide v2, p0, Ltb/b;->q:D

    invoke-static {v0, v1, v2, v3}, Lpb/b;->a(DD)I

    move-result p1

    iput p1, p0, Ltb/b;->r:I

    iget-wide p1, p0, Ltb/b;->p:D

    const-wide/16 v0, 0x0

    cmpl-double p1, p1, v0

    if-nez p1, :cond_1

    iget-wide p1, p0, Ltb/b;->q:D

    cmpl-double p1, p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string p2, "EdgeEnd with identical endpoints found"

    invoke-static {p2, p1}, Ly4/s;->w(Ljava/lang/String;Z)V

    iput-object p4, p0, Ltb/b;->m:Lq3/k;

    return-void
.end method


# virtual methods
.method public a(Lnb/a;)V
    .locals 0

    return-void
.end method

.method public b()Lq3/k;
    .locals 0

    iget-object p0, p0, Ltb/b;->m:Lq3/k;

    return-object p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Ltb/b;

    iget-wide v0, p0, Ltb/b;->p:D

    iget-wide v2, p1, Ltb/b;->p:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Ltb/b;->q:D

    iget-wide v2, p1, Ltb/b;->q:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p1, Ltb/b;->r:I

    iget v1, p0, Ltb/b;->r:I

    if-le v1, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-ge v1, v0, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    iget-object v0, p1, Ltb/b;->n:Lpb/a;

    iget-object p1, p1, Ltb/b;->o:Lpb/a;

    iget-object p0, p0, Ltb/b;->o:Lpb/a;

    invoke-static {v0, p1, p0}, Lb6/g;->v(Lpb/a;Lpb/a;Lpb/a;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Ltb/b;->q:D

    iget-wide v2, p0, Ltb/b;->p:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "  "

    const-string v4, ": "

    invoke-static {v3, v2, v4}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltb/b;->n:Lpb/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltb/b;->o:Lpb/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ltb/b;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "   "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ltb/b;->m:Lq3/k;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
