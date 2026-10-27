.class public final Lg6/g1;
.super Lb6/w;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final l:Ljava/lang/Class;

.field public final m:Lb6/n;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lb6/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg6/g1;->l:Ljava/lang/Class;

    iput-object p2, p0, Lg6/g1;->m:Lb6/n;

    return-void
.end method


# virtual methods
.method public final a(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg6/g1;->l:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p1, Lb6/i;->t:Ls5/k;

    invoke-virtual {p1, v2}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v2

    invoke-virtual {v2, p2}, Lu6/z;->q0(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, v2, Lu6/z;->m:Ls5/o;

    invoke-virtual {v2, v3}, Lu6/z;->I0(Ls5/o;)Lu6/x;

    move-result-object v2

    invoke-virtual {v2}, Lu6/x;->z0()Ls5/n;

    iget-object p0, p0, Lg6/g1;->m:Lb6/n;

    invoke-virtual {p0, v2, p1}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "not a valid representation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p0, v2}, Lb6/i;->i0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "not a valid representation: %s"

    invoke-virtual {p1, v0, p2, v2, p0}, Lb6/i;->i0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method
