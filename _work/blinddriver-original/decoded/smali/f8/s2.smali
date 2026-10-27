.class public final Lf8/s2;
.super Lf8/x2;
.source "SourceFile"

# interfaces
.implements Lf8/b4;


# instance fields
.field public final l:Lf8/f0;

.field public final m:Ljava/lang/String;

.field public final n:Lf8/w2;


# direct methods
.method public constructor <init>(Lf8/f0;Lf8/w2;Lf8/r2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf8/s2;->l:Lf8/f0;

    .line 3
    iput-object p2, p0, Lf8/s2;->n:Lf8/w2;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object v1, p3, Lf8/r2;->m:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lf8/f0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf8/s2;->m:Ljava/lang/String;

    .line 7
    iget-object p2, p2, Lf8/w2;->r:Lf8/p2;

    .line 8
    invoke-virtual {p2, p0}, Lf8/p2;->b(Lf8/x2;)V

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v0, Lf8/n2;

    .line 11
    iget p1, p1, Lf8/f0;->p:I

    .line 12
    invoke-direct {v0, p3, p1}, Lf8/n2;-><init>(Lf8/x2;I)V

    .line 13
    iget-object p1, p2, Lf8/p2;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf8/s2;

    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lf8/w2;Lf8/r2;Ljava/lang/Integer;)V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN_ENUM_VALUE_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v1, p2, Lf8/r2;->l:Lf8/z;

    .line 18
    invoke-virtual {v1}, Lf8/z;->v()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    sget-object v1, Lf8/f0;->s:Lf8/f0;

    invoke-virtual {v1}, Lf8/f0;->y()Lf8/e0;

    move-result-object v1

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iget v2, v1, Lf8/e0;->n:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lf8/e0;->n:I

    .line 23
    iput-object v0, v1, Lf8/e0;->o:Ljava/io/Serializable;

    .line 24
    invoke-virtual {v1}, Lf8/l3;->O()V

    .line 25
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 26
    iget v0, v1, Lf8/e0;->n:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Lf8/e0;->n:I

    .line 27
    iput p3, v1, Lf8/e0;->p:I

    .line 28
    invoke-virtual {v1}, Lf8/l3;->O()V

    .line 29
    invoke-virtual {v1}, Lf8/e0;->R()Lf8/f0;

    move-result-object p3

    .line 30
    invoke-virtual {p3}, Lf8/f0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iput-object p3, p0, Lf8/s2;->l:Lf8/f0;

    .line 32
    iput-object p1, p0, Lf8/s2;->n:Lf8/w2;

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    iget-object p2, p2, Lf8/r2;->m:Ljava/lang/String;

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lf8/f0;->v()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf8/s2;->m:Ljava/lang/String;

    return-void

    .line 36
    :cond_0
    invoke-static {p3}, Lf8/a;->D(Lf8/c;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lf8/s2;->l:Lf8/f0;

    iget p0, p0, Lf8/f0;->p:I

    return p0
.end method

.method public final b()Lf8/w2;
    .locals 0

    iget-object p0, p0, Lf8/s2;->n:Lf8/w2;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/s2;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/s2;->l:Lf8/f0;

    invoke-virtual {p0}, Lf8/f0;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lf8/c;
    .locals 0

    iget-object p0, p0, Lf8/s2;->l:Lf8/f0;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/s2;->l:Lf8/f0;

    invoke-virtual {p0}, Lf8/f0;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
