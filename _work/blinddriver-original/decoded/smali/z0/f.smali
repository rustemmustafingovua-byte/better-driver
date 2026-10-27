.class public final Lz0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/x1;


# instance fields
.field public final l:Ljava/util/Set;

.field public final m:Lt0/b;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/f;->l:Ljava/util/Set;

    new-instance p1, Lt0/b;

    const/16 v0, 0x10

    new-array v0, v0, [Lr0/y1;

    invoke-direct {p1, v0}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Lz0/f;->m:Lt0/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 5

    iget-object v0, p0, Lz0/f;->m:Lt0/b;

    iget-object v1, v0, Lt0/b;->l:[Ljava/lang/Object;

    iget v0, v0, Lt0/b;->n:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    check-cast v3, Lr0/y1;

    iget-object v3, v3, Lr0/y1;->a:Lr0/x1;

    iget-object v4, p0, Lz0/f;->l:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v3}, Lr0/x1;->g()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
