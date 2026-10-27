.class public final Lq6/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:[Lq6/c;


# instance fields
.field public final a:Lj6/t;

.field public b:Lb6/p0;

.field public c:Ljava/util/List;

.field public d:[Lq6/c;

.field public e:Ljava/lang/Object;

.field public f:Lj6/h;

.field public g:Lf8/p2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lq6/c;

    sput-object v0, Lq6/e;->h:[Lq6/c;

    return-void
.end method

.method public constructor <init>(Lj6/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lq6/e;->c:Ljava/util/List;

    iput-object p1, p0, Lq6/e;->a:Lj6/t;

    return-void
.end method


# virtual methods
.method public final a()Lq6/d;
    .locals 5

    iget-object v0, p0, Lq6/e;->f:Lj6/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq6/e;->b:Lb6/p0;

    sget-object v1, Lb6/x;->A:Lb6/x;

    invoke-virtual {v0, v1}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq6/e;->f:Lj6/h;

    iget-object v1, p0, Lq6/e;->b:Lb6/p0;

    sget-object v2, Lb6/x;->B:Lb6/x;

    invoke-virtual {v1, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lj6/h;->j(Z)V

    :cond_0
    iget-object v0, p0, Lq6/e;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lq6/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lq6/c;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq6/c;

    iget-object v1, p0, Lq6/e;->b:Lb6/p0;

    sget-object v2, Lb6/x;->A:Lb6/x;

    invoke-virtual {v1, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    iget-object v4, p0, Lq6/e;->b:Lb6/p0;

    invoke-virtual {v3, v4}, Lq6/c;->l(Lb6/p0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lq6/e;->g:Lf8/p2;

    if-nez v0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    sget-object v0, Lq6/e;->h:[Lq6/c;

    :cond_4
    iget-object v1, p0, Lq6/e;->d:[Lq6/c;

    if-eqz v1, :cond_6

    array-length v1, v1

    iget-object v2, p0, Lq6/e;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lq6/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lq6/e;->d:[Lq6/c;

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Mismatch between `properties` size (%d), `filteredProperties` (%s): should have as many (or `null` for latter)"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    new-instance v1, Lq6/d;

    iget-object v2, p0, Lq6/e;->a:Lj6/t;

    iget-object v2, v2, Lj6/t;->a:Lb6/l;

    iget-object v3, p0, Lq6/e;->d:[Lq6/c;

    invoke-direct {v1, v2, p0, v0, v3}, Ls6/d;-><init>(Lb6/l;Lq6/e;[Lq6/c;[Lq6/c;)V

    return-object v1
.end method
