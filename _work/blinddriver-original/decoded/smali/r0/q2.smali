.class public final Lr0/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/d;
.implements Ljava/lang/Iterable;
.implements Lk9/a;


# instance fields
.field public final l:Lr0/e2;

.field public final m:I

.field public final n:Lr0/w1;


# direct methods
.method public constructor <init>(Lr0/e2;ILr0/l0;Lr0/w1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/q2;->l:Lr0/e2;

    iput p2, p0, Lr0/q2;->m:I

    iput-object p4, p0, Lr0/q2;->n:Lr0/w1;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lr0/q2;

    if-eqz v0, :cond_0

    check-cast p1, Lr0/q2;

    iget v0, p1, Lr0/q2;->m:I

    iget v1, p0, Lr0/q2;->m:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lr0/q2;->l:Lr0/e2;

    iget-object v1, p0, Lr0/q2;->l:Lr0/e2;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lr0/q2;->n:Lr0/w1;

    iget-object p0, p0, Lr0/q2;->n:Lr0/w1;

    invoke-virtual {p1, p0}, Lr0/w1;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lr0/q2;->m:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr0/q2;->l:Lr0/e2;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lr0/q2;->n:Lr0/w1;

    invoke-virtual {p0}, Lr0/w1;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 4

    new-instance v0, Lr0/p2;

    const/4 v1, 0x0

    iget-object v2, p0, Lr0/q2;->n:Lr0/w1;

    iget-object v3, p0, Lr0/q2;->l:Lr0/e2;

    iget p0, p0, Lr0/q2;->m:I

    invoke-direct {v0, v3, p0, v1, v2}, Lr0/p2;-><init>(Lr0/e2;ILr0/l0;Lr0/r;)V

    return-object v0
.end method
