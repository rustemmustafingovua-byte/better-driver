.class public abstract Lj6/n;
.super Lj6/h;
.source "SourceFile"


# instance fields
.field public final n:[Lb0/l1;


# direct methods
.method public constructor <init>(Lj6/k0;Lb0/l1;[Lb0/l1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj6/h;-><init>(Lj6/k0;Lb0/l1;)V

    iput-object p3, p0, Lj6/n;->n:[Lb0/l1;

    return-void
.end method


# virtual methods
.method public abstract q()Ljava/lang/Object;
.end method

.method public abstract r([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract s(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final t(I)Lj6/m;
    .locals 6

    new-instance v0, Lj6/m;

    invoke-virtual {p0, p1}, Lj6/n;->v(I)Lb6/l;

    move-result-object v2

    iget-object v1, p0, Lj6/n;->n:[Lb0/l1;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    array-length v3, v1

    if-ge p1, v3, :cond_0

    aget-object v1, v1, p1

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lj6/h;->l:Lj6/k0;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lj6/m;-><init>(Lj6/n;Lb6/l;Lj6/k0;Lb0/l1;I)V

    return-object v0
.end method

.method public abstract u()I
.end method

.method public abstract v(I)Lb6/l;
.end method

.method public abstract w(I)Ljava/lang/Class;
.end method
