.class public final Lz7/g;
.super Le8/b;
.source "SourceFile"


# static fields
.field public static final E:Lz7/f;

.field public static final F:Ljava/lang/Object;


# instance fields
.field public A:[Ljava/lang/Object;

.field public B:I

.field public C:[Ljava/lang/String;

.field public D:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz7/f;

    invoke-direct {v0}, Lz7/f;-><init>()V

    sput-object v0, Lz7/g;->E:Lz7/f;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz7/g;->F:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final K()Z
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lz7/g;->h0(I)V

    invoke-virtual {p0}, Lz7/g;->m0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    iget v1, p0, Lz7/g;->B:I

    if-lez v1, :cond_0

    iget-object p0, p0, Lz7/g;->D:[I

    add-int/lit8 v1, v1, -0x1

    aget v2, p0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p0, v1

    :cond_0
    return v0
.end method

.method public final P()D
    .locals 5

    invoke-virtual {p0}, Lz7/g;->Z()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz7/g;->j0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lz7/g;->l0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsDouble()D

    move-result-wide v0

    iget-boolean v2, p0, Le8/b;->m:Z

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Le8/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSON forbids NaN and infinities: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lz7/g;->m0()Ljava/lang/Object;

    iget v2, p0, Lz7/g;->B:I

    if-lez v2, :cond_4

    iget-object p0, p0, Lz7/g;->D:[I

    add-int/lit8 v2, v2, -0x1

    aget v3, p0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p0, v2

    :cond_4
    return-wide v0
.end method

.method public final R()I
    .locals 5

    invoke-virtual {p0}, Lz7/g;->Z()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz7/g;->j0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lz7/g;->l0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsInt()I

    move-result v0

    invoke-virtual {p0}, Lz7/g;->m0()Ljava/lang/Object;

    iget v1, p0, Lz7/g;->B:I

    if-lez v1, :cond_2

    iget-object p0, p0, Lz7/g;->D:[I

    add-int/lit8 v1, v1, -0x1

    aget v2, p0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p0, v1

    :cond_2
    return v0
.end method

.method public final S()J
    .locals 5

    invoke-virtual {p0}, Lz7/g;->Z()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz7/g;->j0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lz7/g;->l0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsLong()J

    move-result-wide v0

    invoke-virtual {p0}, Lz7/g;->m0()Ljava/lang/Object;

    iget v2, p0, Lz7/g;->B:I

    if-lez v2, :cond_2

    iget-object p0, p0, Lz7/g;->D:[I

    add-int/lit8 v2, v2, -0x1

    aget v3, p0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p0, v2

    :cond_2
    return-wide v0
.end method

.method public final T()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz7/g;->k0(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final V()V
    .locals 2

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lz7/g;->h0(I)V

    invoke-virtual {p0}, Lz7/g;->m0()Ljava/lang/Object;

    iget v0, p0, Lz7/g;->B:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lz7/g;->D:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    :cond_0
    return-void
.end method

.method public final X()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lz7/g;->Z()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz7/g;->j0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lz7/g;->m0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lz7/g;->B:I

    if-lez v1, :cond_2

    iget-object p0, p0, Lz7/g;->D:[I

    add-int/lit8 v1, v1, -0x1

    aget v2, p0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p0, v1

    :cond_2
    return-object v0
.end method

.method public final Z()I
    .locals 4

    iget v0, p0, Lz7/g;->B:I

    if-nez v0, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    invoke-virtual {p0}, Lz7/g;->l0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lz7/g;->A:[Ljava/lang/Object;

    iget v2, p0, Lz7/g;->B:I

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    instance-of v1, v1, Lcom/google/gson/JsonObject;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz7/g;->n0(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lz7/g;->Z()I

    move-result p0

    return p0

    :cond_2
    if-eqz v1, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    return v3

    :cond_4
    instance-of p0, v0, Lcom/google/gson/JsonObject;

    if-eqz p0, :cond_5

    const/4 p0, 0x3

    return p0

    :cond_5
    instance-of p0, v0, Lcom/google/gson/JsonArray;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    instance-of p0, v0, Lcom/google/gson/JsonPrimitive;

    if-eqz p0, :cond_a

    check-cast v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x6

    return p0

    :cond_7
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x8

    return p0

    :cond_8
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x7

    return p0

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_a
    instance-of p0, v0, Lw7/o;

    if-eqz p0, :cond_b

    const/16 p0, 0x9

    return p0

    :cond_b
    sget-object p0, Lz7/g;->F:Ljava/lang/Object;

    if-ne v0, p0, :cond_c

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JsonReader is closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Le8/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Custom JsonElement subclass "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lz7/g;->h0(I)V

    invoke-virtual {p0}, Lz7/g;->l0()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonArray;

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0, v1}, Lz7/g;->n0(Ljava/lang/Object;)V

    iget-object v1, p0, Lz7/g;->D:[I

    iget p0, p0, Lz7/g;->B:I

    sub-int/2addr p0, v0

    const/4 v0, 0x0

    aput v0, v1, p0

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lz7/g;->h0(I)V

    invoke-virtual {p0}, Lz7/g;->l0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz7/g;->n0(Ljava/lang/Object;)V

    return-void
.end method

.method public final close()V
    .locals 1

    sget-object v0, Lz7/g;->F:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lz7/g;->A:[Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lz7/g;->B:I

    return-void
.end method

.method public final f0()V
    .locals 3

    invoke-virtual {p0}, Lz7/g;->Z()I

    move-result v0

    invoke-static {v0}, Landroidx/fragment/app/t1;->d(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lz7/g;->m0()Ljava/lang/Object;

    iget v0, p0, Lz7/g;->B:I

    if-lez v0, :cond_2

    iget-object p0, p0, Lz7/g;->D:[I

    sub-int/2addr v0, v1

    aget v2, p0, v0

    add-int/2addr v2, v1

    aput v2, p0, v0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lz7/g;->k0(Z)Ljava/lang/String;

    return-void

    :cond_1
    invoke-virtual {p0}, Lz7/g;->m()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lz7/g;->k()V

    return-void
.end method

.method public final h0(I)V
    .locals 3

    invoke-virtual {p0}, Lz7/g;->Z()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La6/q;->y(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz7/g;->Z()I

    move-result p1

    invoke-static {p1}, La6/q;->y(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz7/g;->j0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i0(Z)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lz7/g;->B:I

    if-ge v1, v2, :cond_4

    iget-object v3, p0, Lz7/g;->A:[Ljava/lang/Object;

    aget-object v4, v3, v1

    instance-of v5, v4, Lcom/google/gson/JsonArray;

    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_3

    aget-object v3, v3, v1

    instance-of v3, v3, Ljava/util/Iterator;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lz7/g;->D:[I

    aget v3, v3, v1

    if-eqz p1, :cond_1

    if-lez v3, :cond_1

    add-int/lit8 v4, v2, -0x1

    if-eq v1, v4, :cond_0

    add-int/lit8 v2, v2, -0x2

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    :cond_1
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    instance-of v4, v4, Lcom/google/gson/JsonObject;

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_3

    aget-object v2, v3, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_3

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz7/g;->C:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final j0()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lz7/g;->i0(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final k()V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lz7/g;->h0(I)V

    invoke-virtual {p0}, Lz7/g;->m0()Ljava/lang/Object;

    invoke-virtual {p0}, Lz7/g;->m0()Ljava/lang/Object;

    iget v0, p0, Lz7/g;->B:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lz7/g;->D:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    :cond_0
    return-void
.end method

.method public final k0(Z)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lz7/g;->h0(I)V

    invoke-virtual {p0}, Lz7/g;->l0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lz7/g;->C:[Ljava/lang/String;

    iget v3, p0, Lz7/g;->B:I

    add-int/lit8 v3, v3, -0x1

    if-eqz p1, :cond_0

    const-string p1, "<skipped>"

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    aput-object p1, v2, v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz7/g;->n0(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final l0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz7/g;->A:[Ljava/lang/Object;

    iget p0, p0, Lz7/g;->B:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final m()V
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lz7/g;->h0(I)V

    iget-object v0, p0, Lz7/g;->C:[Ljava/lang/String;

    iget v1, p0, Lz7/g;->B:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lz7/g;->m0()Ljava/lang/Object;

    invoke-virtual {p0}, Lz7/g;->m0()Ljava/lang/Object;

    iget v0, p0, Lz7/g;->B:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lz7/g;->D:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    :cond_0
    return-void
.end method

.method public final m0()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lz7/g;->A:[Ljava/lang/Object;

    iget v1, p0, Lz7/g;->B:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lz7/g;->B:I

    aget-object p0, v0, v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-object p0
.end method

.method public final n0(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lz7/g;->B:I

    iget-object v1, p0, Lz7/g;->A:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lz7/g;->A:[Ljava/lang/Object;

    iget-object v1, p0, Lz7/g;->D:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lz7/g;->D:[I

    iget-object v1, p0, Lz7/g;->C:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lz7/g;->C:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lz7/g;->A:[Ljava/lang/Object;

    iget v1, p0, Lz7/g;->B:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz7/g;->B:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz7/g;->i0(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lz7/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz7/g;->j0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lz7/g;->i0(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final y()Z
    .locals 1

    invoke-virtual {p0}, Lz7/g;->Z()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
