.class public abstract Lmb/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Y:Ljava/util/logging/Logger;


# instance fields
.field public A:Lmb/v;

.field public B:Lmb/v;

.field public C:Lmb/v;

.field public D:Lmb/v;

.field public E:Lmb/v;

.field public F:Lmb/v;

.field public G:Lmb/v;

.field public H:Lmb/v;

.field public I:Lmb/v;

.field public J:Lmb/v;

.field public K:Lmb/v;

.field public L:Lmb/v;

.field public M:Lmb/v;

.field public N:Lmb/v;

.field public O:Lmb/v;

.field public P:Lmb/v;

.field public Q:Lmb/v;

.field public R:Lmb/v;

.field public S:Lmb/v;

.field public T:Lmb/v;

.field public U:Lmb/f6;

.field public final V:Ljava/util/HashMap;

.field public final W:Ljava/util/HashMap;

.field public final X:Ljava/util/HashSet;

.field public a:Lmb/x;

.field public b:Lmb/x;

.field public c:Lmb/x;

.field public d:Lmb/x;

.field public e:Lmb/x;

.field public f:Lmb/x;

.field public g:Lmb/x;

.field public h:Lmb/x;

.field public i:Lmb/x;

.field public j:Lmb/x;

.field public k:Lmb/x;

.field public l:Lmb/x;

.field public m:Lmb/x;

.field public n:Lmb/x;

.field public o:Lmb/x;

.field public p:Lmb/x;

.field public q:Lmb/x;

.field public r:Lmb/x;

.field public s:Lmb/x;

.field public t:Lmb/x;

.field public u:Lmb/x;

.field public v:Lmb/x;

.field public w:Lmb/x;

.field public x:Lmb/v;

.field public y:Lmb/v;

.field public z:Lmb/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmb/a0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lmb/a0;->Y:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmb/a0;->V:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmb/a0;->W:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmb/a0;->X:Ljava/util/HashSet;

    return-void
.end method

.method public static varargs e(Lmb/x;[Lmb/x;)Lmb/f6;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lmb/x;->a:[Lmb/f6;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmb/x;->h()[Lmb/f6;

    move-result-object v0

    iput-object v0, p0, Lmb/x;->a:[Lmb/f6;

    :goto_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lmb/t;->e()[Lmb/x;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Lhb/a; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Required constructor not found in \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :goto_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static varargs f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmb/x;->a(Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object p2
    :try_end_0
    .catch Lhb/a; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Required method \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" not found in \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lmb/i6;
.end method

.method public final declared-synchronized b(Lmb/x;)Lmb/x;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmb/a0;->V:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lmb/a0;->V:Ljava/util/HashMap;

    new-instance v1, Lmb/z;

    invoke-direct {v1, p0, p1}, Lmb/z;-><init>(Lmb/a0;Lmb/x;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final c(Lmb/x;I)Lmb/x;
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, p1}, Lmb/a0;->b(Lmb/x;)Lmb/x;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final d(Ljava/lang/String;)Lmb/x;
    .locals 8

    const-string v0, "\"findIClass(\""

    const-string v1, "\"findIClass(\""

    sget-object v2, Lmb/a0;->Y:Ljava/util/logging/Logger;

    const-string v3, "loadIClass"

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, p1}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lmb/o;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_9

    const-string v3, "VBCDFIJSZ"

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_9

    const-string p0, "V"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lmb/x;->v:Lmb/w;

    return-object p0

    :cond_0
    const-string p0, "B"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lmb/x;->w:Lmb/w;

    return-object p0

    :cond_1
    const-string p0, "C"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lmb/x;->x:Lmb/w;

    return-object p0

    :cond_2
    const-string p0, "D"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lmb/x;->y:Lmb/w;

    return-object p0

    :cond_3
    const-string p0, "F"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lmb/x;->z:Lmb/w;

    return-object p0

    :cond_4
    const-string p0, "I"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lmb/x;->A:Lmb/w;

    return-object p0

    :cond_5
    const-string p0, "J"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lmb/x;->B:Lmb/w;

    return-object p0

    :cond_6
    const-string p0, "S"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lmb/x;->C:Lmb/w;

    return-object p0

    :cond_7
    const-string p0, "Z"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lmb/x;->D:Lmb/w;

    return-object p0

    :cond_8
    return-object v4

    :cond_9
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lmb/a0;->X:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_a
    iget-object v3, p0, Lmb/a0;->W:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmb/x;

    if-eqz v3, :cond_b

    monitor-exit p0

    return-object v3

    :cond_b
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x5b

    if-ne v3, v7, :cond_c

    move v3, v6

    goto :goto_0

    :cond_c
    move v3, v5

    :goto_0
    if-eqz v3, :cond_f

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_e

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmb/a0;->d(Ljava/lang/String;)Lmb/x;

    move-result-object v0

    if-nez v0, :cond_d

    monitor-exit p0

    return-object v4

    :cond_d
    invoke-virtual {p0, v0}, Lmb/a0;->b(Lmb/x;)Lmb/x;

    move-result-object v0

    iget-object v1, p0, Lmb/a0;->W:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    :cond_e
    new-instance v0, Lhb/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot determine component descriptor from non-array descriptor \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "About to call \"findIClass({0})\""

    invoke-virtual {v2, v3, v5, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lmb/a0;->a(Ljava/lang/String;)Lmb/i6;

    move-result-object v3

    if-nez v3, :cond_11

    iget-object v0, p0, Lmb/a0;->W:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lmb/a0;->X:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-object v4

    :cond_10
    new-instance v0, Lhb/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\")\" called \"defineIClass()\", but returned null!?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v1, p0, Lmb/a0;->W:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, "loadIClass"

    invoke-virtual {v2, v4, p0, v3}, Ljava/util/logging/Logger;->exiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    :cond_12
    new-instance p0, Lhb/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\"findIClass()\" returned \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" instead of \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :try_start_1
    new-instance v1, Lhb/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\")\" did not call \"defineIClass()\"!?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final g(Ljava/lang/String;)Lmb/x;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lmb/a0;->d(Ljava/lang/String;)Lmb/x;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Required type \""

    const-string v1, "\" not found"

    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
