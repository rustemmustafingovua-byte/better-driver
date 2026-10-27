.class public final Lr0/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/d;
.implements Ljava/lang/Iterable;
.implements Lk9/a;


# instance fields
.field public final l:Lr0/e2;

.field public final m:I

.field public final n:I


# direct methods
.method public constructor <init>(Lr0/e2;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/f2;->l:Lr0/e2;

    iput p2, p0, Lr0/f2;->m:I

    iput p3, p0, Lr0/f2;->n:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lr0/f2;

    if-eqz v0, :cond_0

    check-cast p1, Lr0/f2;

    iget v0, p1, Lr0/f2;->m:I

    iget v1, p0, Lr0/f2;->m:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lr0/f2;->n:I

    iget v1, p0, Lr0/f2;->n:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lr0/f2;->l:Lr0/e2;

    iget-object p0, p0, Lr0/f2;->l:Lr0/e2;

    invoke-static {p1, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lr0/f2;->l:Lr0/e2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lr0/f2;->m:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 5

    iget-object v0, p0, Lr0/f2;->l:Lr0/e2;

    iget v1, v0, Lr0/e2;->s:I

    iget v2, p0, Lr0/f2;->n:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lr0/g2;->f()V

    :cond_0
    iget p0, p0, Lr0/f2;->m:I

    invoke-virtual {v0, p0}, Lr0/e2;->g(I)Lr0/l0;

    new-instance v1, Lr0/k0;

    add-int/lit8 v2, p0, 0x1

    iget-object v3, v0, Lr0/e2;->l:[I

    mul-int/lit8 v4, p0, 0x5

    add-int/lit8 v4, v4, 0x3

    aget v3, v3, v4

    add-int/2addr v3, p0

    invoke-direct {v1, v0, v2, v3}, Lr0/k0;-><init>(Lr0/e2;II)V

    return-object v1
.end method
