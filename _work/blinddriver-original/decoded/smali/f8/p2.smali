.class public final Lf8/p2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb6/l;Ls5/q;Lr5/d1;Lb6/u;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf8/p2;->b:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lf8/p2;->c:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lf8/p2;->d:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lf8/p2;->e:Ljava/lang/Object;

    .line 6
    iput-boolean p5, p0, Lf8/p2;->a:Z

    return-void
.end method

.method public constructor <init>([Lf8/w2;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf8/p2;->c:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf8/p2;->d:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf8/p2;->e:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lf8/p2;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lf8/p2;->a:Z

    const/4 v0, 0x0

    .line 13
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 14
    iget-object v1, p0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lf8/p2;->e(Lf8/w2;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/w2;

    .line 17
    :try_start_0
    iget-object v1, v0, Lf8/w2;->l:Lf8/y0;

    .line 18
    invoke-virtual {v1}, Lf8/y0;->x()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p0, v0, v1}, Lf8/p2;->a(Lf8/w2;Ljava/lang/String;)V
    :try_end_0
    .catch Lf8/q2; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    return-void
.end method

.method public static c(Lb6/l;Lb6/i0;Lr5/d1;Z)Lf8/p2;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lb6/i0;->l:Ljava/lang/String;

    :goto_0
    if-nez p1, :cond_1

    :goto_1
    move-object v3, v0

    goto :goto_2

    :cond_1
    new-instance v0, Lw5/k;

    invoke-direct {v0, p1}, Lw5/k;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    new-instance v1, Lf8/p2;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lf8/p2;-><init>(Lb6/l;Ls5/q;Lr5/d1;Lb6/u;Z)V

    return-object v1
.end method


# virtual methods
.method public a(Lf8/w2;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lf8/p2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object p0, p2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lf8/p2;->a(Lf8/w2;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v1, Lf8/o2;

    invoke-direct {v1, p0, p2, p1}, Lf8/o2;-><init>(Ljava/lang/String;Ljava/lang/String;Lf8/w2;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/x2;

    if-eqz v1, :cond_2

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p2, v1, Lf8/o2;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Lf8/q2;

    const-string v0, "\""

    const-string v2, "\" is already defined (as something other than a package) in file \""

    invoke-static {v0, p0, v2}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lf8/x2;->b()Lf8/w2;

    move-result-object v0

    iget-object v0, v0, Lf8/w2;->l:Lf8/y0;

    invoke-virtual {v0}, Lf8/y0;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lf8/q2;-><init>(Lf8/w2;Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Lf8/x2;)V
    .locals 6

    iget-object p0, p0, Lf8/p2;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lf8/x2;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "\""

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x61

    if-gt v5, v3, :cond_0

    const/16 v5, 0x7a

    if-le v3, v5, :cond_3

    :cond_0
    const/16 v5, 0x41

    if-gt v5, v3, :cond_1

    const/16 v5, 0x5a

    if-le v3, v5, :cond_3

    :cond_1
    const/16 v5, 0x5f

    if-eq v3, v5, :cond_3

    const/16 v5, 0x30

    if-gt v5, v3, :cond_2

    const/16 v5, 0x39

    if-gt v3, v5, :cond_2

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lf8/q2;

    const-string v1, "\" is not a valid identifier."

    invoke-static {v4, v0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lf8/x2;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/x2;

    if-eqz v2, :cond_7

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lf8/x2;->b()Lf8/w2;

    move-result-object p0

    invoke-virtual {v2}, Lf8/x2;->b()Lf8/w2;

    move-result-object v3

    const-string v5, "\"."

    if-ne p0, v3, :cond_6

    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_5

    new-instance p0, Lf8/q2;

    const-string v1, "\" is already defined."

    invoke-static {v4, v0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance v2, Lf8/q2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, p0, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" is already defined in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p1, p0}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw v2

    :cond_6
    new-instance p0, Lf8/q2;

    const-string v1, "\" is already defined in file \""

    invoke-static {v4, v0, v1}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lf8/x2;->b()Lf8/w2;

    move-result-object v1

    iget-object v1, v1, Lf8/w2;->l:Lf8/y0;

    invoke-virtual {v1}, Lf8/y0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw p0

    :cond_7
    return-void

    :cond_8
    new-instance p0, Lf8/q2;

    const-string v0, "Missing name."

    invoke-direct {p0, p1, v0}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw p0
.end method

.method public d(ILjava/lang/String;)Lf8/x2;
    .locals 5

    iget-object v0, p0, Lf8/p2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/x2;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v0, :cond_3

    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_1

    instance-of v4, v0, Lf8/m2;

    if-nez v4, :cond_0

    instance-of v4, v0, Lf8/r2;

    if-eqz v4, :cond_1

    :cond_0
    return-object v0

    :cond_1
    if-ne p1, v1, :cond_3

    instance-of v4, v0, Lf8/m2;

    if-nez v4, :cond_2

    instance-of v4, v0, Lf8/r2;

    if-nez v4, :cond_2

    instance-of v4, v0, Lf8/o2;

    if-nez v4, :cond_2

    instance-of v4, v0, Lf8/a3;

    if-eqz v4, :cond_3

    :cond_2
    return-object v0

    :cond_3
    iget-object p0, p0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/w2;

    iget-object v0, v0, Lf8/w2;->r:Lf8/p2;

    iget-object v0, v0, Lf8/p2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/x2;

    if-eqz v0, :cond_4

    if-eq p1, v3, :cond_7

    if-ne p1, v2, :cond_6

    instance-of v4, v0, Lf8/m2;

    if-nez v4, :cond_5

    instance-of v4, v0, Lf8/r2;

    if-eqz v4, :cond_6

    :cond_5
    return-object v0

    :cond_6
    if-ne p1, v1, :cond_4

    instance-of v4, v0, Lf8/m2;

    if-nez v4, :cond_7

    instance-of v4, v0, Lf8/r2;

    if-nez v4, :cond_7

    instance-of v4, v0, Lf8/o2;

    if-nez v4, :cond_7

    instance-of v4, v0, Lf8/a3;

    if-eqz v4, :cond_4

    :cond_7
    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public e(Lf8/w2;)V
    .locals 2

    iget-object p1, p1, Lf8/w2;->q:[Lf8/w2;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/w2;

    iget-object v1, p0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lf8/p2;->e(Lf8/w2;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Lf8/x2;Ljava/lang/String;)Lf8/x2;
    .locals 10

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lf8/p2;->d(ILjava/lang/String;)Lf8/x2;

    move-result-object v1

    goto :goto_3

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    move-object v4, p2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lf8/x2;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v3, :cond_2

    invoke-virtual {p0, v2, p2}, Lf8/p2;->d(ILjava/lang/String;)Lf8/x2;

    move-result-object v1

    move-object v0, p2

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {p0, v9, v8}, Lf8/p2;->d(ILjava/lang/String;)Lf8/x2;

    move-result-object v8

    if-eqz v8, :cond_6

    if-eq v1, v3, :cond_3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lf8/p2;->d(ILjava/lang/String;)Lf8/x2;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_3
    move-object v1, v8

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-nez v1, :cond_5

    iget-boolean v1, p0, Lf8/p2;->a:Z

    if-eqz v1, :cond_4

    sget-object p1, Lf8/b3;->a:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The descriptor for message type \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" can not be found and a placeholder is created for it"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p1, Lf8/m2;

    invoke-direct {p1, v0}, Lf8/m2;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    iget-object p2, p1, Lf8/m2;->n:Lf8/w2;

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_4
    new-instance p0, Lf8/q2;

    const-string v0, "\""

    const-string v1, "\" is not defined."

    invoke-static {v0, p2, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object v1

    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1
.end method

.method public g(Lg5/s;Lf2/y;Z)I
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lf8/p2;->c:Ljava/lang/Object;

    check-cast v0, Ly1/d;

    iget-object v2, v1, Lf8/p2;->e:Ljava/lang/Object;

    check-cast v2, Le2/q;

    iget-boolean v3, v1, Lf8/p2;->a:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, v1, Lf8/p2;->a:Z

    iget-object v5, v1, Lf8/p2;->d:Ljava/lang/Object;

    check-cast v5, Lq3/k;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual {v5, v6, v7}, Lq3/k;->r(Lg5/s;Lf2/y;)Lad/a2;

    move-result-object v5

    iget-object v6, v5, Lad/a2;->n:Ljava/lang/Object;

    check-cast v6, Lk/q;

    invoke-virtual {v6}, Lk/q;->size()I

    move-result v7

    move v8, v4

    :goto_0
    if-ge v8, v7, :cond_3

    invoke-virtual {v6, v8}, Lk/q;->o(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ly1/u;

    iget-boolean v10, v9, Ly1/u;->d:Z

    if-nez v10, :cond_2

    iget-boolean v9, v9, Ly1/u;->h:Z

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_2
    :goto_1
    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v3

    :goto_2
    invoke-virtual {v6}, Lk/q;->size()I

    move-result v8

    move v9, v4

    :goto_3
    if-ge v9, v8, :cond_6

    invoke-virtual {v6, v9}, Lk/q;->o(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ly1/u;

    if-nez v7, :cond_4

    invoke-static {v10}, Ly1/t;->b(Ly1/u;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    iget-object v11, v1, Lf8/p2;->b:Ljava/lang/Object;

    move-object v12, v11

    check-cast v12, Le2/g0;

    iget-wide v13, v10, Ly1/u;->c:J

    iget-object v11, v1, Lf8/p2;->e:Ljava/lang/Object;

    move-object v15, v11

    check-cast v15, Le2/q;

    iget v11, v10, Ly1/u;->i:I

    const/16 v17, 0x1

    move/from16 v16, v11

    invoke-virtual/range {v12 .. v17}, Le2/g0;->A(JLe2/q;IZ)V

    iget-object v11, v2, Le2/q;->l:Lk/h0;

    invoke-virtual {v11}, Lk/h0;->h()Z

    move-result v11

    if-nez v11, :cond_5

    iget-wide v11, v10, Ly1/u;->a:J

    invoke-static {v10}, Ly1/t;->b(Ly1/u;)Z

    move-result v10

    invoke-virtual {v0, v11, v12, v2, v10}, Ly1/d;->a(JLjava/util/List;Z)V

    invoke-virtual {v2}, Le2/q;->clear()V

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    move/from16 v2, p3

    invoke-virtual {v0, v5, v2}, Ly1/d;->b(Lad/a2;Z)Z

    move-result v0

    iget-boolean v2, v5, Lad/a2;->m:Z

    if-eqz v2, :cond_8

    :cond_7
    move v2, v4

    goto :goto_5

    :cond_8
    invoke-virtual {v6}, Lk/q;->size()I

    move-result v2

    move v5, v4

    :goto_4
    if-ge v5, v2, :cond_7

    invoke-virtual {v6, v5}, Lk/q;->o(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly1/u;

    invoke-static {v7, v3}, Ly1/t;->h(Ly1/u;Z)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Ll1/b;->b(JJ)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v7}, Ly1/u;->b()Z

    move-result v7

    if-eqz v7, :cond_9

    move v2, v3

    goto :goto_5

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :goto_5
    invoke-virtual {v6}, Lk/q;->size()I

    move-result v5

    move v7, v4

    :goto_6
    if-ge v7, v5, :cond_b

    invoke-virtual {v6, v7}, Lk/q;->o(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ly1/u;

    invoke-virtual {v8}, Ly1/u;->b()Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_a

    move v5, v3

    goto :goto_7

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    move v5, v4

    :goto_7
    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    shl-int/lit8 v2, v5, 0x2

    or-int/2addr v0, v2

    iput-boolean v4, v1, Lf8/p2;->a:Z

    return v0

    :goto_8
    iput-boolean v4, v1, Lf8/p2;->a:Z

    throw v0
.end method

.method public h(II)V
    .locals 3

    int-to-float v0, p1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index should be non-negative ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt/b;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v0, Lr0/b1;

    invoke-virtual {v0, p1}, Lr0/b1;->h(I)V

    iget-object v0, p0, Lf8/p2;->e:Ljava/lang/Object;

    check-cast v0, Lx/z;

    iget v1, v0, Lx/z;->m:I

    if-eq p1, v1, :cond_1

    iput p1, v0, Lx/z;->m:I

    div-int/lit8 p1, p1, 0x1e

    mul-int/lit8 p1, p1, 0x1e

    add-int/lit8 v1, p1, -0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit16 p1, p1, 0x82

    invoke-static {v1, p1}, Lg6/c1;->G(II)Lo9/d;

    move-result-object p1

    iget-object v0, v0, Lx/z;->l:Lr0/e1;

    invoke-virtual {v0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lf8/p2;->c:Ljava/lang/Object;

    check-cast p0, Lr0/b1;

    invoke-virtual {p0, p2}, Lr0/b1;->h(I)V

    return-void
.end method
