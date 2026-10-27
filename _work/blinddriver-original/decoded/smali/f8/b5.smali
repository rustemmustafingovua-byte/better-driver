.class public final Lf8/b5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lf8/b5;


# instance fields
.field public final a:Lf8/e5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf8/b5;

    sget v1, Lf8/e5;->a:I

    sget-object v1, Lf8/d5;->a:Lf8/e5;

    invoke-direct {v0, v1}, Lf8/b5;-><init>(Lf8/e5;)V

    sput-object v0, Lf8/b5;->b:Lf8/b5;

    return-void
.end method

.method public constructor <init>(Lf8/e5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf8/b5;->a:Lf8/e5;

    return-void
.end method

.method public static d(IILjava/util/List;Lad/a2;)V
    .locals 4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    const-string v1, ": "

    invoke-virtual {p3, v1}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p1, 0x7

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    check-cast v0, Ljava/lang/Integer;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0x%08x"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad tag: "

    invoke-static {p1, p2}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast v0, Lf8/i5;

    invoke-static {v0, p3}, Lf8/b5;->e(Lf8/i5;Lad/a2;)V

    goto/16 :goto_4

    :cond_2
    :try_start_0
    move-object v1, v0

    check-cast v1, Lf8/j;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v2
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v1}, Lf8/j;->l()Lf8/k;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Lf8/k;->q()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v3, v1}, Lf8/f5;->v(ILf8/k;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lf8/k;->a(I)V
    :try_end_1
    .catch Lf8/h4; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v2}, Lf8/f5;->r()Lf8/i5;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {p3, v2}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lad/a2;->h()V

    iget-object v2, p3, Lad/a2;->o:Ljava/lang/Object;

    check-cast v2, Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p3}, Lf8/b5;->e(Lf8/i5;Lad/a2;)V

    invoke-virtual {p3}, Lad/a2;->k()V

    const-string v1, "}"

    invoke-virtual {p3, v1}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_2
    throw v1
    :try_end_2
    .catch Lf8/h4; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const-string v1, "\""

    invoke-virtual {p3, v1}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    check-cast v0, Lf8/j;

    sget-object v2, Lf8/c5;->a:Ljava/util/logging/Logger;

    invoke-static {v0}, Lf8/v4;->j(Lf8/j;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v1}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    check-cast v0, Ljava/lang/Long;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0x%016x"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lf8/c5;->a:Ljava/util/logging/Logger;

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_7

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p3, v0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {p3}, Lad/a2;->h()V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static e(Lf8/i5;Lad/a2;)V
    .locals 5

    iget-object p0, p0, Lf8/i5;->l:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/g5;

    const/4 v3, 0x0

    iget-object v4, v2, Lf8/g5;->a:Ljava/util/List;

    invoke-static {v1, v3, v4, p1}, Lf8/b5;->d(IILjava/util/List;Lad/a2;)V

    const/4 v3, 0x5

    iget-object v4, v2, Lf8/g5;->b:Ljava/util/List;

    invoke-static {v1, v3, v4, p1}, Lf8/b5;->d(IILjava/util/List;Lad/a2;)V

    const/4 v3, 0x1

    iget-object v4, v2, Lf8/g5;->c:Ljava/util/List;

    invoke-static {v1, v3, v4, p1}, Lf8/b5;->d(IILjava/util/List;Lad/a2;)V

    const/4 v3, 0x2

    iget-object v4, v2, Lf8/g5;->d:Ljava/util/List;

    invoke-static {v1, v3, v4, p1}, Lf8/b5;->d(IILjava/util/List;Lad/a2;)V

    iget-object v1, v2, Lf8/g5;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/i5;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    const-string v3, " {"

    invoke-virtual {p1, v3}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lad/a2;->h()V

    iget-object v3, p1, Lad/a2;->o:Ljava/lang/Object;

    check-cast v3, Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, p1}, Lf8/b5;->e(Lf8/i5;Lad/a2;)V

    invoke-virtual {p1}, Lad/a2;->k()V

    const-string v2, "}"

    invoke-virtual {p1, v2}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lad/a2;->h()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lf8/q4;Lad/a2;)V
    .locals 7

    invoke-interface {p1}, Lf8/q4;->h()Lf8/m2;

    move-result-object v0

    iget-object v0, v0, Lf8/m2;->m:Ljava/lang/String;

    const-string v1, "google.protobuf.Any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lf8/q4;->h()Lf8/m2;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf8/m2;->h(I)Lf8/v2;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lf8/m2;->h(I)Lf8/v2;

    move-result-object v0

    if-eqz v2, :cond_4

    iget-object v3, v2, Lf8/v2;->r:Lf8/u2;

    sget-object v4, Lf8/u2;->m:Lf8/u2;

    if-ne v3, v4, :cond_4

    if-eqz v0, :cond_4

    iget-object v3, v0, Lf8/v2;->r:Lf8/u2;

    sget-object v4, Lf8/u2;->p:Lf8/u2;

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Lf8/q4;->o(Lf8/v2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Lf8/q4;->o(Lf8/v2;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    iget-object v3, p0, Lf8/b5;->a:Lf8/e5;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-eq v4, v1, :cond_3

    array-length v4, v3

    sub-int/2addr v4, v1

    aget-object v1, v3, v4

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/m2;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lf8/d3;->e(Lf8/m2;)Lf8/d3;

    move-result-object v1

    new-instance v3, Lf8/c3;

    iget-object v1, v1, Lf8/d3;->m:Lf8/m2;

    invoke-direct {v3, v1}, Lf8/c3;-><init>(Lf8/m2;)V

    check-cast v0, Lf8/j;

    invoke-virtual {v3, v0}, Lf8/a;->z(Lf8/j;)V
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "["

    invoke-virtual {p2, p1}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    const-string p1, "] {"

    invoke-virtual {p2, p1}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lad/a2;->h()V

    iget-object p1, p2, Lad/a2;->o:Ljava/lang/Object;

    check-cast p1, Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, p2}, Lf8/b5;->a(Lf8/q4;Lad/a2;)V

    invoke-virtual {p2}, Lad/a2;->k()V

    const-string p0, "}"

    invoke-virtual {p2, p0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lad/a2;->h()V

    return-void

    :cond_3
    :try_start_1
    new-instance v0, Lf8/h4;

    const-string v1, "Invalid type url found: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lf8/h4;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lf8/h4; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    :goto_0
    invoke-interface {p1}, Lf8/q4;->l()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/v2;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Lf8/v2;->k()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    new-instance v6, Lf8/a5;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v4, v6, Lf8/a5;->l:Ljava/lang/Object;

    invoke-virtual {v2}, Lf8/v2;->j()Lf8/m2;

    move-result-object v4

    invoke-virtual {v4}, Lf8/m2;->i()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf8/v2;

    iget-object v4, v4, Lf8/v2;->r:Lf8/u2;

    iget-object v4, v4, Lf8/u2;->l:Lf8/t2;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v5, v1, :cond_5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    check-cast v4, Lf8/a5;

    iget-object v4, v4, Lf8/a5;->l:Ljava/lang/Object;

    invoke-virtual {p0, v2, v4, p2}, Lf8/b5;->b(Lf8/v2;Ljava/lang/Object;Lad/a2;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Lf8/v2;->l()Z

    move-result v3

    if-eqz v3, :cond_8

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2}, Lf8/b5;->b(Lf8/v2;Ljava/lang/Object;Lad/a2;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v2, v1, p2}, Lf8/b5;->b(Lf8/v2;Ljava/lang/Object;Lad/a2;)V

    goto/16 :goto_1

    :cond_9
    invoke-interface {p1}, Lf8/q4;->i()Lf8/i5;

    move-result-object p0

    invoke-static {p0, p2}, Lf8/b5;->e(Lf8/i5;Lad/a2;)V

    return-void
.end method

.method public final b(Lf8/v2;Ljava/lang/Object;Lad/a2;)V
    .locals 6

    iget-object v0, p1, Lf8/v2;->m:Lf8/q0;

    iget-object v1, p1, Lf8/v2;->n:Ljava/lang/String;

    invoke-virtual {v0}, Lf8/q0;->C()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "["

    invoke-virtual {p3, v2}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lf8/v2;->s:Lf8/m2;

    iget-object v2, v2, Lf8/m2;->l:Lf8/t;

    invoke-virtual {v2}, Lf8/t;->w()Lf8/f1;

    move-result-object v2

    iget-boolean v2, v2, Lf8/f1;->p:Z

    if-eqz v2, :cond_5

    iget-object v2, p1, Lf8/v2;->r:Lf8/u2;

    sget-object v3, Lf8/u2;->o:Lf8/u2;

    if-ne v2, v3, :cond_5

    iget v2, v0, Lf8/q0;->q:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    sget-object v2, Lf8/o0;->m:Lf8/o0;

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    sget-object v2, Lf8/o0;->o:Lf8/o0;

    goto :goto_0

    :cond_1
    sget-object v2, Lf8/o0;->n:Lf8/o0;

    goto :goto_0

    :cond_2
    sget-object v2, Lf8/o0;->m:Lf8/o0;

    :goto_0
    if-nez v2, :cond_3

    sget-object v2, Lf8/o0;->m:Lf8/o0;

    :cond_3
    sget-object v3, Lf8/o0;->m:Lf8/o0;

    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Lf8/q0;->C()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lf8/v2;->p:Lf8/m2;

    invoke-virtual {p1}, Lf8/v2;->j()Lf8/m2;

    move-result-object v2

    if-ne v0, v2, :cond_5

    invoke-virtual {p1}, Lf8/v2;->j()Lf8/m2;

    move-result-object v0

    iget-object v0, v0, Lf8/m2;->m:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This field is not an extension. ("

    const-string p2, ")"

    invoke-static {p1, v1, p2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p3, v1}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    :goto_1
    const-string v0, "]"

    invoke-virtual {p3, v0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v1, p1, Lf8/v2;->r:Lf8/u2;

    sget-object v2, Lf8/u2;->n:Lf8/u2;

    if-ne v1, v2, :cond_7

    invoke-virtual {p1}, Lf8/v2;->j()Lf8/m2;

    move-result-object v0

    iget-object v0, v0, Lf8/m2;->l:Lf8/t;

    invoke-virtual {v0}, Lf8/t;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lf8/q0;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p1, Lf8/v2;->r:Lf8/u2;

    iget-object v0, v0, Lf8/u2;->l:Lf8/t2;

    sget-object v1, Lf8/t2;->u:Lf8/t2;

    if-ne v0, v1, :cond_8

    const-string v0, " {"

    invoke-virtual {p3, v0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lad/a2;->h()V

    iget-object v0, p3, Lad/a2;->o:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const-string v0, ": "

    invoke-virtual {p3, v0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p1, Lf8/v2;->r:Lf8/u2;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v2, "\""

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    check-cast p2, Lf8/s2;

    iget-object p0, p2, Lf8/s2;->l:Lf8/f0;

    invoke-virtual {p0}, Lf8/f0;->v()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :pswitch_1
    invoke-virtual {p3, v2}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    instance-of p0, p2, Lf8/j;

    if-eqz p0, :cond_9

    check-cast p2, Lf8/j;

    sget-object p0, Lf8/c5;->a:Ljava/util/logging/Logger;

    invoke-static {p2}, Lf8/v4;->j(Lf8/j;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    check-cast p2, [B

    sget-object p0, Lf8/c5;->a:Ljava/util/logging/Logger;

    new-instance p0, Lb0/l1;

    const/16 v0, 0xb

    invoke-direct {p0, v0, p2}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    invoke-static {p0}, Lf8/v4;->i(Lb0/l1;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {p3, v2}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :pswitch_2
    check-cast p2, Lf8/c;

    invoke-virtual {p0, p2, p3}, Lf8/b5;->a(Lf8/q4;Lad/a2;)V

    goto/16 :goto_7

    :pswitch_3
    invoke-virtual {p3, v2}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    check-cast p2, Ljava/lang/String;

    new-instance p0, Lf8/j;

    sget-object v0, Lf8/f4;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lf8/j;-><init>([B)V

    invoke-static {p0}, Lf8/v4;->j(Lf8/j;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v2}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p2, Lf8/c5;->a:Ljava/util/logging/Logger;

    if-ltz p0, :cond_a

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_a
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p3, p0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    goto :goto_7

    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    goto :goto_7

    :pswitch_7
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object p0, Lf8/c5;->a:Ljava/util/logging/Logger;

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-ltz p0, :cond_b

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_b
    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 p2, 0x3f

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_6
    invoke-virtual {p3, p0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    goto :goto_7

    :pswitch_8
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    goto :goto_7

    :pswitch_9
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    goto :goto_7

    :pswitch_a
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object p0, p1, Lf8/v2;->r:Lf8/u2;

    iget-object p0, p0, Lf8/u2;->l:Lf8/t2;

    if-ne p0, v1, :cond_c

    invoke-virtual {p3}, Lad/a2;->k()V

    const-string p0, "}"

    invoke-virtual {p3, p0}, Lad/a2;->m(Ljava/lang/CharSequence;)V

    :cond_c
    invoke-virtual {p3}, Lad/a2;->h()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public final c(Lf8/q4;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf8/c5;->a:Ljava/util/logging/Logger;

    new-instance v1, Lad/a2;

    invoke-direct {v1, v0}, Lad/a2;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, v1}, Lf8/b5;->a(Lf8/q4;Lad/a2;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
