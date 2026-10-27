.class public final Lm0/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Lg5/c;


# instance fields
.field public a:Z

.field public final b:Ljava/util/ArrayList;

.field public final c:Lk/b0;

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public e:Lm0/i0;

.field public f:Lld/b;

.field public g:Lm0/y0;

.field public h:Lm0/f0;

.field public i:Lm0/i0;

.field public j:Lm0/i0;

.field public final k:Lr0/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb0/u2;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lb0/u2;-><init>(I)V

    new-instance v1, Lgd/e;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lgd/e;-><init>(I)V

    new-instance v2, Lg5/c;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0, v1}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Lm0/i1;->l:Lg5/c;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm0/i1;->b:Ljava/util/ArrayList;

    sget-object v0, Lk/o;->a:Lk/b0;

    new-instance v0, Lk/b0;

    invoke-direct {v0}, Lk/b0;-><init>()V

    iput-object v0, p0, Lm0/i1;->c:Lk/b0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lm0/i1;->d:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object p1, Lk/o;->a:Lk/b0;

    const-string p2, "null cannot be cast to non-null type androidx.collection.LongObjectMap<V of androidx.collection.LongObjectMapKt.emptyLongObjectMap>"

    invoke-static {p1, p2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lm0/i1;->k:Lr0/e1;

    return-void
.end method


# virtual methods
.method public final a()Lk/b0;
    .locals 0

    iget-object p0, p0, Lm0/i1;->k:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/b0;

    return-object p0
.end method

.method public final b(Lc2/u;JJLm0/b0;Z)Z
    .locals 0

    iget-object p0, p0, Lm0/i1;->g:Lm0/y0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lm0/y0;->l:Lm0/b1;

    invoke-virtual {p0, p1, p2, p3}, Lm0/b1;->a(Lc2/u;J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p4, p5}, Lm0/b1;->a(Lc2/u;J)J

    move-result-wide p4

    invoke-virtual {p0, p7}, Lm0/b1;->k(Z)V

    move-object p7, p6

    const/4 p6, 0x0

    move-object p1, p0

    invoke-virtual/range {p1 .. p7}, Lm0/b1;->n(JJZLm0/b0;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final c(Lc2/u;)Ljava/util/ArrayList;
    .locals 3

    iget-boolean v0, p0, Lm0/i1;->a:Z

    iget-object v1, p0, Lm0/i1;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Lb0/x;

    const/16 v2, 0xc

    invoke-direct {v0, v2, p1}, Lb0/x;-><init>(ILjava/lang/Object;)V

    new-instance p1, Lm0/h1;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0}, Lm0/h1;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, p1}, Lu8/p;->S(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm0/i1;->a:Z

    :cond_0
    return-object v1
.end method

.method public final d(Lm0/q;)V
    .locals 3

    iget-wide v0, p1, Lm0/q;->a:J

    iget-object v2, p0, Lm0/i1;->c:Lk/b0;

    invoke-virtual {v2, v0, v1}, Lk/b0;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm0/i1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-wide v0, p1, Lm0/q;->a:J

    invoke-virtual {v2, v0, v1}, Lk/b0;->g(J)Ljava/lang/Object;

    iget-object p0, p0, Lm0/i1;->j:Lm0/i0;

    if-eqz p0, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm0/i0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
