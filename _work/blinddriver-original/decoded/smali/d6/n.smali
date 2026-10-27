.class public abstract Ld6/n;
.super Ld6/m;
.source "SourceFile"


# static fields
.field public static final t:J

.field public static final u:J


# instance fields
.field public final n:Lj6/j0;

.field public final o:Lo6/m;

.field public final p:Lg6/c1;

.field public final q:Lu6/m;

.field public final r:La6/n;

.field public final s:Ld6/i;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lb6/x;->values()[Lb6/x;

    move-result-object v0

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    iget-boolean v6, v5, Lb6/x;->l:Z

    if-eqz v6, :cond_0

    iget-wide v5, v5, Lb6/x;->m:J

    or-long/2addr v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sput-wide v2, Ld6/n;->t:J

    sget-object v0, Lb6/x;->r:Lb6/x;

    iget-wide v0, v0, Lb6/x;->m:J

    sget-object v2, Lb6/x;->s:Lb6/x;

    iget-wide v2, v2, Lb6/x;->m:J

    or-long/2addr v0, v2

    sget-object v2, Lb6/x;->t:Lb6/x;

    iget-wide v2, v2, Lb6/x;->m:J

    or-long/2addr v0, v2

    sget-object v2, Lb6/x;->u:Lb6/x;

    iget-wide v2, v2, Lb6/x;->m:J

    or-long/2addr v0, v2

    sget-object v2, Lb6/x;->q:Lb6/x;

    iget-wide v2, v2, Lb6/x;->m:J

    or-long/2addr v0, v2

    sput-wide v0, Ld6/n;->u:J

    return-void
.end method

.method public constructor <init>(Ld6/a;Lo6/m;Lj6/j0;Lu6/m;La6/n;Ld6/i;)V
    .locals 2

    .line 1
    sget-wide v0, Ld6/n;->t:J

    invoke-direct {p0, p1, v0, v1}, Ld6/m;-><init>(Ld6/a;J)V

    .line 2
    iput-object p3, p0, Ld6/n;->n:Lj6/j0;

    .line 3
    iput-object p2, p0, Ld6/n;->o:Lo6/m;

    .line 4
    iput-object p4, p0, Ld6/n;->q:Lu6/m;

    .line 5
    sget-object p1, Ld6/f;->m:Ld6/f;

    .line 6
    iput-object p1, p0, Ld6/n;->p:Lg6/c1;

    .line 7
    iput-object p5, p0, Ld6/n;->r:La6/n;

    .line 8
    iput-object p6, p0, Ld6/n;->s:Ld6/i;

    return-void
.end method

.method public constructor <init>(Ld6/n;J)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Ld6/m;-><init>(Ld6/n;J)V

    .line 17
    iget-object p2, p1, Ld6/n;->n:Lj6/j0;

    iput-object p2, p0, Ld6/n;->n:Lj6/j0;

    .line 18
    iget-object p2, p1, Ld6/n;->o:Lo6/m;

    iput-object p2, p0, Ld6/n;->o:Lo6/m;

    .line 19
    iget-object p2, p1, Ld6/n;->q:Lu6/m;

    iput-object p2, p0, Ld6/n;->q:Lu6/m;

    .line 20
    iget-object p2, p1, Ld6/n;->p:Lg6/c1;

    iput-object p2, p0, Ld6/n;->p:Lg6/c1;

    .line 21
    iget-object p2, p1, Ld6/n;->r:La6/n;

    iput-object p2, p0, Ld6/n;->r:La6/n;

    .line 22
    iget-object p1, p1, Ld6/n;->s:Ld6/i;

    iput-object p1, p0, Ld6/n;->s:Ld6/i;

    return-void
.end method

.method public constructor <init>(Ld6/n;Ld6/a;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Ld6/m;-><init>(Ld6/n;Ld6/a;)V

    .line 10
    iget-object p2, p1, Ld6/n;->n:Lj6/j0;

    iput-object p2, p0, Ld6/n;->n:Lj6/j0;

    .line 11
    iget-object p2, p1, Ld6/n;->o:Lo6/m;

    iput-object p2, p0, Ld6/n;->o:Lo6/m;

    .line 12
    iget-object p2, p1, Ld6/n;->q:Lu6/m;

    iput-object p2, p0, Ld6/n;->q:Lu6/m;

    .line 13
    iget-object p2, p1, Ld6/n;->p:Lg6/c1;

    iput-object p2, p0, Ld6/n;->p:Lg6/c1;

    .line 14
    iget-object p2, p1, Ld6/n;->r:La6/n;

    iput-object p2, p0, Ld6/n;->r:La6/n;

    .line 15
    iget-object p1, p1, Ld6/n;->s:Ld6/i;

    iput-object p1, p0, Ld6/n;->s:Ld6/i;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Ld6/n;->n:Lj6/j0;

    invoke-virtual {p0, p1}, Lj6/j0;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/Class;)Ld6/d;
    .locals 0

    iget-object p0, p0, Ld6/n;->r:La6/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ld6/d;->a:Ld6/d;

    return-object p0
.end method

.method public final h(Ljava/lang/Class;)Lr5/q;
    .locals 0

    iget-object p0, p0, Ld6/n;->r:La6/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lr5/q;->s:Lr5/q;

    return-object p0
.end method

.method public final i(Ljava/lang/Class;Lj6/c;)Lj6/m0;
    .locals 9

    invoke-static {p1}, Lu6/h;->u(Ljava/lang/Class;)Z

    move-result v0

    iget-object v1, p0, Ld6/n;->r:La6/n;

    if-eqz v0, :cond_0

    sget-object p1, Lj6/m0;->r:Lj6/m0;

    goto/16 :goto_5

    :cond_0
    iget-object v0, v1, La6/n;->n:Ljava/lang/Object;

    check-cast v0, Lj6/m0;

    iget-wide v2, p0, Ld6/m;->l:J

    sget-wide v4, Ld6/n;->u:J

    and-long/2addr v2, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    sget-object v2, Lb6/x;->r:Lb6/x;

    invoke-virtual {p0, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v2

    sget-object v4, Lr5/g;->n:Lr5/g;

    if-nez v2, :cond_2

    iget-object v2, v0, Lj6/m0;->p:Lr5/g;

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lj6/m0;

    move-object v5, v4

    iget-object v4, v0, Lj6/m0;->l:Lr5/g;

    move-object v6, v5

    iget-object v5, v0, Lj6/m0;->m:Lr5/g;

    move-object v8, v6

    iget-object v6, v0, Lj6/m0;->n:Lr5/g;

    iget-object v7, v0, Lj6/m0;->o:Lr5/g;

    invoke-direct/range {v3 .. v8}, Lj6/m0;-><init>(Lr5/g;Lr5/g;Lr5/g;Lr5/g;Lr5/g;)V

    move-object v5, v8

    move-object v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move-object v5, v4

    :goto_1
    sget-object v2, Lb6/x;->s:Lb6/x;

    invoke-virtual {p0, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lj6/m0;->l:Lr5/g;

    if-ne v2, v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance v3, Lj6/m0;

    move-object v6, v5

    iget-object v5, v0, Lj6/m0;->m:Lr5/g;

    move-object v8, v6

    iget-object v6, v0, Lj6/m0;->n:Lr5/g;

    iget-object v7, v0, Lj6/m0;->o:Lr5/g;

    move-object v4, v8

    iget-object v8, v0, Lj6/m0;->p:Lr5/g;

    invoke-direct/range {v3 .. v8}, Lj6/m0;-><init>(Lr5/g;Lr5/g;Lr5/g;Lr5/g;Lr5/g;)V

    move-object v5, v4

    move-object v0, v3

    :cond_4
    :goto_2
    sget-object v2, Lb6/x;->t:Lb6/x;

    invoke-virtual {p0, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lj6/m0;->m:Lr5/g;

    if-ne v2, v5, :cond_5

    goto :goto_3

    :cond_5
    new-instance v3, Lj6/m0;

    iget-object v4, v0, Lj6/m0;->l:Lr5/g;

    iget-object v6, v0, Lj6/m0;->n:Lr5/g;

    iget-object v7, v0, Lj6/m0;->o:Lr5/g;

    iget-object v8, v0, Lj6/m0;->p:Lr5/g;

    invoke-direct/range {v3 .. v8}, Lj6/m0;-><init>(Lr5/g;Lr5/g;Lr5/g;Lr5/g;Lr5/g;)V

    move-object v0, v3

    :cond_6
    :goto_3
    sget-object v2, Lb6/x;->u:Lb6/x;

    invoke-virtual {p0, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lj6/m0;->n:Lr5/g;

    if-ne v2, v5, :cond_7

    goto :goto_4

    :cond_7
    new-instance v3, Lj6/m0;

    iget-object v4, v0, Lj6/m0;->l:Lr5/g;

    move-object v6, v5

    iget-object v5, v0, Lj6/m0;->m:Lr5/g;

    iget-object v7, v0, Lj6/m0;->o:Lr5/g;

    iget-object v8, v0, Lj6/m0;->p:Lr5/g;

    invoke-direct/range {v3 .. v8}, Lj6/m0;-><init>(Lr5/g;Lr5/g;Lr5/g;Lr5/g;Lr5/g;)V

    move-object v5, v6

    move-object v0, v3

    :cond_8
    :goto_4
    sget-object v2, Lb6/x;->q:Lb6/x;

    invoke-virtual {p0, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0, v5}, Lj6/m0;->a(Lr5/g;)Lj6/m0;

    move-result-object v0

    :cond_9
    invoke-static {p1}, Lu6/h;->x(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lb6/x;->q:Lb6/x;

    invoke-virtual {p0, p1}, Ld6/m;->m(Lb6/x;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lr5/g;->o:Lr5/g;

    invoke-virtual {v0, p1}, Lj6/m0;->a(Lr5/g;)Lj6/m0;

    move-result-object p1

    goto :goto_5

    :cond_a
    move-object p1, v0

    :goto_5
    invoke-virtual {p0}, Ld6/m;->d()Lb6/d;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0, p2, p1}, Lb6/d;->c(Lj6/c;Lj6/m0;)Lj6/m0;

    move-result-object p1

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public abstract o(Ld6/a;)Ld6/n;
.end method

.method public final p(Ljava/lang/Class;Lj6/c;)Lr5/w;
    .locals 1

    invoke-virtual {p0}, Ld6/m;->d()Lb6/d;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0, p2}, Lb6/d;->N(Ld6/m;Lj6/a;)Lr5/w;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Ld6/n;->r:La6/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lr5/w;->q:Lr5/w;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public final q(Lb6/o0;)Ld6/n;
    .locals 11

    iget-object v0, p0, Ld6/m;->m:Ld6/a;

    iget-object v1, v0, Ld6/a;->o:Lb6/o0;

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ld6/a;

    iget-object v3, v0, Ld6/a;->m:Lj6/s;

    iget-object v4, v0, Ld6/a;->n:Lb6/d;

    iget-object v6, v0, Ld6/a;->l:Lt6/p;

    iget-object v7, v0, Ld6/a;->q:Ljava/text/DateFormat;

    iget-object v8, v0, Ld6/a;->r:Ljava/util/Locale;

    iget-object v9, v0, Ld6/a;->s:Ls5/a;

    iget-object v10, v0, Ld6/a;->p:Lj6/q;

    move-object v5, p1

    invoke-direct/range {v2 .. v10}, Ld6/a;-><init>(Lj6/s;Lb6/d;Lb6/o0;Lt6/p;Ljava/text/DateFormat;Ljava/util/Locale;Ls5/a;Lj6/q;)V

    move-object v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Ld6/n;->o(Ld6/a;)Ld6/n;

    move-result-object p0

    return-object p0
.end method
