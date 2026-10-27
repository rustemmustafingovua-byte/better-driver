.class public final Lz7/l;
.super Lw7/u;
.source "SourceFile"


# static fields
.field public static final c:Lz7/k;


# instance fields
.field public final a:Lw7/l;

.field public final b:Lw7/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lz7/k;

    const/4 v1, 0x1

    sget-object v2, Lw7/t;->l:Lw7/p;

    invoke-direct {v0, v1, v2}, Lz7/k;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lz7/l;->c:Lz7/k;

    return-void
.end method

.method public constructor <init>(Lw7/l;Lw7/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7/l;->a:Lw7/l;

    iput-object p2, p0, Lz7/l;->b:Lw7/t;

    return-void
.end method


# virtual methods
.method public final a(Le8/b;I)Ljava/io/Serializable;
    .locals 2

    invoke-static {p2}, Landroidx/fragment/app/t1;->d(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 p0, 0x7

    if-eq v0, p0, :cond_1

    const/16 p0, 0x8

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p2}, La6/q;->y(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unexpected token: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Le8/b;->K()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lz7/l;->b:Lw7/t;

    invoke-virtual {p0, p1}, Lw7/t;->a(Le8/b;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final read(Le8/b;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v0

    invoke-static {v0}, Landroidx/fragment/app/t1;->d(I)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Le8/b;->c()V

    new-instance v1, Ly7/m;

    invoke-direct {v1, v3}, Ly7/m;-><init>(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Le8/b;->b()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0, p1, v0}, Lz7/l;->a(Le8/b;I)Ljava/io/Serializable;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Le8/b;->y()Z

    move-result v5

    if-eqz v5, :cond_a

    instance-of v5, v1, Ljava/util/Map;

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Le8/b;->T()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v5, v4

    :goto_2
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v6

    invoke-static {v6}, Landroidx/fragment/app/t1;->d(I)I

    move-result v7

    if-eqz v7, :cond_6

    if-eq v7, v2, :cond_5

    move-object v7, v4

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Le8/b;->c()V

    new-instance v7, Ly7/m;

    invoke-direct {v7, v3}, Ly7/m;-><init>(Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Le8/b;->b()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-eqz v7, :cond_7

    move v8, v3

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    :goto_4
    if-nez v7, :cond_8

    invoke-virtual {p0, p1, v6}, Lz7/l;->a(Le8/b;I)Ljava/io/Serializable;

    move-result-object v7

    :cond_8
    instance-of v6, v1, Ljava/util/List;

    if-eqz v6, :cond_9

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move-object v6, v1

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz v8, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object v1, v7

    goto :goto_1

    :cond_a
    instance-of v5, v1, Ljava/util/List;

    if-eqz v5, :cond_b

    invoke-virtual {p1}, Le8/b;->k()V

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Le8/b;->m()V

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    return-object v1

    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1
.end method

.method public final write(Le8/c;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ld8/a;

    invoke-direct {v1, v0}, Ld8/a;-><init>(Ljava/lang/reflect/Type;)V

    iget-object p0, p0, Lz7/l;->a:Lw7/l;

    invoke-virtual {p0, v1}, Lw7/l;->c(Ld8/a;)Lw7/u;

    move-result-object p0

    instance-of v0, p0, Lz7/l;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Le8/c;->d()V

    invoke-virtual {p1}, Le8/c;->m()V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    return-void
.end method
