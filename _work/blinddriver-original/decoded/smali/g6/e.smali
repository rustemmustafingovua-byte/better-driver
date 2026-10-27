.class public final Lg6/e;
.super Lg6/f1;
.source "SourceFile"

# interfaces
.implements Le6/k;


# instance fields
.field public final o:Lb6/l;

.field public final p:Le6/c0;

.field public final q:Ln6/d;

.field public final r:Lb6/n;


# direct methods
.method public constructor <init>(Lb6/l;Lb6/n;Le6/c0;Ln6/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lg6/f1;-><init>(Lb6/l;)V

    iput-object p3, p0, Lg6/e;->p:Le6/c0;

    iput-object p1, p0, Lg6/e;->o:Lb6/l;

    iput-object p2, p0, Lg6/e;->r:Lb6/n;

    iput-object p4, p0, Lg6/e;->q:Ln6/d;

    return-void
.end method


# virtual methods
.method public final U()Le6/c0;
    .locals 0

    iget-object p0, p0, Lg6/e;->p:Le6/c0;

    return-object p0
.end method

.method public final V()Lb6/l;
    .locals 0

    iget-object p0, p0, Lg6/e;->o:Lb6/l;

    return-object p0
.end method

.method public final Z(Lb6/i;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, Lg6/e;->r:Lb6/n;

    invoke-virtual {p0, p1}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 4

    iget-object v0, p0, Lg6/e;->r:Lb6/n;

    invoke-static {p1, p2, v0}, Lg6/f1;->S(Lb6/i;Lb6/f;Lb6/n;)Lb6/n;

    move-result-object v1

    iget-object v2, p0, Lg6/e;->o:Lb6/l;

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lb6/l;->U()Lb6/l;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lb6/l;->U()Lb6/l;

    move-result-object v3

    invoke-virtual {p1, v1, p2, v3}, Lb6/i;->e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lg6/e;->q:Ln6/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ln6/d;->f(Lb6/f;)Ln6/d;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    return-object p0

    :cond_2
    new-instance v0, Lg6/e;

    iget-object p0, p0, Lg6/e;->p:Le6/c0;

    invoke-direct {v0, v2, p1, p0, p2}, Lg6/e;-><init>(Lb6/l;Lb6/n;Le6/c0;Ln6/d;)V

    return-object v0
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lg6/e;->p:Le6/c0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lg6/e;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lg6/e;->r:Lb6/n;

    iget-object p0, p0, Lg6/e;->q:Ln6/d;

    if-nez p0, :cond_1

    .line 5
    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, p1, p2, p0}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    :goto_0
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 8
    iget-object v0, p2, Lb6/i;->q:Lb6/h;

    .line 9
    iget-object v1, p0, Lg6/e;->r:Lb6/n;

    invoke-virtual {v1, v0}, Lb6/n;->supportsUpdate(Lb6/h;)Ljava/lang/Boolean;

    move-result-object v0

    .line 10
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lg6/e;->q:Ln6/d;

    if-nez v0, :cond_3

    if-eqz p0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    move-object v0, p3

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    if-nez p0, :cond_1

    .line 13
    invoke-virtual {v1, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v1, p1, p2, p0}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    .line 15
    :goto_0
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 16
    :cond_2
    invoke-virtual {v1, p1, p2, v0}, Lb6/n;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_3
    :goto_1
    if-nez p0, :cond_4

    .line 17
    invoke-virtual {v1, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {v1, p1, p2, p0}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    .line 19
    :goto_2
    check-cast p3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    invoke-virtual {p3, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p3
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    sget-object p3, Ls5/n;->F:Ls5/n;

    invoke-virtual {p1, p3}, Ls5/k;->q0(Ls5/n;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2}, Lg6/e;->Z(Lb6/i;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p3, p0, Lg6/e;->q:Ln6/d;

    if-nez p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lg6/e;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p3, p1, p2}, Ln6/d;->b(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final getAbsentValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEmptyAccessPattern()Lu6/a;
    .locals 0

    sget-object p0, Lu6/a;->n:Lu6/a;

    return-object p0
.end method

.method public final getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lg6/e;->Z(Lb6/i;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    return-object p0
.end method

.method public final getNullAccessPattern()Lu6/a;
    .locals 0

    sget-object p0, Lu6/a;->n:Lu6/a;

    return-object p0
.end method

.method public final bridge getNullValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lg6/e;->Z(Lb6/i;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    return-object p0
.end method

.method public final logicalType()Lt6/f;
    .locals 1

    iget-object v0, p0, Lg6/e;->r:Lb6/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb6/n;->logicalType()Lt6/f;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lb6/n;->logicalType()Lt6/f;

    move-result-object p0

    return-object p0
.end method

.method public final supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
