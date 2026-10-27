.class public final Lcc/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/e;


# instance fields
.field public final l:Lnb/d;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lnb/d;

    invoke-direct {v0}, Lnb/d;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcc/d;->m:Z

    iput-boolean v1, p0, Lcc/d;->n:Z

    iput-boolean v1, p0, Lcc/d;->o:Z

    iput-boolean v1, p0, Lcc/d;->p:Z

    iput-object v0, p0, Lcc/d;->l:Lnb/d;

    return-void
.end method


# virtual methods
.method public final d(Lcc/f;ILcc/f;I)V
    .locals 2

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lcc/f;->b(I)Lpb/a;

    move-result-object v0

    const/4 v1, 0x1

    add-int/2addr p2, v1

    invoke-interface {p1, p2}, Lcc/f;->b(I)Lpb/a;

    move-result-object p1

    invoke-interface {p3, p4}, Lcc/f;->b(I)Lpb/a;

    move-result-object p2

    add-int/2addr p4, v1

    invoke-interface {p3, p4}, Lcc/f;->b(I)Lpb/a;

    move-result-object p3

    iget-object p4, p0, Lcc/d;->l:Lnb/d;

    invoke-virtual {p4, v0, p1, p2, p3}, Lnb/d;->a(Lpb/a;Lpb/a;Lpb/a;Lpb/a;)V

    invoke-virtual {p4}, Lnb/d;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lcc/d;->n:Z

    invoke-virtual {p4}, Lnb/d;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcc/d;->o:Z

    :cond_1
    if-nez p1, :cond_2

    iput-boolean v1, p0, Lcc/d;->p:Z

    :cond_2
    iget-object p0, p4, Lnb/d;->c:[Lpb/a;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    :cond_3
    :goto_0
    return-void
.end method

.method public final isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcc/d;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcc/d;->o:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcc/d;->p:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-boolean p0, p0, Lcc/d;->n:Z

    return p0
.end method
