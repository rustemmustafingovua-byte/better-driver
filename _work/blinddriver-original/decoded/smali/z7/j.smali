.class public final Lz7/j;
.super Lw7/u;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 11

    const/4 v0, 0x2

    iput v0, p0, Lz7/j;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz7/j;->b:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz7/j;->c:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz7/j;->d:Ljava/lang/Object;

    .line 5
    :try_start_0
    new-instance v0, Lz7/u;

    invoke-direct {v0, p1}, Lz7/u;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Field;

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    .line 8
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    .line 10
    const-class v7, Lx7/b;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lx7/b;

    if-eqz v3, :cond_0

    .line 11
    invoke-interface {v3}, Lx7/b;->value()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-interface {v3}, Lx7/b;->alternate()[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v3, v8

    .line 13
    iget-object v10, p0, Lz7/j;->b:Ljava/lang/Object;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 14
    :cond_0
    iget-object v3, p0, Lz7/j;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v3, p0, Lz7/j;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v3, p0, Lz7/j;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public constructor <init>(Lw7/l;Lw7/u;Ljava/lang/reflect/Type;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lz7/j;->a:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lz7/j;->b:Ljava/lang/Object;

    .line 20
    iput-object p2, p0, Lz7/j;->c:Ljava/lang/Object;

    .line 21
    iput-object p3, p0, Lz7/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lz7/b;Lw7/l;Ljava/lang/reflect/Type;Lw7/u;Ljava/lang/reflect/Type;Lw7/u;Ly7/o;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lz7/j;->a:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance p1, Lz7/j;

    invoke-direct {p1, p2, p4, p3}, Lz7/j;-><init>(Lw7/l;Lw7/u;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lz7/j;->b:Ljava/lang/Object;

    .line 24
    new-instance p1, Lz7/j;

    invoke-direct {p1, p2, p6, p5}, Lz7/j;-><init>(Lw7/l;Lw7/u;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lz7/j;->c:Ljava/lang/Object;

    .line 25
    iput-object p7, p0, Lz7/j;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final read(Le8/b;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lz7/j;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lz7/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    if-nez v0, :cond_1

    iget-object p0, p0, Lz7/j;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    return-object p0

    :pswitch_0
    iget-object p0, p0, Lz7/j;->c:Ljava/lang/Object;

    check-cast p0, Lw7/u;

    invoke-virtual {p0, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lz7/j;->c:Ljava/lang/Object;

    check-cast v0, Lz7/j;

    iget-object v0, v0, Lz7/j;->c:Ljava/lang/Object;

    check-cast v0, Lw7/u;

    iget-object v1, p0, Lz7/j;->b:Ljava/lang/Object;

    check-cast v1, Lz7/j;

    iget-object v1, v1, Lz7/j;->c:Ljava/lang/Object;

    check-cast v1, Lw7/u;

    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto/16 :goto_3

    :cond_2
    iget-object p0, p0, Lz7/j;->d:Ljava/lang/Object;

    check-cast p0, Ly7/o;

    invoke-interface {p0}, Ly7/o;->f()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const/4 v3, 0x1

    const-string v4, "duplicate key: "

    if-ne v2, v3, :cond_5

    invoke-virtual {p1}, Le8/b;->b()V

    :goto_1
    invoke-virtual {p1}, Le8/b;->y()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Le8/b;->b()V

    invoke-virtual {v1, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Le8/b;->k()V

    goto :goto_1

    :cond_3
    new-instance p0, Lw7/n;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p1}, Le8/b;->k()V

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Le8/b;->c()V

    :goto_2
    invoke-virtual {p1}, Le8/b;->y()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Le8/a;->a:Le8/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Le8/a;->a(Le8/b;)V

    invoke-virtual {v1, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Lw7/n;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {p1}, Le8/b;->m()V

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final write(Le8/c;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lz7/j;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p2, Ljava/lang/Enum;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lz7/j;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p0}, Le8/c;->R(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lz7/j;->c:Ljava/lang/Object;

    check-cast v0, Lw7/u;

    iget-object v1, p0, Lz7/j;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Type;

    if-eqz p2, :cond_2

    instance-of v2, v1, Ljava/lang/Class;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eq v2, v1, :cond_8

    iget-object p0, p0, Lz7/j;->b:Ljava/lang/Object;

    check-cast p0, Lw7/l;

    new-instance v1, Ld8/a;

    invoke-direct {v1, v2}, Ld8/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v1}, Lw7/l;->c(Ld8/a;)Lw7/u;

    move-result-object p0

    instance-of v1, p0, Lz7/n;

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    move-object v1, v0

    :goto_2
    instance-of v2, v1, Lw7/k;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Lw7/k;

    iget-object v2, v2, Lw7/k;->a:Lw7/u;

    if-eqz v2, :cond_5

    if-ne v2, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Adapter for type with cyclic dependency has been used before dependency has been resolved"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    instance-of v1, v1, Lz7/n;

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    move-object v0, p0

    :cond_8
    :goto_5
    invoke-virtual {v0, p1, p2}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p2, Ljava/util/Map;

    iget-object p0, p0, Lz7/j;->c:Ljava/lang/Object;

    check-cast p0, Lz7/j;

    if-nez p2, :cond_9

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_7

    :cond_9
    invoke-virtual {p1}, Le8/c;->d()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Le8/c;->n(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lz7/j;->write(Le8/c;Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    invoke-virtual {p1}, Le8/c;->m()V

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
