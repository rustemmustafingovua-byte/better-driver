.class public final Lpb/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final l:Lpb/j;

.field public m:Z

.field public final n:I

.field public o:I

.field public p:Lpb/k;


# direct methods
.method public constructor <init>(Lpb/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpb/k;->l:Lpb/j;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpb/k;->m:Z

    const/4 v0, 0x0

    iput v0, p0, Lpb/k;->o:I

    iget-object p1, p1, Lpb/j;->o:[Lpb/i;

    array-length p1, p1

    iput p1, p0, Lpb/k;->n:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lpb/k;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpb/k;->p:Lpb/k;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lpb/k;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lpb/k;->p:Lpb/k;

    :cond_2
    iget v0, p0, Lpb/k;->o:I

    iget p0, p0, Lpb/k;->n:I

    if-lt v0, p0, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lpb/k;->m:Z

    iget-object v1, p0, Lpb/k;->l:Lpb/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpb/k;->m:Z

    return-object v1

    :cond_0
    iget-object v0, p0, Lpb/k;->p:Lpb/k;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lpb/k;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lpb/k;->p:Lpb/k;

    invoke-virtual {p0}, Lpb/k;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lpb/k;->p:Lpb/k;

    :cond_2
    iget v0, p0, Lpb/k;->o:I

    iget v2, p0, Lpb/k;->n:I

    if-ge v0, v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lpb/k;->o:I

    iget-object v1, v1, Lpb/j;->o:[Lpb/i;

    aget-object v0, v1, v0

    instance-of v1, v0, Lpb/j;

    if-eqz v1, :cond_3

    new-instance v1, Lpb/k;

    check-cast v0, Lpb/j;

    invoke-direct {v1, v0}, Lpb/k;-><init>(Lpb/j;)V

    iput-object v1, p0, Lpb/k;->p:Lpb/k;

    invoke-virtual {v1}, Lpb/k;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-class v0, Lpb/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
