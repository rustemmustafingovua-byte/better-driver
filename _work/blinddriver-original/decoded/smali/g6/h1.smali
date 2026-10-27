.class public final Lg6/h1;
.super Lg6/k1;
.source "SourceFile"


# instance fields
.field public final o:Lu6/l;

.field public final p:Lj6/i;

.field public volatile q:Lu6/l;

.field public volatile r:Lu6/l;

.field public final s:Ljava/lang/Enum;


# direct methods
.method public constructor <init>(Lu6/l;Lj6/i;Lu6/l;Lu6/l;)V
    .locals 3

    iget-object v0, p1, Lu6/l;->l:Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0, v1}, Lg6/k1;-><init>(ILjava/lang/Class;Lg6/v;)V

    iput-object p1, p0, Lg6/h1;->o:Lu6/l;

    iput-object p2, p0, Lg6/h1;->p:Lj6/i;

    iget-object p1, p1, Lu6/l;->o:Ljava/lang/Enum;

    iput-object p1, p0, Lg6/h1;->s:Ljava/lang/Enum;

    iput-object p3, p0, Lg6/h1;->q:Lu6/l;

    iput-object p4, p0, Lg6/h1;->r:Lu6/l;

    return-void
.end method


# virtual methods
.method public final b(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg6/h1;->p:Lj6/i;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p2}, Lj6/i;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lu6/h;->q(Ljava/lang/Exception;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lu6/h;->E(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lu6/h;->C(Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    sget-object v0, Lb6/j;->K:Lb6/j;

    invoke-virtual {p1, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg6/h1;->q:Lu6/l;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg6/h1;->o:Lu6/l;

    :goto_0
    invoke-virtual {v0, p2}, Lu6/l;->e(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v2, Ld6/k;->m:Ld6/k;

    iget-object v3, p1, Lb6/i;->q:Lb6/h;

    iget-object v3, v3, Ld6/n;->s:Ld6/i;

    invoke-virtual {v3, v2}, Ld6/i;->a(Ld6/g;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lg6/h1;->r:Lu6/l;

    invoke-virtual {v0, p2}, Lu6/l;->e(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_5

    iget-object v2, p0, Lg6/h1;->s:Ljava/lang/Enum;

    if-eqz v2, :cond_3

    sget-object v2, Lb6/j;->M:Lb6/j;

    invoke-virtual {p1, v2}, Lb6/i;->n0(Lb6/j;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lg6/h1;->s:Ljava/lang/Enum;

    return-object p0

    :cond_3
    sget-object v2, Lb6/j;->L:Lb6/j;

    invoke-virtual {p1, v2}, Lb6/i;->n0(Lb6/j;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lg6/k1;->m:Ljava/lang/Class;

    iget-object v0, v0, Lu6/l;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "not one of the values accepted for Enum class: %s"

    invoke-virtual {p1, p0, p2, v1, v0}, Lb6/i;->i0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_5
    :goto_1
    return-object v1
.end method
