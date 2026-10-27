.class public final Lw7/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly7/g;

.field public final b:I

.field public final c:Lw7/a;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public final g:I

.field public final h:I

.field public final i:Z

.field public final j:Z

.field public final k:Lw7/p;

.field public final l:Lw7/q;

.field public final m:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ly7/g;->n:Ly7/g;

    iput-object v0, p0, Lw7/m;->a:Ly7/g;

    const/4 v0, 0x1

    iput v0, p0, Lw7/m;->b:I

    sget-object v1, Lw7/h;->l:Lw7/a;

    iput-object v1, p0, Lw7/m;->c:Lw7/a;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lw7/m;->d:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lw7/m;->e:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lw7/m;->f:Ljava/util/ArrayList;

    const/4 v1, 0x2

    iput v1, p0, Lw7/m;->g:I

    iput v1, p0, Lw7/m;->h:I

    iput-boolean v0, p0, Lw7/m;->i:Z

    iput-boolean v0, p0, Lw7/m;->j:Z

    sget-object v0, Lw7/t;->l:Lw7/p;

    iput-object v0, p0, Lw7/m;->k:Lw7/p;

    sget-object v0, Lw7/t;->m:Lw7/q;

    iput-object v0, p0, Lw7/m;->l:Lw7/q;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lw7/m;->m:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final a()Lw7/l;
    .locals 11

    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lw7/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lw7/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-boolean v1, Lc8/d;->a:Z

    iget v3, p0, Lw7/m;->g:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget v5, p0, Lw7/m;->h:I

    if-eq v5, v4, :cond_1

    new-instance v4, Lz7/a;

    sget-object v6, Lz7/e;->b:Lz7/d;

    invoke-direct {v4, v6, v3, v5}, Lz7/a;-><init>(Lz7/e;II)V

    sget-object v6, Lz7/v;->a:Lz7/r;

    new-instance v6, Lz7/r;

    const-class v8, Ljava/util/Date;

    const/4 v9, 0x0

    invoke-direct {v6, v8, v4, v9}, Lz7/r;-><init>(Ljava/lang/Object;Lw7/u;I)V

    if-eqz v1, :cond_0

    sget-object v4, Lc8/d;->c:Lc8/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lz7/a;

    invoke-direct {v8, v4, v3, v5}, Lz7/a;-><init>(Lz7/e;II)V

    iget-object v4, v4, Lz7/e;->a:Ljava/lang/Class;

    new-instance v10, Lz7/r;

    invoke-direct {v10, v4, v8, v9}, Lz7/r;-><init>(Ljava/lang/Object;Lw7/u;I)V

    sget-object v4, Lc8/d;->b:Lc8/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lz7/a;

    invoke-direct {v8, v4, v3, v5}, Lz7/a;-><init>(Lz7/e;II)V

    iget-object v3, v4, Lz7/e;->a:Ljava/lang/Class;

    new-instance v4, Lz7/r;

    invoke-direct {v4, v3, v8, v9}, Lz7/r;-><init>(Ljava/lang/Object;Lw7/u;I)V

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    move-object v4, v10

    :goto_0
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v1, v0

    new-instance v0, Lw7/l;

    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Lw7/m;->d:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Ljava/util/ArrayList;

    iget-object v1, p0, Lw7/m;->m:Ljava/util/LinkedList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lw7/m;->a:Ly7/g;

    iget-object v2, p0, Lw7/m;->c:Lw7/a;

    iget-boolean v4, p0, Lw7/m;->i:Z

    iget-boolean v5, p0, Lw7/m;->j:Z

    iget v6, p0, Lw7/m;->b:I

    iget-object v8, p0, Lw7/m;->k:Lw7/p;

    iget-object v9, p0, Lw7/m;->l:Lw7/q;

    invoke-direct/range {v0 .. v10}, Lw7/l;-><init>(Ly7/g;Lw7/a;Ljava/util/Map;ZZILjava/util/List;Lw7/p;Lw7/q;Ljava/util/List;)V

    return-object v0
.end method

.method public final b(Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;)V
    .locals 3

    new-instance v0, Ld8/a;

    const-class v1, Lorg/maplibre/geojson/BoundingBox;

    invoke-direct {v0, v1}, Ld8/a;-><init>(Ljava/lang/reflect/Type;)V

    sget-object v1, Lz7/v;->a:Lz7/r;

    new-instance v1, Lz7/r;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p1, v2}, Lz7/r;-><init>(Ljava/lang/Object;Lw7/u;I)V

    iget-object p0, p0, Lw7/m;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lw7/v;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lw7/m;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
