.class public Ls5/d;
.super Ls5/u;
.source "SourceFile"


# static fields
.field public static final A:Lw5/k;

.field public static final x:I

.field public static final y:I

.field public static final z:I


# instance fields
.field public final transient l:Lz5/e;

.field public final transient m:Lz5/b;

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:La6/m;

.field public r:Ls5/o;

.field public final s:Ls5/c;

.field public final t:Ls5/c;

.field public final u:Ls5/c;

.field public final v:Lw5/k;

.field public final w:C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/fragment/app/t1;->g(I)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    if-eqz v5, :cond_0

    invoke-static {v5}, Lr0/i;->b(I)I

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    throw v0

    :cond_1
    sput v4, Ls5/d;->x:I

    invoke-static {}, Ls5/j;->values()[Ls5/j;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    iget-boolean v6, v5, Ls5/j;->l:Z

    if-eqz v6, :cond_2

    iget v5, v5, Ls5/j;->m:I

    or-int/2addr v4, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sput v4, Ls5/d;->y:I

    invoke-static {}, Ls5/f;->values()[Ls5/f;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v2, v1, :cond_5

    aget-object v4, v0, v2

    iget-boolean v5, v4, Ls5/f;->l:Z

    if-eqz v5, :cond_4

    iget v4, v4, Ls5/f;->m:I

    or-int/2addr v3, v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    sput v3, Ls5/d;->z:I

    new-instance v0, Lw5/k;

    const-string v1, " "

    invoke-direct {v0, v1}, Lw5/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls5/d;->A:Lw5/k;

    return-void
.end method

.method public constructor <init>(Lb6/c0;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v2, v0

    or-int/lit8 v0, v2, 0x1

    new-instance v1, Lz5/b;

    invoke-direct {v1, v0}, Lz5/b;-><init>(I)V

    iput-object v1, p0, Ls5/d;->m:Lz5/b;

    sget v0, Ls5/d;->x:I

    iput v0, p0, Ls5/d;->n:I

    sget v1, Ls5/d;->y:I

    iput v1, p0, Ls5/d;->o:I

    sget v1, Ls5/d;->z:I

    iput v1, p0, Ls5/d;->p:I

    sget-object v1, Ls5/d;->A:Lw5/k;

    iput-object v1, p0, Ls5/d;->v:Lw5/k;

    sget-object v1, La6/m;->n:La6/m;

    iput-object v1, p0, Ls5/d;->q:La6/m;

    iput-object p1, p0, Ls5/d;->r:Ls5/o;

    const/16 p1, 0x22

    iput-char p1, p0, Ls5/d;->w:C

    sget-object p1, Ls5/c;->m:Ls5/c;

    iput-object p1, p0, Ls5/d;->s:Ls5/c;

    sget-object v1, Ls5/c;->n:Ls5/c;

    iput-object v1, p0, Ls5/d;->u:Ls5/c;

    sget-object v1, Ls5/c;->l:Ls5/c;

    iput-object v1, p0, Ls5/d;->t:Ls5/c;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    new-instance v2, Lz5/e;

    invoke-direct {v2, p1, v0, v1}, Lz5/e;-><init>(Ls5/c;II)V

    iput-object v2, p0, Ls5/d;->l:Lz5/e;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Lw5/c;
    .locals 2

    new-instance v0, Lw5/c;

    const/4 v1, 0x1

    iget-object p0, p0, Ls5/d;->t:Ls5/c;

    invoke-direct {v0, v1, p1, p0}, Lw5/c;-><init>(ZLjava/lang/Object;Ls5/c;)V

    return-object v0
.end method

.method public final f(Lw5/c;Z)Lw5/d;
    .locals 10

    iget-object v0, p1, Lw5/c;->l:Ljava/lang/Object;

    instance-of v1, v0, La6/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, La6/a;

    invoke-interface {v0}, La6/a;->b()La6/b;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    move v1, v2

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Ls5/d;->i()La6/b;

    move-result-object v0

    :cond_2
    move-object v7, v0

    new-instance v3, Lw5/d;

    iget-object v5, p0, Ls5/d;->u:Ls5/c;

    iget-object v6, p0, Ls5/d;->t:Ls5/c;

    iget-object v4, p0, Ls5/d;->s:Ls5/c;

    move-object v8, p1

    move v9, p2

    invoke-direct/range {v3 .. v9}, Lw5/d;-><init>(Ls5/c;Ls5/c;Ls5/c;La6/b;Lw5/c;Z)V

    if-eqz v1, :cond_3

    iput-boolean v2, v3, Lw5/d;->q:Z

    :cond_3
    return-object v3
.end method

.method public h(Ljava/io/Reader;Lw5/d;)Ls5/k;
    .locals 6

    new-instance v0, Ly5/h;

    iget-object v4, p0, Ls5/d;->r:Ls5/o;

    iget-object v1, p0, Ls5/d;->l:Lz5/e;

    invoke-virtual {v1}, Lz5/e;->c()Lz5/e;

    move-result-object v5

    iget v2, p0, Ls5/d;->o:I

    move-object v3, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Ly5/h;-><init>(Lw5/d;ILjava/io/Reader;Ls5/o;Lz5/e;)V

    return-object v0
.end method

.method public final i()La6/b;
    .locals 2

    const/4 v0, 0x4

    iget v1, p0, Ls5/d;->n:I

    invoke-static {v0, v1}, Lr0/i;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, La6/m;->m:La6/m;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ls5/d;->q:La6/m;

    :goto_0
    invoke-interface {p0}, La6/p;->g()La6/b;

    move-result-object p0

    return-object p0
.end method

.method public j(Lw5/j;)Ls5/g;
    .locals 8

    invoke-virtual {p0, p1}, Ls5/d;->e(Ljava/lang/Object;)Lw5/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ls5/d;->f(Lw5/c;Z)Lw5/d;

    move-result-object v3

    new-instance v2, Ly5/k;

    iget-object v5, p0, Ls5/d;->r:Ls5/o;

    iget-char v7, p0, Ls5/d;->w:C

    iget v4, p0, Ls5/d;->p:I

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Ly5/k;-><init>(Lw5/d;ILs5/o;Ljava/io/Writer;C)V

    sget-object p1, Ls5/d;->A:Lw5/k;

    iget-object p0, p0, Ls5/d;->v:Lw5/k;

    if-eq p0, p1, :cond_0

    iput-object p0, v2, Ly5/b;->w:Ls5/q;

    :cond_0
    return-object v2
.end method

.method public k(Ljava/lang/String;)Ls5/k;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const v0, 0x8000

    const/4 v1, 0x0

    if-gt v6, v0, :cond_1

    instance-of v0, p0, Lw6/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ls5/d;->e(Ljava/lang/Object;)Lw5/c;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Ls5/d;->f(Lw5/c;Z)Lw5/d;

    move-result-object v0

    iget-object v2, v0, Lw5/d;->x:[C

    invoke-static {v2}, Lw5/d;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lw5/d;->p:La6/b;

    invoke-virtual {v2, v1, v6}, La6/b;->b(II)[C

    move-result-object v5

    iput-object v5, v0, Lw5/d;->x:[C

    invoke-virtual {p1, v1, v6, v5, v1}, Ljava/lang/String;->getChars(II[CI)V

    move-object v1, v0

    new-instance v0, Ly5/h;

    iget-object v3, p0, Ls5/d;->r:Ls5/o;

    iget-object p1, p0, Ls5/d;->l:Lz5/e;

    invoke-virtual {p1}, Lz5/e;->c()Lz5/e;

    move-result-object v4

    iget v2, p0, Ls5/d;->o:I

    invoke-direct/range {v0 .. v6}, Ly5/h;-><init>(Lw5/d;ILs5/o;Lz5/e;[CI)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ls5/d;->e(Ljava/lang/Object;)Lw5/c;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ls5/d;->f(Lw5/c;Z)Lw5/d;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ls5/d;->h(Ljava/io/Reader;Lw5/d;)Ls5/k;

    move-result-object p0

    return-object p0
.end method
