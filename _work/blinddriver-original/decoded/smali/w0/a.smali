.class public final Lw0/a;
.super Lk/t;
.source "SourceFile"

# interfaces
.implements Lk9/c;


# instance fields
.field public final o:Lr1/f0;

.field public p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lr1/f0;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p3}, Lk/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lw0/a;->o:Lr1/f0;

    iput-object p3, p0, Lw0/a;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lw0/a;->p:Ljava/lang/Object;

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lw0/a;->p:Ljava/lang/Object;

    iput-object p1, p0, Lw0/a;->p:Ljava/lang/Object;

    iget-object v1, p0, Lw0/a;->o:Lr1/f0;

    iget-object v1, v1, Lr1/f0;->m:Ljava/util/Iterator;

    check-cast v1, Lw0/e;

    iget-object v2, v1, Lw0/e;->o:Lw0/d;

    iget-object p0, p0, Lk/t;->m:Ljava/lang/Object;

    invoke-virtual {v2, p0}, Lw0/d;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    iget-boolean v3, v1, Lw0/c;->n:Z

    if-eqz v3, :cond_3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lw0/c;->l:[Lw0/k;

    iget v4, v1, Lw0/c;->m:I

    aget-object v3, v3, v4

    iget-object v4, v3, Lw0/k;->l:[Ljava/lang/Object;

    iget v3, v3, Lw0/k;->n:I

    aget-object v3, v4, v3

    invoke-virtual {v2, p0, p1}, Lw0/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p0

    :goto_0
    iget-object v4, v2, Lw0/d;->n:Lw0/j;

    invoke-virtual {v1, p1, v4, v3, p0}, Lw0/e;->c(ILw0/j;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_3
    invoke-virtual {v2, p0, p1}, Lw0/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget p0, v2, Lw0/d;->p:I

    iput p0, v1, Lw0/e;->r:I

    return-object v0
.end method
