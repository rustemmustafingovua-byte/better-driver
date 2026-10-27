.class public final Ly/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt0/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt0/b;

    const/16 v1, 0x10

    new-array v1, v1, [Ly/e;

    invoke-direct {v0, v1}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Ly/c;->a:Lt0/b;

    return-void
.end method


# virtual methods
.method public final a(Ll1/c;La9/c;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Ly/b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ly/b;

    iget v1, v0, Ly/b;->r:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ly/b;->r:I

    goto :goto_0

    :cond_0
    new-instance v0, Ly/b;

    invoke-direct {v0, p0, p2}, Ly/b;-><init>(Ly/c;La9/c;)V

    :goto_0
    iget-object p2, v0, Ly/b;->p:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Ly/b;->r:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Ly/b;->o:I

    iget p1, v0, Ly/b;->n:I

    iget-object v2, v0, Ly/b;->m:[Ljava/lang/Object;

    iget-object v4, v0, Ly/b;->l:Ll1/c;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    move-object p2, v4

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iget-object p0, p0, Ly/c;->a:Lt0/b;

    iget-object p2, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    const/4 v2, 0x0

    move-object v7, p2

    move-object p2, p1

    move p1, v2

    move-object v2, v7

    :goto_1
    if-ge p1, p0, :cond_4

    aget-object v4, v2, p1

    check-cast v4, Ly/e;

    new-instance v5, Lod/x4;

    const/16 v6, 0x10

    invoke-direct {v5, v6, p2}, Lod/x4;-><init>(ILjava/lang/Object;)V

    iput-object p2, v0, Ly/b;->l:Ll1/c;

    iput-object v2, v0, Ly/b;->m:[Ljava/lang/Object;

    iput p1, v0, Ly/b;->n:I

    iput p0, v0, Ly/b;->o:I

    iput v3, v0, Ly/b;->r:I

    invoke-static {v4, v5, v0}, Lr5/h1;->b(Le2/j;Li9/a;La9/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    add-int/2addr p1, v3

    goto :goto_1

    :cond_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
