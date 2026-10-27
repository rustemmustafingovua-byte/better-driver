.class public final Lz7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw7/v;


# instance fields
.field public final synthetic l:I

.field public final m:Lad/a2;


# direct methods
.method public synthetic constructor <init>(Lad/a2;I)V
    .locals 0

    iput p2, p0, Lz7/b;->l:I

    iput-object p1, p0, Lz7/b;->m:Lad/a2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lad/a2;Lw7/l;Ld8/a;Lx7/a;)Lw7/u;
    .locals 2

    invoke-interface {p3}, Lx7/a;->value()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ld8/a;

    invoke-direct {v1, v0}, Ld8/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v1}, Lad/a2;->i(Ld8/a;)Ly7/o;

    move-result-object p0

    invoke-interface {p0}, Ly7/o;->f()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p3}, Lx7/a;->nullSafe()Z

    move-result p3

    instance-of v0, p0, Lw7/u;

    if-eqz v0, :cond_0

    check-cast p0, Lw7/u;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lw7/v;

    if-eqz v0, :cond_2

    check-cast p0, Lw7/v;

    invoke-interface {p0, p1, p2}, Lw7/v;->create(Lw7/l;Ld8/a;)Lw7/u;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lw7/u;->nullSafe()Lw7/u;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid attempt to bind an instance of "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as a @JsonAdapter for "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Ld8/a;->b:Ljava/lang/reflect/Type;

    invoke-static {p0}, Ly7/d;->k(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final create(Lw7/l;Ld8/a;)Lw7/u;
    .locals 12

    iget v3, p0, Lz7/b;->l:I

    const-class v4, Ljava/lang/Object;

    iget-object v5, p0, Lz7/b;->m:Lad/a2;

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_0

    iget-object v3, p2, Ld8/a;->b:Ljava/lang/reflect/Type;

    iget-object v8, p2, Ld8/a;->a:Ljava/lang/Class;

    const-class v9, Ljava/util/Map;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_0

    goto/16 :goto_3

    :cond_0
    const-class v6, Ljava/util/Properties;

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v3, v6, :cond_1

    new-array v3, v10, [Ljava/lang/reflect/Type;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    aput-object v4, v3, v11

    goto :goto_0

    :cond_1
    instance-of v6, v3, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_2

    check-cast v3, Ljava/lang/reflect/WildcardType;

    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v7

    :cond_2
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    invoke-static {v6}, Ly7/d;->b(Z)V

    invoke-static {v3, v8, v9}, Ly7/d;->f(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v6

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v8, v6, v9}, Ly7/d;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v6, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_3

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_0

    :cond_3
    new-array v3, v10, [Ljava/lang/reflect/Type;

    aput-object v4, v3, v7

    aput-object v4, v3, v11

    :goto_0
    aget-object v4, v3, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v4, v6, :cond_5

    const-class v6, Ljava/lang/Boolean;

    if-ne v4, v6, :cond_4

    goto :goto_1

    :cond_4
    new-instance v6, Ld8/a;

    invoke-direct {v6, v4}, Ld8/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v6}, Lw7/l;->c(Ld8/a;)Lw7/u;

    move-result-object v4

    goto :goto_2

    :cond_5
    :goto_1
    sget-object v4, Lz7/v;->c:Lw7/i;

    :goto_2
    aget-object v6, v3, v11

    new-instance v8, Ld8/a;

    invoke-direct {v8, v6}, Ld8/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v8}, Lw7/l;->c(Ld8/a;)Lw7/u;

    move-result-object v6

    move v8, v7

    invoke-virtual {v5, p2}, Lad/a2;->i(Ld8/a;)Ly7/o;

    move-result-object v7

    new-instance v0, Lz7/j;

    move-object v5, v3

    aget-object v3, v5, v8

    aget-object v5, v5, v11

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lz7/j;-><init>(Lz7/b;Lw7/l;Ljava/lang/reflect/Type;Lw7/u;Ljava/lang/reflect/Type;Lw7/u;Ly7/o;)V

    move-object v6, v0

    :goto_3
    return-object v6

    :pswitch_0
    iget-object v1, p2, Ld8/a;->a:Ljava/lang/Class;

    const-class v3, Lx7/a;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lx7/a;

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v5, p1, p2, v1}, Lz7/b;->a(Lad/a2;Lw7/l;Ld8/a;Lx7/a;)Lw7/u;

    move-result-object v6

    :goto_4
    return-object v6

    :pswitch_1
    move v8, v7

    iget-object v1, p2, Ld8/a;->b:Ljava/lang/reflect/Type;

    iget-object v3, p2, Ld8/a;->a:Ljava/lang/Class;

    const-class v7, Ljava/util/Collection;

    invoke-virtual {v7, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_5

    :cond_7
    instance-of v6, v1, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_8

    check-cast v1, Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v8

    :cond_8
    invoke-virtual {v7, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    invoke-static {v6}, Ly7/d;->b(Z)V

    invoke-static {v1, v3, v7}, Ly7/d;->f(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v3, v6, v7}, Ly7/d;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_9

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v4, v1, v8

    :cond_9
    new-instance v1, Ld8/a;

    invoke-direct {v1, v4}, Ld8/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v1}, Lw7/l;->c(Ld8/a;)Lw7/u;

    move-result-object v1

    invoke-virtual {v5, p2}, Lad/a2;->i(Ld8/a;)Ly7/o;

    move-result-object v0

    new-instance v6, Lz7/a;

    invoke-direct {v6, p1, v4, v1, v0}, Lz7/a;-><init>(Lw7/l;Ljava/lang/reflect/Type;Lw7/u;Ly7/o;)V

    :goto_5
    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
