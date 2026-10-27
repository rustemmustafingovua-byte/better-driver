.class public abstract Lmb/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/b0;


# static fields
.field public static final A:Lmb/w;

.field public static final B:Lmb/w;

.field public static final C:Lmb/w;

.field public static final D:Lmb/w;

.field public static final E:[Lmb/v;

.field public static final F:Ljava/util/HashSet;

.field public static final G:[Lmb/x;

.field public static final H:[Lmb/r;

.field public static final s:Ljava/util/logging/Logger;

.field public static final t:Lmb/q;

.field public static final u:Lmb/w;

.field public static final v:Lmb/w;

.field public static final w:Lmb/w;

.field public static final x:Lmb/w;

.field public static final y:Lmb/w;

.field public static final z:Lmb/w;


# instance fields
.field public a:[Lmb/f6;

.field public b:[Lmb/v;

.field public c:Ljava/util/HashMap;

.field public d:[Lmb/v;

.field public e:Ljava/util/LinkedHashMap;

.field public f:[Lmb/x;

.field public g:Z

.field public h:Lmb/x;

.field public i:Z

.field public j:Lmb/x;

.field public k:Z

.field public l:Lmb/x;

.field public m:[Lmb/x;

.field public n:Ljava/lang/String;

.field public o:Z

.field public p:Lmb/x;

.field public final q:Ljava/util/HashMap;

.field public r:[Lmb/r;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const-class v0, Lmb/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lmb/x;->s:Ljava/util/logging/Logger;

    new-instance v0, Lmb/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmb/q;-><init>(I)V

    sput-object v0, Lmb/x;->t:Lmb/q;

    new-instance v0, Lmb/w;

    const-string v1, ""

    invoke-direct {v0, v1}, Lmb/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmb/x;->u:Lmb/w;

    new-instance v0, Lmb/w;

    const-string v1, "V"

    invoke-direct {v0, v1}, Lmb/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmb/x;->v:Lmb/w;

    new-instance v0, Lmb/w;

    const-string v1, "B"

    invoke-direct {v0, v1}, Lmb/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmb/x;->w:Lmb/w;

    new-instance v0, Lmb/w;

    const-string v1, "C"

    invoke-direct {v0, v1}, Lmb/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmb/x;->x:Lmb/w;

    new-instance v0, Lmb/w;

    const-string v1, "D"

    invoke-direct {v0, v1}, Lmb/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmb/x;->y:Lmb/w;

    new-instance v0, Lmb/w;

    const-string v1, "F"

    invoke-direct {v0, v1}, Lmb/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmb/x;->z:Lmb/w;

    new-instance v0, Lmb/w;

    const-string v1, "I"

    invoke-direct {v0, v1}, Lmb/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmb/x;->A:Lmb/w;

    new-instance v0, Lmb/w;

    const-string v1, "J"

    invoke-direct {v0, v1}, Lmb/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmb/x;->B:Lmb/w;

    new-instance v0, Lmb/w;

    const-string v1, "S"

    invoke-direct {v0, v1}, Lmb/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmb/x;->C:Lmb/w;

    new-instance v0, Lmb/w;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Lmb/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmb/x;->D:Lmb/w;

    const/4 v0, 0x0

    new-array v1, v0, [Lmb/v;

    sput-object v1, Lmb/x;->E:[Lmb/v;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lmb/x;->F:Ljava/util/HashSet;

    const-string v19, "JD"

    const-string v20, "FD"

    const-string v2, "BS"

    const-string v3, "BI"

    const-string v4, "SI"

    const-string v5, "CI"

    const-string v6, "BJ"

    const-string v7, "SJ"

    const-string v8, "CJ"

    const-string v9, "IJ"

    const-string v10, "BF"

    const-string v11, "SF"

    const-string v12, "CF"

    const-string v13, "IF"

    const-string v14, "JF"

    const-string v15, "BD"

    const-string v16, "SD"

    const-string v17, "CD"

    const-string v18, "ID"

    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    move-result-object v1

    move v2, v0

    :goto_0
    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    sget-object v4, Lmb/x;->F:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v0, [Lmb/x;

    sput-object v1, Lmb/x;->G:[Lmb/x;

    new-array v0, v0, [Lmb/r;

    sput-object v0, Lmb/x;->H:[Lmb/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmb/x;->q:Ljava/util/HashMap;

    return-void
.end method

.method public static q([Lmb/x;)[Ljava/lang/String;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final A(Lmb/x;)Z
    .locals 4

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lmb/x;->t()[Lmb/x;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    if-eq v3, p1, :cond_1

    invoke-virtual {v3, p1}, Lmb/x;->A(Lmb/x;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Lmb/x;->x()Lmb/x;

    move-result-object p0

    goto :goto_0

    :cond_3
    return v0
.end method

.method public abstract B()Z
.end method

.method public abstract C()Z
.end method

.method public final D(Lmb/x;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    sget-object v2, Lmb/x;->F:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lmb/x;->x()Lmb/x;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    if-ne v1, p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {v1}, Lmb/x;->x()Lmb/x;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p0}, Lmb/x;->A(Lmb/x;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v1, Lmb/x;->u:Lmb/w;

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Lmb/x;->H()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lmb/x;->G()Z

    move-result v1

    const-string v2, "Ljava/lang/Object;"

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lmb/x;->C()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ljava/lang/Cloneable;"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ljava/io/Serializable;"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lmb/x;->C()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lmb/x;->e()Lmb/x;

    move-result-object p0

    invoke-virtual {p1}, Lmb/x;->e()Lmb/x;

    move-result-object p1

    invoke-virtual {p0}, Lmb/x;->H()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0, p1}, Lmb/x;->D(Lmb/x;)Z

    move-result p0

    if-eqz p0, :cond_a

    :goto_1
    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public abstract E()Z
.end method

.method public abstract F()Z
.end method

.method public abstract G()Z
.end method

.method public abstract H()Z
.end method

.method public abstract I()Z
.end method

.method public final a(Ljava/lang/String;[Lmb/x;)Lmb/v;
    .locals 9

    invoke-virtual {p0, p1}, Lmb/x;->k(Ljava/lang/String;)[Lmb/v;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v6, v0, v4

    invoke-virtual {v6}, Lmb/t;->e()[Lmb/x;

    move-result-object v7

    invoke-static {v7, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lmb/v;->l()Lmb/x;

    move-result-object v7

    invoke-virtual {v6}, Lmb/v;->l()Lmb/x;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmb/x;->D(Lmb/x;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move-object v5, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    return-object v5

    :cond_3
    invoke-virtual {p0}, Lmb/x;->x()Lmb/x;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2}, Lmb/x;->a(Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lmb/x;->t()[Lmb/x;

    move-result-object p0

    array-length v0, p0

    :goto_1
    if-ge v3, v0, :cond_6

    aget-object v1, p0, v3

    invoke-virtual {v1, p1, p2}, Lmb/x;->a(Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object v1

    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-object v2
.end method

.method public final b(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lmb/x;->f:[Lmb/x;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmb/x;->g()[Lmb/x;

    move-result-object v0

    iput-object v0, p0, Lmb/x;->f:[Lmb/x;

    :goto_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmb/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmb/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lmb/x;->x()Lmb/x;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2}, Lmb/x;->b(Ljava/util/HashSet;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lmb/x;->t()[Lmb/x;

    move-result-object v0

    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2}, Lmb/x;->b(Ljava/util/HashSet;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lmb/x;->m()Lmb/x;

    move-result-object v0

    invoke-virtual {p0}, Lmb/x;->v()Lmb/x;

    move-result-object p0

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1, p2}, Lmb/x;->b(Ljava/util/HashSet;Ljava/lang/String;)V

    :cond_6
    if-eqz p0, :cond_7

    if-eq p0, v0, :cond_7

    invoke-virtual {p0, p1, p2}, Lmb/x;->b(Ljava/util/HashSet;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final c(Ljava/lang/String;)[Lmb/x;
    .locals 2

    iget-object v0, p0, Lmb/x;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmb/x;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v1, p1}, Lmb/x;->b(Ljava/util/HashSet;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lmb/x;->G:[Lmb/x;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result p0

    new-array p0, p0, [Lmb/x;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmb/x;

    :goto_0
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public abstract d()I
.end method

.method public final e()Lmb/x;
    .locals 2

    iget-boolean v0, p0, Lmb/x;->o:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmb/x;->p:Lmb/x;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lmb/x;->f()Lmb/x;

    move-result-object v0

    iput-object v0, p0, Lmb/x;->p:Lmb/x;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmb/x;->o:Z

    return-object v0
.end method

.method public abstract f()Lmb/x;
.end method

.method public abstract g()[Lmb/x;
.end method

.method public abstract h()[Lmb/f6;
.end method

.method public abstract i()[Lmb/s;
.end method

.method public final j()Ljava/util/Map;
    .locals 6

    iget-object v0, p0, Lmb/x;->e:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmb/x;->i()[Lmb/s;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lmb/x;->e:Ljava/util/LinkedHashMap;

    return-object v1
.end method

.method public final k(Ljava/lang/String;)[Lmb/v;
    .locals 8

    iget-object v0, p0, Lmb/x;->c:Ljava/util/HashMap;

    if-nez v0, :cond_6

    iget-object v0, p0, Lmb/x;->b:[Lmb/v;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmb/x;->l()[Lmb/v;

    move-result-object v0

    iput-object v0, p0, Lmb/x;->b:[Lmb/v;

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lmb/v;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    instance-of v7, v6, Lmb/v;

    if-eqz v7, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Lmb/v;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lmb/v;

    if-eqz v4, :cond_4

    check-cast v3, Lmb/v;

    filled-new-array {v3}, [Lmb/v;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lmb/v;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iput-object v1, p0, Lmb/x;->c:Ljava/util/HashMap;

    move-object v0, v1

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmb/v;

    if-nez p0, :cond_7

    sget-object p0, Lmb/x;->E:[Lmb/v;

    :cond_7
    return-object p0
.end method

.method public abstract l()[Lmb/v;
.end method

.method public final m()Lmb/x;
    .locals 1

    iget-boolean v0, p0, Lmb/x;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmb/x;->n()Lmb/x;

    move-result-object v0

    iput-object v0, p0, Lmb/x;->h:Lmb/x;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmb/x;->g:Z

    :cond_0
    iget-object p0, p0, Lmb/x;->h:Lmb/x;

    return-object p0
.end method

.method public abstract n()Lmb/x;
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmb/x;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmb/x;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmb/x;->n:Ljava/lang/String;

    return-object v0
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public r()[Lmb/r;
    .locals 0

    sget-object p0, Lmb/x;->H:[Lmb/r;

    return-object p0
.end method

.method public final s(Ljava/util/ArrayList;)V
    .locals 11

    iget-object v0, p0, Lmb/x;->b:[Lmb/v;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmb/x;->l()[Lmb/v;

    move-result-object v0

    iput-object v0, p0, Lmb/x;->b:[Lmb/v;

    :goto_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lmb/t;->c()Lmb/c6;

    move-result-object v5

    invoke-virtual {v4}, Lmb/v;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v2

    :cond_1
    if-ge v8, v7, :cond_2

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lmb/v;

    invoke-virtual {v9}, Lmb/v;->k()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lmb/t;->c()Lmb/c6;

    move-result-object v9

    invoke-virtual {v5, v9}, Lmb/c6;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lmb/x;->x()Lmb/x;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lmb/x;->s(Ljava/util/ArrayList;)V

    :cond_4
    invoke-virtual {p0}, Lmb/x;->t()[Lmb/x;

    move-result-object p0

    array-length v0, p0

    :goto_3
    if-ge v2, v0, :cond_5

    aget-object v1, p0, v2

    invoke-virtual {v1, p1}, Lmb/x;->s(Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final t()[Lmb/x;
    .locals 4

    iget-object v0, p0, Lmb/x;->m:[Lmb/x;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmb/x;->u()[Lmb/x;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lmb/x;->A(Lmb/x;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lhb/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interface circularity detected for \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmb/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object v0, p0, Lmb/x;->m:[Lmb/x;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmb/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "java.lang."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public abstract u()[Lmb/x;
.end method

.method public final v()Lmb/x;
    .locals 1

    iget-boolean v0, p0, Lmb/x;->i:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmb/x;->j:Lmb/x;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmb/x;->i:Z

    invoke-virtual {p0}, Lmb/x;->w()Lmb/x;

    move-result-object v0

    iput-object v0, p0, Lmb/x;->j:Lmb/x;

    return-object v0
.end method

.method public abstract w()Lmb/x;
.end method

.method public final x()Lmb/x;
    .locals 3

    iget-boolean v0, p0, Lmb/x;->k:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmb/x;->l:Lmb/x;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lmb/x;->y()Lmb/x;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmb/x;->x()Lmb/x;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    if-eq v1, p0, :cond_1

    invoke-virtual {v1}, Lmb/x;->x()Lmb/x;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v0, Lhb/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class circularity detected for \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmb/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmb/x;->k:Z

    iput-object v0, p0, Lmb/x;->l:Lmb/x;

    return-object v0
.end method

.method public abstract y()Lmb/x;
.end method

.method public z()[Lmb/s;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lmb/s;

    return-object p0
.end method
